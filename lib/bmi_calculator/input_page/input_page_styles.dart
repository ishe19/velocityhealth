import 'package:velocityhealth/bmi_calculator/widget_utils.dart';
import 'package:flutter/material.dart';

double appBarHeight(BuildContext context) {
  return screenAwareSize(60.0, context) + MediaQuery.of(context).padding.top;
}