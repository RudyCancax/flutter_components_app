import 'package:components_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs & Forms')),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  const CustomInput1(
                      inputType: TextInputType.name,
                      equalVar: 3,
                      majorThan: 3,
                      leftIcon: Icons.nest_cam_wired_stand),
                  Container(
                    height: 30,
                  ),
                  const CustomInput1(
                    inputType: TextInputType.emailAddress,
                    equalVar: 1,
                    majorThan: 5,
                    leftIcon: Icons.ac_unit_sharp,
                  ),
                  Container(
                    height: 30,
                  ),
                  const CustomInput1(
                    inputType: TextInputType.visiblePassword,
                    equalVar: 8,
                    majorThan: 10,
                    leftIcon: Icons.password_rounded,
                  ),
                  Container(
                    height: 30,
                  ),
                ],
              )),
        ));
  }
}
