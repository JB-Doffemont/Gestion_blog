<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
    <!-- route qui appelle la méthode store -->
    <form action="{{ route ('blog.store') }}" method="POST">
        @csrf
        <div class="form-group">
          <label for="title">Title</label>
          <input type="text" class="form-control @if ($errors->has('title')) is-invalid @endif" name="title"  placeholder="Enter title">

          @if ($errors->has('title'))
              <div id="validation_title" class="invalid-feedback">
                  {{$errors->first('title')}}
              </div>

          @endif


        </div>
        <div class="form-group">
            <label for="content">Content</label>
            <input type="text" class="form-control @if ($errors->has('content')) is-invalid @endif" name="content"  textarea="Enter content">

            @if ($errors->has('content'))
              <div id="validation_content" class="invalid-feedback">
                  {{$errors->first('content')}}
              </div>

          @endif
          </div>

          <div class="form-group">
            <label for="author">Author</label>
            <input type="text" class="form-control @if ($errors->has('author')) is-invalid @endif" name="author" >

            @if ($errors->has('author'))
              <div id="validation_author" class="invalid-feedback">
                  {{$errors->first('author')}}
              </div>

          @endif
          </div>

          <div class="form-group">
            <label for="follower">Followers</label>
            <input type="number" class="form-control @if ($errors->has('follower')) is-invalid @endif" name="follower" >

            @if ($errors->has('follower'))
              <div id="validation_follower" class="invalid-feedback">
                  {{$errors->first('follower')}}
              </div>

          @endif
          </div>

        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
</body>
</html>
