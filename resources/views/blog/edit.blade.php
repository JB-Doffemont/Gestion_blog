<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form action="{{route('blog.update', [$post->id])}}" method="POST">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control @if ($errors->has('title')) is-invalid @endif" name="title"  value="{{$post->title}}">

        @if ($errors->has('title'))
        <div id="validation_title" class="invalid-feedback">
            {{$errors->first('title')}}
        </div>
        @endif

    </div>
    <div class="form-group">
          <label for="title">Content</label>
          <input type="text" class="form-control" name="content"  value="{{$post->content}}">

    </div>

    <div class="form-group">
          <label for="author">Author</label>
          <input type="text" class="form-control" name="author" value="{{$post->author}}" >

    </div>

    <div class="form-group">
          <label for="follower">Followers</label>
          <input type="number" class="form-control" name="follower" value="{{$post->follower}}" >

    </div>

      <button type="submit" class="btn btn-primary">Valider</button>
</form>
    @if (session()->has('success'))
        <div class="alert alert-success">
            {{session()->get('success')}}
        </div>
    @endif
    @if (session()->has('error'))
        <div class="alert alert-danger">
            {{session()->get('error')}}
        </div>
    @endif



</body>
</html>
