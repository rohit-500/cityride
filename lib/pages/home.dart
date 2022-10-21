import 'package:cityride/posts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 228, 228),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 248, 245, 245),
        title: const Text(
          'citynect',
          style: TextStyle(color: Colors.black, fontSize: 26, letterSpacing: 1),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Color.fromARGB(255, 135, 132, 132),
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.messenger_outlined,
                  color: Color.fromARGB(255, 135, 132, 132),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Posts(),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: new Icon(Icons.add),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: [
                _currentIndex == 0
                    ? Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                        width: 50,
                        height: 5,
                        color: Colors.blue,
                      )
                    : SizedBox(),
                Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.black54,
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 38, 0),
              child: Column(
                children: [
                  _currentIndex == 1
                      ? Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                          width: 50,
                          height: 5,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  Icon(
                    CupertinoIcons.compass,
                    size: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
              child: Column(
                children: [
                  _currentIndex == 2
                      ? Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                          width: 50,
                          height: 5,
                          color: Colors.blue,
                        )
                      : SizedBox(),
                  Icon(
                    CupertinoIcons.calendar,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                _currentIndex == 3
                    ? Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                        width: 50,
                        height: 5,
                        color: Colors.blue,
                      )
                    : SizedBox(),
                Icon(
                  CupertinoIcons.profile_circled,
                  size: 30,
                  color: Colors.black,
                ),
              ],
            ),
            label: '',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
