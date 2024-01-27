import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height, // Set a fixed height for the container
          child: LogIn(),
        ),
      ),
    );
  }
}


class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 428,
          height: 926,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF88A8A)),
          child: Stack(
            children: [
              Positioned(
                left: 112,
                top: 130,
                child: SizedBox(
                  width: 194,
                  height: 26.93,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'MATERIAL ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8700000047683716),
                            fontSize: 17.22,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 1.20, 
                            letterSpacing: 1.38,
                          ),
                        ),
                        TextSpan(
                          text: '2',
                          style: TextStyle(
                            color: Color(0xFF6202EE),
                            fontSize: 17.22,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 1.20,
                            letterSpacing: 1.38,
                          ),
                        ),
                        TextSpan(
                          text: ' UI ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8700000047683716),
                            fontSize: 17.22,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 1.20,
                            letterSpacing: 1.38,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 519,
                child: Container(
                  width: 341,
                  height: 62,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF1453F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            'CONTINUE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.14,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 612,
                child: Container(
                  width: 350,
                  height: 10,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 350,
                          height: 1,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.11999999731779099),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 149,
                        top: -3,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'or use',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6000000238418579),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 1.33,
                                  letterSpacing: 0.40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 653,
                child: Container(
                  width: 341,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE5E5E5),
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 52,
                        top: 18,
                        child: SizedBox(
                          width: 273,
                          child: Text(
                            'Sign in with Google',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.14,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 14,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                          
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 727,
                child: Container(
                  width: 341,
                  height: 52,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.7400000095367432),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE5E5E5),
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 52,
                        top: 18,
                        child: SizedBox(
                          width: 273,
                          child: Text(
                            'Sign in with Apple',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 1.14,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 13,
                        top: 14,
                        child: Container(
                          width: 24,
                          height: 24,
                          child: Stack(children: [
                          
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 371,
                child: SizedBox(
                  width: 304,
                  height: 53,
                  child: Text(
                    'Login or sign up for free.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8700000047683716),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 1.43,
                      letterSpacing: 0.25,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 435,
                child: Container(
                  width: 341,
                  height: 62,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 341,
                          height: 62,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                color: Colors.black.withOpacity(0.3799999952316284),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 4,
                        child: SizedBox(
                          width: 309,
                          height: 54,
                          child: Text(
                            'Email or Username',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.3799999952316284),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 1.75,
                              letterSpacing: 0.44,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}