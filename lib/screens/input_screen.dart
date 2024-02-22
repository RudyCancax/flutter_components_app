import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> testForm = {
      "name": "Cancax",
      "email": "miemail@gmail.com",
      "password": "1234asdf",
      "role": "admin"
    };

    return Scaffold(
        appBar: AppBar(title: const Text('Inputs & Forms')),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInput1(
                        inputType: TextInputType.name,
                        equalVar: 3,
                        majorThan: 3,
                        leftIcon: Icons.nest_cam_wired_stand,
                        form: testForm,
                        formPropertie: "name"),
                    Container(
                      height: 30,
                    ),
                    CustomInput1(
                        inputType: TextInputType.emailAddress,
                        equalVar: 1,
                        majorThan: 5,
                        leftIcon: Icons.ac_unit_sharp,
                        form: testForm,
                        formPropertie: "email"),
                    Container(
                      height: 30,
                    ),
                    CustomInput1(
                      inputType: TextInputType.visiblePassword,
                      equalVar: 8,
                      majorThan: 10,
                      leftIcon: Icons.password_rounded,
                      form: testForm,
                      formPropertie: "password",
                    ),
                    Container(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      value: "user",
                      items: const [
                        DropdownMenuItem(value: 'admin', child: Text("Admin")),
                        DropdownMenuItem(value: 'user', child: Text("User"))
                      ],
                      onChanged: (value) {
                        testForm["role"] = value.toString();
                        print("dropdown $value");
                        print("form: $testForm");
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          print(testForm);
                        },
                        child: const Center(
                          child: Text("Accept"),
                        )),
                    Container(
                      height: 20,
                    ),
                    const Text(
                        "See inputs data in console after accept click/press."),
                  ],
                ),
              )),
        ));
  }
}
