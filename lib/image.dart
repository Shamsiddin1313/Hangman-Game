import 'package:flutter/cupertino.dart';

Widget image(bool visible, String path) {
  return Visibility(
    visible: visible,
    child: SizedBox(
      height: 250,
      width: 250,
      child: Image.asset(path),
    ),
  );
}
