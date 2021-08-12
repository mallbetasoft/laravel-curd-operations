@extends('product/layout')
@section('content')
	
	
	<div class="row">
		<div class="col-lg-12 margin-tb">
			<div class="pull-left">
				<h3>Update Product</h3>
			</div>
			<div class="pull-right">
				<a class="btn btn-primary" href="/"> Back</a>
			</div>
		</div>
	</div>
	
	@if($errors->any())
		<div class="alert alert-danger">
			<ul>
				@foreach($errors->all() as $error)
					<li>{{ $error }}</li>
				@endforeach
			</ul>
		</div>
	@endif
	
	
	<form action="/update/{{ $details['id']}}" method="POST" enctype="multipart/form-data">
		@csrf
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div class="form-group">
					<strong>Name:</strong>
					<input type="text" name="title" value="{{ $details['title']}}" class="form-control" placeholder="Name">
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div class="form-group">
					<strong>Price:</strong>
					<input type="number" name="price" value="{{ $details['price']}}" class="form-control" placeholder="Price">
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div class="form-group">
					<strong>Image:</strong>
                    <input type="file" name="image" class="form-control">
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div class="form-group">
					<strong>Detail:</strong>
					<textarea class="form-control" style="height:150px" name="description" placeholder="Description">{{ $details['description']}}</textarea>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 text-center">
					<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
   
	</form>
	
@endsection