import 'package:belajar_app/menu_utama.dart';
import 'package:belajar_app/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final email = TextEditingController();
  final sandi = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    sandi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Masuk',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF515151)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()),
                            );
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Color(0xFF0098EA),
                              // fontWeight: FontWeight.normal
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nomor Ponesl atau Email',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextField(
                    controller: sandi,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Kata Sandi',
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 36),
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 314, height: 53),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF52C3FF)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ))),
                    onPressed: () {
                      if (email.text == 'ramanda@mail.com' &&
                          sandi.text == '123456') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenuScreen()),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Email atau Kata Sandi SALAH!!"),
                        ));
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 33),
                child: Row(
                  children: [
                    Column(
                      children: const [Text('Lupa kata sandi?')],
                    ),
                    Column(
                      children: [
                        TextButton(
                          onPressed: (() {}),
                          child: const Text(
                            ' Klik disini',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0098EA)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      );
}
