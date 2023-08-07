import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class CircularIconWidget extends StatelessWidget {
  const CircularIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kSecondaryColor,
      ),
      child: Center(
        child: Image.asset(
          'assets/icons/newspaper.png',
          width: 24.h,
          height: 24.h,
        ),
      ),
    );
  }
}
