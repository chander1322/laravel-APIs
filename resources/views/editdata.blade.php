@foreach($edit as $e)
@endforeach
@if(session()->has('update'))
    <div class="alert alert-success">
        {{ session()->get('update') }}
    </div>
@endif
<form method="post" action="{{url('updateform')}}">
    @csrf
    <input type="hidden" name="id" value="{{$e->id}}">
    <input type="text" name="name" value="{{$e->name}}">
    <input type="text" name="email"  value="{{$e->email}}">
    <input type="submit" name="submit" value="Update">
</form>