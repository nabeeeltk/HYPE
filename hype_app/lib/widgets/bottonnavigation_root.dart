
import 'package:flutter/material.dart';
import 'package:hype_app/view/home/home_screen.dart';

class RoutPage extends StatefulWidget {
  @override
  _RoutPageState createState() => _RoutPageState();
}

class _RoutPageState extends State<RoutPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
   const  HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container()
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
    
       backgroundColor: Colors.blue, 
        selectedItemColor: Colors.black,
   
  
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,size: 30,),
            label: 'First Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,color: Colors.black,size: 30,),
            label: 'Second Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,size: 30,),
            label: 'Third Page',
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.notification_add,color: Colors.black,size: 30,),
            label: 'Third Page',
          ),
          
        ],
      ),
    );
  }
}