import 'package:flutter/material.dart';
import 'package:real_estate_project_app/widgets/sign_up_widgets/google_logo.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoogleLogo(
              size: MediaQuery.of(context).size.width / 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Google ile giriş yap"),
            )
          ],
        ),
      ),
    );
  }
}
