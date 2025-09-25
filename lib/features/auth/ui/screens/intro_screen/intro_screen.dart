import 'package:flutter/material.dart';
import 'package:top_jobs/features/shared/helpers/sizedbox_extension.dart';

import '../../../../shared/components/custom_text.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CustomText(text: "te.", fontSize: 150),
              Spacer(),
              FilledButton.icon(
                onPressed: (){},
                label: Text("Create an account"),
                icon: Icon(Icons.add_circle_outline),
              ),
              30.height,
              TextButton(
                onPressed: (){},
                child: Text("Sign in"),
              ),
              SizedBox(height: 30,),
              30.height
            ],
          ),
        ),
      ),
    );
  }
}
