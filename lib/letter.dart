import 'package:flutter/material.dart';

Widget letter(String character, bool hidden) {
  return Container(
    height: 65,
    width: 60,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.blue.shade900,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Visibility(
      visible: hidden,
      child: Center(
        child: Text(
          character,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
    ),
  );
}
