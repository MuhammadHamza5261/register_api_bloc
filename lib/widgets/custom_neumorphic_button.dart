import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import 'neumorphic_button.dart';


class CustomNeumorphicButton extends StatelessWidget {

  final VoidCallback onTap ;
  final double? width ;
  final String title ;
  final bool? isDisabled ;

  const CustomNeumorphicButton({Key? key, required this.onTap, required this.title, this.isDisabled, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: NeumorphicButton(
        onTap: onTap,
        child: Center(
          child: Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: isDisabled == true ? Colors.black.withOpacity(0.4) : AppColors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 12
              )
          ),
        ),
        borderRadius: 10,
        bottomRightShadowBlurRadius: 10,
        bottomRightShadowSpreadRadius: 0.3,
        borderWidth: 0,
        backgroundColor: isDisabled == true ? Colors.grey.shade300.withOpacity(0.8) : Colors.blue.withOpacity(0.9),
        topLeftShadowBlurRadius: 10,
        topLeftShadowSpreadRadius: 0.3,
        topLeftShadowColor: isDisabled == true ? Colors.white38 : Colors.blue.withOpacity(0.1),
        bottomRightShadowColor: isDisabled == true ? Colors.grey.shade400 :Colors.grey.shade400.withOpacity(0.7) ,
        height: 30,
        width: 100,
        padding: EdgeInsets.all(0),
        bottomRightOffset: Offset(4, 4),
        topLeftOffset: Offset(-4, -4),
      ),
    ) ;
  }
}