<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
        <div class="showPost">
            <h1>{{$post->title}}</h1>
            <p>{{$post->content}}</p>
            <p>{{$post->author}}</p>
            <p>{{$post->follower}}</p>

            <a href="{{route('blog.edit', [$post->id])}}"><button>Modifier le post</button></a>
        </div>
</body>
</html>
