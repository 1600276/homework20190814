@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
				<div class="card">
						<div class="card-header">
								<h3>{{ $detail->title }}</h3>
						</div>
						<div class="card-body">
								{{ $detail->content }}
						</div>
						<div class="card-footer">
                                <a href="/Announce" class="btn btn-success">Back</a>
							</div>
			</div>
        </div>
    </div>
</div>
@endsection
