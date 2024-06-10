import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingWidget extends StatelessWidget {
  final Color? color;
  const CustomLoadingWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return   SpinKitCircle(
      color:color?? Colors.white,
      size: 50.0,
    );
  }
}
