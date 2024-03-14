import 'package:flutter/material.dart';
import 'package:real_estate_project_app/widgets/sign_up_widgets/customizable_text_form_field_sign_up.dart';
import 'package:real_estate_project_app/widgets/sign_up_widgets/google_sign_up_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://www.logolynx.com/images/logolynx/54/54fdd5391019db1a0a41ef1ca23f698c.jpeg"),
            const GoogleSignUpButton(),
            Text(
              "veya",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomizableTextFormFieldSignUp(
                  hintString: "Umut",
                  inputCardName: "isim",
                  startIcon: Icons.person,
                  keyboardtype: TextInputType.name,
                ),
                const CustomizableTextFormFieldSignUp(
                  hintString: "Atakul",
                  inputCardName: "Soyad",
                  startIcon: Icons.person,
                  keyboardtype: TextInputType.name,
                ),
                const CustomizableTextFormFieldSignUp(
                    hintString: "atakulumut@gmail.com",
                    inputCardName: "*e-mail adresi",
                    startIcon: Icons.email,
                    keyboardtype: TextInputType.emailAddress),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Şifrenizi Belirleyin",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Text("- Minimum 8 karakter içermeli"),
                      const Text("- En az bir büyük harf içermeli"),
                      const Text("- En az bir küçük harf içermeli"),
                      const Text("- En az bir rakam içermeli"),
                    ],
                  ),
                ),
                const CustomizableTextFormFieldSignUp(
                  hintString: "",
                  inputCardName: "Şifre",
                  startIcon: Icons.password_sharp,
                  keyboardtype: TextInputType.visiblePassword,
                  endIcon: Icons.visibility,
                ),
                const CustomizableTextFormFieldSignUp(
                  hintString: "",
                  inputCardName: "Şifre Tekrarı",
                  startIcon: Icons.password_sharp,
                  keyboardtype: TextInputType.visiblePassword,
                  endIcon: Icons.visibility,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
