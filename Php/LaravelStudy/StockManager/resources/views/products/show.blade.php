@extends('layouts.main')

@section('content')
<h1>Product details: {{$product->name}}</h1>
<ul>
	<li>
		<b>Value: </b> R$ {{$product->value}}
	</li>
	<li>
		<b>Description:</b> {{$product->description}}
	</li>
	<li>
		<b>Quantity on stock: </b> {{$product->quantity}}
	</li>
</ul>
@stop