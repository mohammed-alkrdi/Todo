import 'package:flutter/material.dart';
import 'package:todo/colors.dart';
import 'package:todo/widgets/rounded_button.dart';
import 'package:todo/widgets/text_field_input.dart';
import 'package:todo/widgets/text_input.dart';

import '../widgets/clippers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper1(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.logoColor4, AppColors.logoColor5],
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: MyClipper2(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.logoColor4.withOpacity(0.5),
                          AppColors.logoColor5.withOpacity(0.5),
                        ],
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: MyClipper3(),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.logoColor4.withOpacity(0.5),
                          AppColors.logoColor5.withOpacity(0.5),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    maxRadius: 130,
                    backgroundColor: Colors.transparent,
                    child:
                        Image.asset("assets/images/logo3-removebg-preview.png"),
                  ),
                ),
              ],
            ),

            TextInput(
              text: "Organize and coordinate your daily activities",
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: AppColors.j,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10,
            ),
            const TextInput(
              text: "Sign in to your account now",
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 50,
            ),
            TextFieldInput(
              hint: "Email",
              textColor: Colors.grey,
              color: AppColors.j,
              icon: Icons.email,
              onSaved: (value) {},
              validator: (value) {},
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldInput(
              hint: "Password",
              textColor: Colors.grey,
              color: AppColors.j,
              icon: Icons.lock,
              onSaved: (value) {},
              validator: (value) {},
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.none,
              obscureText: true,
            ),
            SizedBox(
              height: 50,
            ),
            RoundedButton(
              sizeHeight: 40,
              sizeWidth: 200,
              onPressed: () {},
              textInput: const TextInput(
                text: "Sign in",
                fontSize: 16,
                color: Colors.white,
                alignment: Alignment.center,
              ),
              color1: AppColors.logoColor4,
              color2: AppColors.logoColor5,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextInput(
                  text: "Don't have an account?",
                  fontSize: 15,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  fontWeight: FontWeight.w400,
                ),
                GestureDetector(
                  onTap: () => {},
                  //nextScreen(context, const RegisterScreen()),
                  child: TextInput(
                    text: 'Register here',
                    color: AppColors.j,
                    fontSize: 15,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
