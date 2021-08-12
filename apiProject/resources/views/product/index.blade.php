@extends('product.layout')

@section('content')
	
	<div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h4>Products</h4>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="add "> Create New Product</a>
            </div>
        </div>
    </div>
	
	@if($mess = Session::get('success'))
		<div class="alert alert-success">
			<p>{{ $mess }}</p>
		</div>
	@endif
   
    <table class="table table-bordered">
        <tr>
            <th>No</th>
			<th>Image</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th width="280px">Action</th>
        </tr>
		@php
			$srn = 1 ;
		@endphp
		@foreach($details as $list)
			<tr>
				<td>{{ $srn }}</td>
			    <td><img src="/images/{{ $list['image'] }}" width="100px"></td>
				<td>{{ $list['title']}}</td>
				<td>{{ $list['price']}}</td>
				<td>{{ $list['description']}}</td>
				<td>
					<form action="delete/{{$list['id']}}" method="POST">
						<a class="btn btn-primary" href="edit/{{$list['id']}}">Edit</a>
					
						@csrf
						@method('DELETE')
						<button type="submit"  onclick="return confirm('Are you sure?')" class="btn btn-danger">Delete</button>
					</form>
				</td>
			</tr>
			@php 
				$srn++ 
			@endphp
		@endforeach
		
		
    </table>
	
	{{ $details->links('vendor.pagination.custom') }}

@endsection