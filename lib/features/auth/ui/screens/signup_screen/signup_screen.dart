import 'package:flutter/material.dart';
import 'package:top_jobs/features/shared/helpers/sizedbox_extension.dart';

import '../../../../shared/components/custom_text.dart';
import '../../../../shared/components/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 25,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "te.",
                fontSize: 90,
              ),
              CustomTextFormField(
                label: "Fullname",
                prfixIcon: Icon(Icons.person_off_outlined),
              ),
              CustomTextFormField(
                label: "Phone",
                prfixIcon: Icon(Icons.phone),
              ),
              CustomTextFormField(
                label: "E-mail",
                prfixIcon: Icon(Icons.attach_email_outlined),
              ),
              CustomTextFormField(
                label: "Password",
                prfixIcon: Icon(Icons.security),
              ),
              CustomTextFormField(
                label: "Confirm Password",
                prfixIcon: Icon(Icons.security),
              ),

              30.height,
              FilledButton(
                onPressed: (){},
                child: CustomText(
                   text:  "Sign Up"
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
