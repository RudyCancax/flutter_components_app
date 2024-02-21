import 'package:flutter/material.dart';
import 'package:components_app/theme/app_theme.dart';

class CustomInput1 extends StatelessWidget {
  final int equalVar;
  final int majorThan;
  final IconData leftIcon;
  final TextInputType inputType;

  const CustomInput1({
    super.key,
    required this.inputType,
    required this.equalVar,
    required this.majorThan,
    required this.leftIcon,
  });

  @override
  Widget build(BuildContext context) {
    print(inputType);
    final textInputType = inputType.toJson()["name"].toString();
    var specificHintText = '';

    if (textInputType.contains('visiblePassword')) {
      specificHintText = 'Password input type';
    } else if (textInputType.contains('emailAddress')) {
      specificHintText = 'Email input type';
    } else {
      specificHintText = 'Name input type';
    }

    return TextFormField(
      autofocus: true,
      obscureText: textInputType.contains('visiblePassword'),
      keyboardType: inputType,
      // onChanged: (value) {},
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
          labelText: specificHintText,
          helperText: "Message (write $equalVar letters)",
          icon: Icon(leftIcon, color: AppTheme.primaryColor),
          suffixIcon:
              const Icon(Icons.verified_user_rounded, color: Colors.green),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
