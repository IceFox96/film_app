import 'package:flutter/material.dart';

abstract class LinkButtomTheme {
  static final linkButtomTheme = ButtonStyle(textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16,
    fontWeight: FontWeight.w400
    )
    ),
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    overlayColor: MaterialStateProperty.all(Colors.white)
    );
}