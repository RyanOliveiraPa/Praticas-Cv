import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // Permite aumentar o tamanho do logo.
              child: const FlutterLogo(),
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image(
                image: NetworkImage(
                  "https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI",
                ),
              ),
            ),
          ),
          Text(
            "Google Flutter.",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
