<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Goutte;
use  App\Models\companies;

class update implements ShouldQueue 
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    
    public  function  handle()
    {
            foreach (companies::where('email','=','')->orWhere('email',null)->get() as $company){
                $url = 'https://maroof.sa/'.$company->id;
                $crawler = Goutte::request('GET', $url);
                $data = [];
                $crawler->filter('.social-row .media-body')->each(function ($node)  use ($company){
                    if($node->filter('p')->count() > 1){
                        if( $node->filter('p')->eq(0)->text() == 'البريد الإلكتروني')
                            $company->email =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'رقم الجوال')
                            $company->phone =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'واتس آب')
                            $company->whatsapp =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'تليجرام')
                            $company->telegram =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'البريد الإلكتروني')
                            $company->email =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'الموقع الإلكتروني')
                            $company->website =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'تويتر')
                            $company->twitter =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'فيس بوك')
                            $company->facebook =$node->filter('p')->eq(1)->text();
                        if( $node->filter('p')->eq(0)->text() == 'إنستجرام')
                            $company->instagram =$node->filter('p')->eq(1)->text();
                        $company->save() ;
                    }
                });
        }
        // for($i=166021;$i<200000;$i+=5000){
        //     $start = $i;$end=$i+5000;
        //     foreach (companies::where('id','>=',$start)->where('id','<=',$end)->get() as $c){
        //         $c->email = json_decode($c->info,true)['البريد الإلكتروني']??'';
        //         $c->phone = json_decode($c->info,true)['رقم الجوال']??'';
        //         $c->whatsapp = json_decode($c->info,true)['واتس آب']??'';
        //         $c->telegram = json_decode($c->info,true)['تليجرام']??'';
        //         $c->website = json_decode($c->info,true)['الموقع الإلكتروني']??'';
        //         $c->twitter = json_decode($c->info,true)['تويتر']??'';
        //         $c->facebook = json_decode($c->info,true)['فيس بوك']??'';
        //         $c->instagram = json_decode($c->info,true)['إنستجرام']??'';
        //         $c->info = '';
        //         $c->save();
        //     }
        // }
    }
}
