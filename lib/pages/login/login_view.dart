import 'package:flutter/material.dart';
import '../../GradientText.dart';

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
                        style: Theme.of(context).textTheme.headlineSmall,
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
                      child: const Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Email hoặc số điện thoại",
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
                      child: const Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Mật khẩu", border: InputBorder.none),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                            height: 30,
                            width: 20,
                            child: Checkbox(
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
                        const Text("Duy trì đăng nhập"),
                        const SizedBox(
                          width: 108,
                        ),
                        Text(
                          "Quên mật khẩu?",
                          style: Theme.of(context).textTheme.labelLarge,
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
                          style: Theme.of(context).textTheme.labelLarge,
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
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Bạn chưa có tài khoản?"),
                        const SizedBox(width: 5),
                        Text(
                          "Đăng ký",
                          style: Theme.of(context).textTheme.labelLarge,
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
