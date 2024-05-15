import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

import '../styles/app_images.dart';


class CustomCheckBox extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  final bool val ;
  final int? size ;
  final double? padding ;
  final bool? isEmptyImage ;

  const CustomCheckBox({Key? key, required this.onChanged, required this.val, this.size, this.padding, this.isEmptyImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 10),
      child: GestureDetector(
        onTap: (){
          if(!val && (isEmptyImage == null || isEmptyImage == false)) {
            Vibration.vibrate(duration: 30);
          }
          onChanged.call(!val) ;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: size == null ? 28 : size?.toDouble(),
          width: size == null ? 28 : size?.toDouble(),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                isEmptyImage == true ? AppImages.emptyBox :
                val ? AppImages.checkedBoxImage : AppImages.unCheckedBoxImage,
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}
