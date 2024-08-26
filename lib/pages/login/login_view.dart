import 'package:flutter/material.dart';
import '../../GradientText.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<StatefulWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/login-background.png"),
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 250,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
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
                              alignment: Alignment(0, -0.9))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: const Alignment(-0.97, 0),
                      child: GradientText(
                        'Đăng nhập',
                        style: GoogleFonts.bricolageGrotesque(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                        gradient: const LinearGradient(colors: [
                          Color(0xFF059710),
                          Color(0xB304CB01),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEBFEED),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Email hoặc số điện thoại",
                                hintStyle: GoogleFonts.bricolageGrotesque(
                                    color: const Color(0xCC005200),
                                    fontWeight: FontWeight.w300),
                                border: InputBorder.none),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEBFEED),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Mật khẩu",
                                hintStyle: GoogleFonts.bricolageGrotesque(
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xCC005200)),
                                border: InputBorder.none),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 30,
                            width: 20,
                            child: Checkbox(
                              activeColor: const Color(0xFF005200),
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Duy trì đăng nhập",
                          style: GoogleFonts.bricolageGrotesque(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          width: 108,
                        ),
                        Text(
                          "Quên mật khẩu?",
                          style: GoogleFonts.bricolageGrotesque(
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF005200)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xCC04CB01),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "Đăng nhập",
                          style: GoogleFonts.bricolageGrotesque(
                              fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/icon-google.png"))),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Đăng nhập với Google",
                              style: GoogleFonts.bricolageGrotesque(
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF005200)),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bạn chưa có tài khoản?",
                          style: GoogleFonts.bricolageGrotesque(
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Đăng ký",
                          style: GoogleFonts.bricolageGrotesque(
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF005200)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
