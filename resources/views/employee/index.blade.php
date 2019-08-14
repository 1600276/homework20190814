<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Lab</title>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<script src="/scripts/jquery-1.9.1.min.js"></script>
	<script src="/scripts/jquery.mobile-1.3.2.min.js"></script>
	<link rel="stylesheet" href="/scripts/jquery.mobile-1.3.2.min.css" />
	<link rel="stylesheet" href="/styles.css" />
</head>

<body>
<div data-role="page" data-theme="c">

<div data-role="header">
	<h1>Employee Details</h1>
</div>

<div data-role="content">
	<ul data-role="listview" data-filter="true">

	@foreach ($employeeList as $emp)
		<li>
		<a href="/employee/{{ $emp->employeeId }}" data-ajax="false"> 
			<img src="/images/{{ $emp->picture }}">
			<h4>{{ $emp->firstName }} {{ $emp->lastName }}</h4>
			<p>{{ $emp->title }}</p>
			<p>{{ $emp->department->departmentName }}</p>
		</a>
		</li>
	@endforeach


	</ul>
</div>

<div data-role="footer">
	<label>Broadcast</label>
		<textarea id="msg"></textarea>
		<input type="button" id="btnSend" class="btn btn-success" value="SendMessage">
	</div>

</div>
<div id='app'></div>
<script src="/js/app.js"></script>
<script>
$(function(){
	Echo.channel('message')
        .listen('Message', (e) => {
        console.log(e.message);
	});
	
	$('#btnSend').click(function(){
		$.get('/broadcast/push?msg='+$('#msg').val(), function(result){
			alert('Message Sent!')
		});
	});
});
</script>
</body>

</html>
