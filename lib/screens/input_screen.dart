import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs & Forms')),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    onChanged: (value) {
                      inputValue = value;
                      setState(() {});
                    },
                    validator: (value) {
                      final valueStr = value.toString();
                      if (valueStr.length == 3) {
                        return "Same or equal than 3";
                      }

                      if (valueStr.length > 3) {
                        return "Major than 3, length: ${value!.length}";
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.always,
                    decoration: InputDecoration(
                        hintText: "Write you're name",
                        labelText: 'Name',
                        helperText: "Message (write 3 letters)",
                        icon: Icon(Icons.lock, color: AppTheme.primaryColor),
                        suffixIcon: const Icon(Icons.verified_user_rounded,
                            color: Colors.green),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  Container(
                    height: 30,
                  ),
                  Text("Input value: $inputValue")
                ],
              )),
        ));
  }
}
