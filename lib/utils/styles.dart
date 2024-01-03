import 'package:flutter/material.dart';
import 'package:web_xpense/utils/colors.dart';

ButtonStyle navButtonStyle = ButtonStyle(
  padding: MaterialStateProperty.all(
    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
  ),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: const BorderSide(color: AppColors.primary),
    ),
  ),
  elevation: MaterialStateProperty.all(0),
);
