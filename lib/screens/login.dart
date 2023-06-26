import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 112,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: 125,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 1,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      SvgPicture.asset(
                        'assets/icons/login.svg',
                        width: 290,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: 'Email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                            ),
                            hintText: 'Password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 15),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an Account ?",
                            style: TextStyle(
                              color: Colors.purple[500],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
