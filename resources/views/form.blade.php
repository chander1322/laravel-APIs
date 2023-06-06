<h3>Add Data</h3>
<form method="post" action="{{url('saveform')}}">
    @csrf
    <input type="text" name="name">
    <input type="text" name="email">
    <input type="text" name="password">
    <input type="submit" name="submit" value="Submit">
</form>
@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h4>HTML Table</h4>
@if(session()->has('delete'))
    <div class="alert alert-success">
        {{ session()->get('delete') }}
    </div>
@endif
<table>
  <tr>
    <th>Sr.N</th>
    <th>Name</th>
    <th>Email</th>
    <th>Delete Action</th>
    <th>Edit Action</th>
  </tr>

</table>
</body>

