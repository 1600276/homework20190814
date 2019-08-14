@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
				<div class="card">
						<div class="card-header">
								<h3>Edit</h3>
						</div>
						<div class="card-body">
                                <form method="post" action="/Announce" data-ajax="false">
                                    @csrf
<fieldset>
@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="form-group row">
        <label for="title" class="col-md-4 col-form-label text-md-right">Title:</label>
        <div class="col-md-6">
        <input type="text" class="form-control" id="title" name="title" />
    </div>
    </div>
    <div class="form-group row">
        <label for="content" class="col-md-4 text-md-right">Content:</label>
        <div class="col-md-6">
        <textarea rows="15" class="form-control" id="content" name="content"></textarea>
    </div>
    </div>
    <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-4">
                <button type="submit" class="btn btn-primary">
                    Add
                </button>
                <input type="button" onclick="location='/Announce'" class="btn btn-danger" value="Cancel">
            </div>
        </div>
    </fieldset>
                                </form>
                            </div>
			</div>
        </div>
    </div>
</div>
@endsection





