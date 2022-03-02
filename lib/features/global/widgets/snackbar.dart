import 'package:flutter/material.dart';

void showInSnackBar(BuildContext context, String value) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(value),
    ),
  );
}
