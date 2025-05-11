import 'dart:ui';

import 'package:flutter/material.dart';

final Color first_color = Colors.black;
final Color secondary_color = Colors.orange;

double getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}

double getHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}