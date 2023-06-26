import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Master Chat',
                      style: TextStyle(
                        fontSize: 24,
                        letterSpacing: 1,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 35),

                    SvgPicture.asset('assets/icons/chat.svg',
                      width: 290,
                    ),

                    const SizedBox(height: 35),

                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40,),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple),
                              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15,),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Colors.grey[850],
                                fontWeight: FontWeight.bold,
                              ),
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
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 112,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                  'assets/images/main_bottom.png',
                width: 58,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
