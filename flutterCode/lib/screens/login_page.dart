// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:somame/resources/auth_methods.dart';
import 'package:somame/screens/choice_page.dart';
import 'package:somame/screens/signup_page.dart';
import 'package:somame/utils/utils.dart';
import 'package:somame/widgets/text_field_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (res == 'success') {
       Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => const ChoicePage()));
    } else {
      showSnackBar(res, context);
    }
    setState(() {
      _isLoading = false;
    });
  }

  void navigateToSignup() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignupPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 36, color: Color.fromRGBO(117, 63, 171, 1)),
            ),
            const SizedBox(
              height: 50,
            ),

            //Input for email
            TextFieldInput(
                hintText: "Enter your email",
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController),
            const SizedBox(
              height: 40,
            ),
            //Input for password
            TextFieldInput(
              hintText: "Enter your password",
              textInputType: TextInputType.text,
              textEditingController: _passwordController,
              isPass: true,
            ),
            const SizedBox(
              height: 40,
            ),

            GestureDetector(
              onTap: navigateToSignup,
              child: const Text(
                  "Don't have an account?Sign up.",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
                    color: Color.fromRGBO(48, 108, 151, 1),
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
            ),

            const SizedBox(
              height: 250,
            ),
            //SignUp button

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: loginUser,
                  child: Container(
                    width: 85,
                    height: 42,
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 25, bottom: 12),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      )),
                      color: Color.fromRGBO(117, 63, 171, 1),
                    ),
                    child: _isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            heightFactor: 0.5,
                            widthFactor: 1,
                          )
                        : const Text(
                            'Login',
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 13.11,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
