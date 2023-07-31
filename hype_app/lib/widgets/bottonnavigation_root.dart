
import 'package:flutter/material.dart';
import 'package:hype_app/view/Branding_and%20Deals/branding_and_deals.dart';
import 'package:hype_app/view/ProfilePage/profile_page.dart';
import 'package:hype_app/view/home/home_screen.dart';

class RoutPage extends StatefulWidget {
  const RoutPage({super.key});

  @override
  _RoutPageState createState() => _RoutPageState();
}

class _RoutPageState extends State<RoutPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
   const  HomeScreen(),
    Container(),
   const  ProfilePage(),
    BrandingDealsPage(),
    Container(),
   
    
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
            backgroundColor: Colors.black,
            icon: Icon(Icons.home,color: Colors.white,size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
            icon: Icon(Icons.add,color: Colors.white,size: 30,),
            label: 'Add post ',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
            icon: Icon(Icons.person,color: Colors.white,size: 30,),
            label: 'Profile',
          ),
             BottomNavigationBarItem(
                backgroundColor: Colors.black,
            icon: Icon(Icons.branding_watermark,color: Colors.white,size: 30,),
            label: 'Brand And Dean',
          ),
           BottomNavigationBarItem(
                backgroundColor: Colors.black,
            icon: Icon(Icons.notification_add,color: Colors.white,size: 30,),
            label: 'Notification',
          ),
          
        ],
      ),
    );
  }
}