@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
				@auth
				<div class="card">
				<a href="/Announce/create" class="btn btn-primary">Add Announcement</a>
			</div>
			@endauth
			<br/>
				
				@foreach ($list as $row)
				<div class="card">
						<div class="card-header">
								<a href="/Announce/{{ $row->announcementId }}" data-ajax="false"> 
									<h4>{{ $row->title }}</h4>
								</a>
						</div>
						<div class="card-body">
								{{ mb_strimwidth($row->content, 0, 150, "......", "UTF-8") }}
						</div>
						@auth
						<div class="card-footer">
								<form method="post" action="/Announce/{{ $row->announcementId }}" data-ajax="false">
									<a href="/Announce/{{ $row->announcementId }}/edit" class="btn btn-success">Edit</a>
									@csrf
									@method('DELETE')
									<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</div>
							@endauth
			</div>
			<br/>
			@endforeach
        </div>
    </div>
</div>
@endsection






