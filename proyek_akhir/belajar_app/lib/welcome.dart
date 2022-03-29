import 'package:belajar_app/onboardingone.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 80.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/welcome.png',
                    width: 280,
                    height: 380,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Text(
                    'Find Your Favourite Lesson',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poopins',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: const [
                  Divider(
                    height: 5,
                    thickness: 4,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFF52C3FF),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Anyone can join the millions of members in \nour company community to learn cutting edge skill',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poopins',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF9A9B9C)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 120),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: 314, height: 53),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF52C3FF)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnboardingOne()),
                        );
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
