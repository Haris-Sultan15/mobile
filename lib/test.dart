import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
    const TestPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 892,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 868,
              child: Container(
                width: 412,
                height: 24,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 108,
                      height: 4,
                      decoration: ShapeDecoration(
                        color: Color(0xFF202124),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 412,
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '9:30',
                      style: TextStyle(
                        color: Color(0xFF1D1B20),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.14,
                      ),
                    ),
                    Container(
                      width: 46,
                      height: 17,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 17,
                              height: 17,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(width: 17, height: 17),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 0,
                            child: Container(width: 17, height: 17, child: Stack()),
                          ),
                          Positioned(
                            left: 38,
                            top: 1,
                            child: Container(
                              width: 8,
                              height: 15,
                              child: FlutterLogo(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 52,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 7,
                  left: 16,
                  right: 174,
                  bottom: 7,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Color(0xFFC4CED4)),
                    top: BorderSide(color: Color(0xFFC4CED4)),
                    right: BorderSide(color: Color(0xFFC4CED4)),
                    bottom: BorderSide(width: 0.50, color: Color(0xFFC4CED4)),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 149.88),
                    Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xFF49454F),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 130,
              child: Text(
                'Please Enter Your Phone Number',
                style: TextStyle(
                  color: Color(0xFF49454F),
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.06,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 170,
              child: Text(
                'We will share your information with doctor',
                style: TextStyle(
                  color: Color(0xFF49454F),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                  letterSpacing: 0.25,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 811,
              child: Container(
                width: 380,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Color(0xFF059B85),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE6E5E8),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 230,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Color(0xFF49454F),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                        letterSpacing: 0.25,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 56,
                      padding: const EdgeInsets.only(
                        top: 13,
                        left: 24,
                        right: 162,
                        bottom: 13,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC4CED4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 194,
                            height: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 36,
                                        height: 36,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: FlutterLogo(),
                                      ),
                                      const SizedBox(width: 12),
                                      Container(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '+968',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF8391A1),
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                height: 0.14,
                                                letterSpacing: 0.10,
                                              ),
                                            ),
                                            Container(
                                              width: 24,
                                              height: 24,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: FlutterLogo(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Transform(
                                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                        child: Container(
                                          width: 26,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 2,
                                                strokeAlign: BorderSide.strokeAlignCenter,
                                                color: Color(0xFFD0D0D0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        '206-312-9956',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF8391A1),
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          height: 0.14,
                                          letterSpacing: 0.10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
