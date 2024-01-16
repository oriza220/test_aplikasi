import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/laptop_page.dart';
import 'package:test_aplikasi/pages/my_home_page.dart';
import 'package:test_aplikasi/pages/transaction_page.dart';
import 'package:test_aplikasi/pages/user_page.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  int _selectedIndex = 0;
  bool _isInit = true;

  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    LaptopPage(),
    TransactionPage(),
    UserPage(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.lightBlue),
                label: 'Home',
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.laptop_chromebook_outlined,
                    color: Colors.lightBlue),
                label: 'Laptop',
                activeIcon:
                    Icon(Icons.laptop_chromebook_rounded, color: Colors.blue)),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card, color: Colors.lightBlue),
                label: 'Transaction',
                activeIcon: Icon(Icons.credit_score, color: Colors.blue)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, color: Colors.lightBlue),
                label: 'User',
                activeIcon: Icon(Icons.person, color: Colors.blue)),
          ],
          currentIndex: _selectedIndex,
          iconSize: 30,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
