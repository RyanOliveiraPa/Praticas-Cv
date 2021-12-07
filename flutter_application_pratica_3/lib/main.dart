import 'package:flutter/material.dart';

void main() {
  String nome = "Soldado Ryan";

  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '$nome',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.double,
                ),
              ),
              TextSpan( 
                text: '! \nBom Dia!',
              ),
            
            TextSpan(
              text: ' \nHoje é Quarta-Feira',
              style: TextStyle(
                backgroundColor: Colors.lightGreenAccent,
                color: Colors.deepPurpleAccent,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
              )
              ),
            ]
        ),
      ),
    ),
  );
}