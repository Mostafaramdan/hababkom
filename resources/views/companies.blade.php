<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<table class="table table-bordered border-primary table-dark table-hover">
    <thead>
        <tr>
        <th>#</th>
        <th>id</th>
        <th>name_ar</th>
        <th>name_en</th>
        <th>description</th>
        <th>email</th>
        <th>phone </th>
        <th>whatsapp</th>
        <th>twitter</th>
        <th>facebook</th>
        <th>instagram</th>
        <th>website</th>
        </tr>
    </thead>
    <tbody>
        @foreach($companies as $comp)
            <tr>
                <td>#{{$loop->iteration}}</td>
                <td > <a target="_blank" href="//https://maroof.sa/{{$comp->id}}">{{$comp->id}}</td>
                <td >{{$comp->name_arabic}}</td>
                <td >{{$comp->name}}</td>
                <td >{{$comp->description}}</td>
                <td >{{$comp->email}}</td>
                <td >{{$comp->phone}}</td>
                <td >{{$comp->whatsapp}}</td>
                <td ><a target="_blank" href="{{$comp->twitter}}">{{$comp->twitter}}</a></td>
                <td ><a target="_blank" href="{{$comp->facebook}}">{{$comp->facebook}}</a></td>
                <td ><a target="_blank" href="{{$comp->instagram}}">{{$comp->instagram}}</a></td>
                <td ><a target="_blank" href="{{$comp->website}}">{{$comp->website}}</a></td>
            </tr>
        @endforeach
    </tbody>
</table>
</body>
</html>