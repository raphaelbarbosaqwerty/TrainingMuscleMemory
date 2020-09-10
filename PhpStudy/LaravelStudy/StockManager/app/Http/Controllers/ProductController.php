<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Requests\ProductRequest;
use App\Product;
use Validator;
use Request;

class ProductController extends Controller
{
    public function list() {
    	
    	$products = Product::all();

    	return view('products.listing')->withProducts($products);	
    }

    public function show($id) {

    	$product = Product::find($id);

    	if(empty($product)) {
    		return "This product doesnt't exists";
    	}

    	return view ('products.show')->with('product', $product);
    }

    public function new() {
    	return view('products.form');
    }

    public function added(ProductRequest $request) {
    	Product::create($request->all());

    	return redirect()->action('ProductController@list')->withInput(Request::only('name'));
    }

    public function remove($id) {
    	$product = Product::find($id);
    	$product->delete();

    	return redirect()->action('ProductController@list');
    }
}
