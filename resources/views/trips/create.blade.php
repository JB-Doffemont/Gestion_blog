<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{route ('trips.store')}}" method="post">
        @csrf
        <label for="nom">Nom :</label>
        <input type="text" name="nom">

        <label for="age">Age :</label>
        <input type="text" name="age">

        <label for="pays">Pays de destination :</label>
        <select name="pays" id="">
        
        <option value="france">France</option>
        <option value="espagne">Espagne</option>
        </select>

        <button>Valider</button>
    </form>

    @if ($errors->any())
        @foreach ($errors->all() as $error)
        <div>{{$error}}</div>    
        @endforeach
        
    @endif
</body>
</html>