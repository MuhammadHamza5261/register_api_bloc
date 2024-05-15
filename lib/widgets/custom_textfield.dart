import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/app_colors.dart';



class CustomTextField extends StatefulWidget {
  final TextEditingController controller;

  final TextInputType? inputType;

  final String hint;

  final int? borderRadius;

  final String? Function(String?)? validator;

  final void Function(String?)? onChange;

  final bool? isPassword;

  final bool? isObscure;

  final bool? isVisibilityIconShow;

  final IconData? prefixIcon;

  final bool? readOnly;

  final List<TextInputFormatter>? textInputFormatters;

  final bool? isCircularBorder;

  final bool? reduceFieldPadding ;

  const CustomTextField(
      {Key? key,
        required this.controller,
        this.inputType,
        required this.hint,
        this.borderRadius,
        this.validator,
        this.onChange,
        this.isPassword,
        this.isVisibilityIconShow,
        this.prefixIcon,
        this.isObscure,
        this.readOnly,
        this.textInputFormatters,
        this.isCircularBorder, this.reduceFieldPadding})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscure;

  @override
  void initState() {
    _isObscure = widget.isObscure == true ? true : false;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double borderCircular = widget.borderRadius?.toDouble() ?? 8.0;

    return TextFormField(
      inputFormatters: widget.textInputFormatters ?? [],
      readOnly: widget.readOnly == true ? true : false,
      cursorColor: AppColors.lightBlack,
      controller: widget.controller,
      keyboardType: widget.inputType ?? TextInputType.text,
      textInputAction: TextInputAction.next,
      obscureText: _isObscure ? true : false,
      decoration: InputDecoration(
        contentPadding: widget.reduceFieldPadding == true ? const EdgeInsets.symmetric(horizontal: 10,vertical: 5) : null,
        //fillColor: AppColors.textFieldColor,
        //filled: true,
        hintText: widget.hint,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.lightBlack.withOpacity(0.4)),
        prefixIcon: widget.prefixIcon != null
            ? Icon(
          widget.prefixIcon,
          color: AppColors.whiteGrey,
        )
            : null,
        suffixIcon: widget.isPassword == true
            ? widget.isVisibilityIconShow == true
            ? InkWell(
          onTap: () {
            setState(() {
              _isObscure = !_isObscure;
            });
          },
          child: Icon(
            _isObscure == true
                ? Icons.visibility_off
                : Icons.visibility,
            color: AppColors.lightBlack,
          ),
        )
            : null
            : null,
        focusedBorder: widget.isCircularBorder == true
            ? OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(widget.borderRadius?.toDouble() ?? 8),
            borderSide: BorderSide(
                color: AppColors.whiteGrey,
                width: 0.5
            ))
            : UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteGrey)),
        enabledBorder: widget.isCircularBorder == true
            ? OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(widget.borderRadius?.toDouble() ?? 8),
            borderSide: BorderSide(color: AppColors.whiteGrey,
                width: 0.5))
            : UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteGrey)),
        errorBorder: widget.isCircularBorder == true
            ? OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(widget.borderRadius?.toDouble() ?? 8),
            borderSide: BorderSide(
                color: AppColors.errorToastColor.withOpacity(0.7),
                width: 0.5))
            : UnderlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.errorToastColor.withOpacity(0.7),
                width: 0.5)),
        focusedErrorBorder: widget.isCircularBorder == true
            ? OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(widget.borderRadius?.toDouble() ?? 8),
            borderSide: BorderSide(
                color: AppColors.errorToastColor.withOpacity(0.7),
                width: 0.5))
            : UnderlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.errorToastColor.withOpacity(0.7),
                width: 0.5)),
      ),
      onChanged: widget.onChange,
      validator: widget.validator,
    );
  }
}