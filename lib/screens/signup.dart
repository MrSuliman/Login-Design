import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/screens/login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  // LoginPage login = LoginPage();

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
                'assets/images/signup_top.png',
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
                        'SIGNUP',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10,),

                      SvgPicture.asset(
                        'assets/icons/signup.svg',
                        width: 290,
                        height: 290,
                      ),

                      const SizedBox(height: 20,),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 40,),
                        padding: const EdgeInsets.symmetric(horizontal: 16,),
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
                      const SizedBox(height: 12,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 40,),
                        padding: const EdgeInsets.symmetric(horizontal: 16,),
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
                      const SizedBox(height: 12,),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple),
                              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'SIGNUP',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "already have an Account ?",
                            style: TextStyle(
                              color: Colors.purple[500],
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[800],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              indent: 100,
                              endIndent: 7,
                              thickness: 0.6,
                              color: Colors.purple[800],
                            ),
                          ),
                          Text(
                          'OR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple[800],
                          ),
                          ),
                          Expanded(
                            child: Divider(
                              indent: 7,
                              endIndent: 100,
                              thickness: 0.6,
                              color: Colors.purple[800],
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple[50],
                                  border: Border.all(width: 1, color: Colors.purple.shade200),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/facebook.svg',
                                  height: 18,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple[50],
                                  border: Border.all(width: 1, color: Colors.purple.shade200),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/twitter.svg',
                                  height: 18,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15,),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.purple[50],
                                  border: Border.all(width: 1, color: Colors.purple.shade200),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/google-plus.svg',
                                  height: 18,
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
            )],
        ),
      ),
    );
  }
}
