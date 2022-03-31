import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 24, right: 24, top: 50, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Color(0xFF9A9B9C)),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontFamily: 'Poppints',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/img/avatar.png',
                      height: 60,
                      width: 60,
                    )
                  ],
                ),
              ),
              const BlueBox()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 146, 162, 175),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/img/ic_home.png'),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/img/ic_star.png'),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/img/ic_course.png'),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/img/ic_notif.png'),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/img/ic_profile.png'),
              label: 'Chats',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      );
}

class BlueBox extends StatelessWidget {
  const BlueBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Column(children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 24, right: 24),
              child: TextField(
                autofocus: false,
                style: const TextStyle(fontSize: 14, color: Color(0xFFA3A3A3)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Seacrh Your Courses Here',
                  contentPadding: const EdgeInsets.all(10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
      color: const Color(0xFFDCE4EA),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    ));
  }
}
