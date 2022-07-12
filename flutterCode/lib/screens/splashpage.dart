  import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'SomaMe',
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(117, 63, 171, 1),
            fontFamily: 'Roboto',
            ),
             ),
          ),
    );
  }
}
