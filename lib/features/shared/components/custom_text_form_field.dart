import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final Widget? prfixIcon;

  const CustomTextFormField({super.key,required this.label,this.prfixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: prfixIcon,
          label: CustomText(
            text: label!,
          )
      ),
    );
  }
}
