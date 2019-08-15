@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
				<div class="card">
						<div class="card-header">
								<h3>Broadcast</h3>
						</div>
						<div class="card-body">
                                <form method="post" action="/Broadcast" data-ajax="false">
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
        <label for="content" class="col-md-4 text-md-right">Content:</label>
        <div class="col-md-6">
        <textarea rows="20" class="form-control" id="content" name="content"></textarea>
    </div>
    </div>
    <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-4">
                {{-- <button type="submit" class="btn btn-primary">
                    Send
                </button> --}}
                <input type="button" onclick="$.post('/Broadcast',{'_token': '{{ csrf_token() }}','content':$('#content').val()},function(result){alert('Message Sent!');});" class="btn btn-success" value="Send">
                <input type="button" onclick="location='/home'" class="btn btn-danger" value="Cancel">
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





