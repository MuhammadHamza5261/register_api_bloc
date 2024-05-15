import 'package:flutter/material.dart';

import '../styles/app_colors.dart';


class CustomLabel extends StatelessWidget {
  final String title ;
  final Color? bgColor ;

  const CustomLabel({Key? key, required this.title, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),

      decoration: BoxDecoration(
          color: bgColor ?? Colors.redAccent,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: bgColor ?? Colors.redAccent,
                blurRadius: 0,
                spreadRadius: 0.3
            )
          ]
      ),
      // child: Center(
      //   child: Text(
      //     title.toUpperCase(),
      //     textScaleFactor: 1.05,
      //     overflow: TextOverflow.ellipsis,
      //     style: context.labelSmall.copyWith(
      //       color: AppColors.white
      //     )
      //   ),
      // ),
    );
  }
}