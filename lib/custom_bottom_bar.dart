import 'package:flutter/material.dart';
import 'dart:math';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      color: Colors.black,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              // transformAlignment: Alignment.topLeft,
              // transform: Matrix4.skewY(0.2),
              height: 80,
              decoration: BoxDecoration(color: Colors.amber),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.amber,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.print,
                color: Colors.amber,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.amber),
              child: IconButton(
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );

    // BottomNavigationBar(
    //   fixedColor: Colors.yellow,
    //   unselectedItemColor: Colors.white,
    //    shape: CircularNotchedRectangle(),

    //   backgroundColor: Colors.black,
    //   items: const <BottomNavigationBarItem>[
    //     BottomNavigationBarItem(
    //       activeIcon: Align(alignment: Alignment.center),
    //       backgroundColor: Colors.amber,
    //       icon: Icon(
    //         Icons.home,
    //         color: Colors.amber,
    //       ),
    //       label: 'Home',
    //     ),
    //     BottomNavigationBarItem(
    //       activeIcon: Align(alignment: Alignment.center),
    //       icon: Icon(
    //         Icons.business,
    //         color: Colors.amber,
    //       ),
    //       label: 'Business',
    //     ),
    //     BottomNavigationBarItem(
    //       activeIcon: Align(alignment: Alignment.center),
    //       backgroundColor: Colors.amber,
    //       icon: Icon(
    //         Icons.school,
    //         color: Colors.amber,
    //       ),
    //       label: 'School',
    //     ),
    //   ],
    //   currentIndex: _selectedIndex,
    //   // selectedItemColor: Colors.amber[800],
    //   onTap: _onItemTapped,
    // );
  }
}
