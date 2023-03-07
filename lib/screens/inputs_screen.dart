import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Luis',
      'last_name': 'Rivas',
      'email': 'luisricardorivasgiwencer@gmail.com',
      'password': '12345',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inpunts & Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Name',
                hintText: 'User Name',
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Last Name',
                hintText: 'User Last Name',
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Email',
                hintText: 'email',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Password',
                hintText: 'Password',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    return;
                  }
                  print(formValues);
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Save')),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
