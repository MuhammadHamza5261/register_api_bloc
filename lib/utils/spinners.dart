import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinners extends StatelessWidget {
  final double? size;
  final Color? color;

  const Spinners({Key? key, this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      color: color ?? Colors.green,
      size: size ?? 50.0,
    );
  }
}