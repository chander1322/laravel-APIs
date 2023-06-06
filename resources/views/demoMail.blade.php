<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
</head>
<body>
<h3>Add Data</h3>
<form action="{{route('sendmail')}}" method="POST">
    @csrf
    <div>
        <input type="text" name="name"><br><br> 
            @if ($errors->has('name'))
                <span style="color:red">{{ $errors->first('name') }}</span>
            @endif
    </div>
    <div>
        <input type="text" name="email"><br><br>
            @if ($errors->has('email'))
                <span style="color:red">{{ $errors->first('email') }}</span>
            @endif
    </div>
    <div>
        <input type="text" name="subject"><br><br>
            @if ($errors->has('subject'))
                <span style="color:red">{{ $errors->first('subject') }}</span>
            @endif
    </div>
    <div>
        <input type="text" name="message"><br><br>
            @if ($errors->has('message'))
                <span style="color:red">{{ $errors->first('message') }}</span>
            @endif
    </div>  
    <input type="submit" name="submit" value="Submit">
</form>
</body>
</html>