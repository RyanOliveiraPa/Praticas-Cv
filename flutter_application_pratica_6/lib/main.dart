import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
            Container(
              width: 250,
              height: 250,
              margin: const EdgeInsets.all(20),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                      'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.black12,
                    Colors.black45,
                  ],
                ),
              ),
              child: Text(
                "Google Flutter",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}