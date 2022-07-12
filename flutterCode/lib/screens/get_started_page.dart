import 'package:flutter/material.dart';
import 'package:somame/screens/signup_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  
  void navigateToSignup() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignupPage()));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'SomaMe',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(117, 63, 171, 1),
                  fontSize: 64,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'images/errand.png',
                height: 260,
                width: 194,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Send someone or go on an errand',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 36,
                    color: Color.fromRGBO(117, 63, 171, 1),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: navigateToSignup,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                    ),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: Color.fromRGBO(117, 63, 171, 1),
                  ),
                        
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
