import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main(){
  runApp(
      MaterialApp(
      home: GradientContainer(colors: [
        Color.fromRGBO(1, 73, 86, 1),
        Color.fromRGBO(0, 158, 175, 1)]
        ),
    )
  );
}
