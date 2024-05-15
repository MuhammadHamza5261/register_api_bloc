import 'dart:async';

import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../utils/spinners.dart';



class TimerSpinner extends StatefulWidget {
  @override
  State<TimerSpinner> createState() => _TimerSpinnerState();
}

class _TimerSpinnerState extends State<TimerSpinner> {
  bool isLoading = true;

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: Spinners(
          color: AppColors.primary,
        ),
      );
    }

    return Center(
      child: Text(
       'No Data Found',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
