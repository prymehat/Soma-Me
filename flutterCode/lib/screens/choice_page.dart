import 'package:flutter/material.dart';
import 'package:somame/screens/verification_page.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {

  void navigateToVerification() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const VerificationPage()));
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
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage('images/profile.png'),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "What would you like to do?",
              style: TextStyle(
                  fontSize: 36, color: Color.fromRGBO(117, 63, 171, 1)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 228.19,
                height: 167,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(25.5),
                  )),
                  color: Color.fromRGBO(238, 238, 238, 1),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Send someone",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset('images/running.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap:navigateToVerification,
              child: Container(
                width: 228.19,
                height: 167,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(25.5),
                  )),
                  color: Color.fromRGBO(238, 238, 238, 1),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Go on errand",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Image.asset('images/money.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
