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
                              "RamandaAA",
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
            Column(
              children: [
                Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 40, right: 40),
                    child: Row(
                      children: [
                        FloatingActionButton.extended(
                          heroTag: 'tombol1',
                          label: const Text('All topics'), // <-- Text
                          backgroundColor: Colors.black,
                          icon: Image.asset('assets/img/ic_fire.png'),
                          onPressed: () {},
                        ),
                        FloatingActionButton.extended(
                          heroTag: 'tombol2',
                          label: const Text('Advance'), // <-- Text
                          backgroundColor: Colors.black,
                          icon: Image.asset('assets/img/ic_advance.png'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        FloatingActionButton.extended(
                          heroTag: 'tombol3',
                          label: const Text('Popular'), // <-- Text
                          backgroundColor: Colors.black,
                          icon: Image.asset('assets/img/ic_popular.png'),
                          onPressed: () {},
                        ),
                        FloatingActionButton.extended(
                          heroTag: 'tombol4',
                          label: const Text('Newest'), // <-- Text
                          backgroundColor: Colors.black,
                          icon: Image.asset('assets/img/ic_newest.png'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                const Course()
              ],
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

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF57B7EA),
      ),
      height: 200,
      width: 200,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'assets/img/ist_course.png',
              width: 100,
            ),
          ),
          const Text(
            "Learn Basic Programming",
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "Start your first programming",
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
