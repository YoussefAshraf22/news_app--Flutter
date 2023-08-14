import 'package:flutter/cupertino.dart';

class Model {
  final String? img;
  final String? name;
  final Function()? onTap;

  const Model({required this.img, required this.name, @required this.onTap});
}
