import 'package:flutter/material.dart';

import 'package:gifs_search/ui/home_page.dart';

import 'package:gifs_search/ui/gif_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme:ThemeData(hintColor: Colors.white),
  ));
}