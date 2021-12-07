import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PaginaInicial(),
      debugShowCheckedModeBanner: true,
    ),
  );
}

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Image.network('https://picsum.photos/250?image=37'),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          padding: const EdgeInsets.all(90),
        ),
    ); 
  }
}