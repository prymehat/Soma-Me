

// ignore_for_file: use_build_context_synchronously, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:somame/resources/auth_methods.dart';
import 'package:somame/screens/choice_page.dart';
import 'package:somame/screens/login_page.dart';
import 'package:somame/utils/utils.dart';
import 'package:somame/widgets/text_field_input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
  }

  void signupUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().signUpUser(
        fullname: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        phone: _phoneController.text);

    setState(() {
      _isLoading = false;
    });
    if (res != 'success') {
      // ignore: use_build_context_synchronously
      showSnackBar(res, context);
    } else {
       Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => const ChoicePage()));
    }
  }

   void navigateToLogin() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => const LoginPage()));
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
              "Sign Up",
              style: TextStyle(
                  fontSize: 36, color: Color.fromRGBO(117, 63, 171, 1)),
            ),
            const SizedBox(
              height: 50,
            ),
            //Input for fullname
            TextFieldInput(
                hintText: "Enter your fullname",
                textInputType: TextInputType.name,
                textEditingController: _nameController),
            const SizedBox(
              height: 40,
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

            //Input for mobile number
            TextFieldInput(
              textInputType: TextInputType.phone,
              textEditingController: _phoneController,
              hintText: "Enter your mobile number",
            ),
            const SizedBox(
              height: 50,
            ),

            GestureDetector(
              onTap: navigateToLogin,
              child: const Text(
                'Already have an account? Tap here to Login.',
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
              height: 30,
            ),
            //SignUp button

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: signupUser,
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
                            // ignore: sort_child_properties_last
                            child: CircularProgressIndicator(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              strokeWidth: 3,
                            
                            ),
                            heightFactor: 0.5,
                            widthFactor: 1,
                          )
                        : const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 13.11,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 1)
                            ),
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
