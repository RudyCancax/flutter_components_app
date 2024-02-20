import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomInput1 extends StatelessWidget {
  final int equalVar;
  final int majorThan;
  final IconData leftIcon;

  const CustomInput1(
      {super.key,
      required this.equalVar,
      required this.majorThan,
      required this.leftIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onChanged: (value) {},
      validator: (value) {
        final valueStr = value.toString();
        if (valueStr.length == equalVar) {
          return "Same or equal than $equalVar";
        }

        if (valueStr.length > majorThan) {
          return "Major than $majorThan, length: ${value!.length}";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
      decoration: InputDecoration(
          hintText: "Write you're name",
          labelText: "Max: $majorThan",
          helperText: "Message (write $equalVar letters)",
          icon: Icon(leftIcon, color: AppTheme.primaryColor),
          suffixIcon:
              const Icon(Icons.verified_user_rounded, color: Colors.green),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
