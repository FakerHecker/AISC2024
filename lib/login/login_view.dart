import 'package:flutter/material.dart';
import '../GradientText.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login-background.png"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 250,),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            alignment: Alignment(0, -0.9)
                          )
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        alignment: const Alignment(-0.9, 0),
                        child: const GradientText(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Bricolage Grotesque'
                          ),
                          gradient: LinearGradient(
                              colors: [
                            Color(0xFF059710),
                            Color(0xB304CB01),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
