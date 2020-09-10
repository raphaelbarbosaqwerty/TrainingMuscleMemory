@extends('layouts.main')

@section('content')

@if(empty($products))
	<div class="alert alert-danger">
		You don't have any products.
	</div>
@else
	<h1>Products List</h1>
	<table class="table table-striped table-bordered table-hover">
		@foreach ($products as $product)
		<tr class="{{$product->quantity<=3 ? 'danger' : ''}}">
			<td>{{$product->name}}</td>
			<td>{{$product->value}}</td>
			<td>{{$product->quantity}}</td>
			<td>{{$product->description}}</td>
			<td>
				<a href="/products/show/{{$product->id}}"> 
					Show 
				</a>
				<a href="/products/remove/{{$product->id}}">
					Delete
				</a>
			</td>
		</tr>
		@endforeach
	</table>
@endif
<h4>
	<span class="label label-danger pull-right">
		One or more itens in the stock
	</span>
</h4>

@if(old('name'))
<div class="alert alert-success">
	<strong>Success!</strong> The product {{old('name')}} was been created!
</div>
@endif

@stop