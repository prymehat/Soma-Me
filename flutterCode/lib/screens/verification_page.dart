import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
                        backgroundImage:
                            AssetImage('images/profile.png'),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const Text(
                "Identity Verification",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(117, 63, 171, 1)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: const[
                  Text(
                    'Select ID Type',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],  
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                      const Text(
                        'Ghana Card',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Color.fromRGBO(0, 0, 0, 1), 
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                      const Text(
                        'Student ID',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      )
                    ],
                  )
                ]
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const[
                  Text(
                    'Upload image of ID card',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    )
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 257,
                  height: 145,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    )),
                    color: Color.fromRGBO(238, 238, 238, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset('images/camera.png'),
                      const SizedBox(
                      height: 10,
                      ),
                      const Text(
                        "Upload front page",
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(116, 116, 116, 1)),
                      ),
                      
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 257,
                  height: 145,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    )),
                    color: Color.fromRGBO(238, 238, 238, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset('images/camera.png'),
                      const SizedBox(
                      height: 10,
                      ),
                      const Text(
                        "Upload back page",
                        style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(116, 116, 116, 1)),
                      ),  
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              )
              
            ]
          )
        )
      )
    );
  }
}
