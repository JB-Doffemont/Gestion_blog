<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div class="posts">
        @foreach ($posts as $post)
            <div class="showPost">
            <a href="{{route ('blog.show', [$post->id])}}"><h1>{{$post->title}}</h1></a>
            <p>{{$post->content}}</p>
            <p>{{$post->author}}</p>
            <p>{{$post->follower}}</p>
            <form action="{{route ('blog.destroy', [$post->id])}}" method="POST">
            @csrf
            @method('DELETE')
            <button>  Supprimer le post</button>
            </form>
            </div>
        @endforeach
    </div>
</body>
</html>
