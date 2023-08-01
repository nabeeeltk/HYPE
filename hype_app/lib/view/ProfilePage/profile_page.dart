import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype_app/widgets/profile_tab_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    color: Colors.grey,
                    child: const Center(
                      child: Text('Banner Image Here'),
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 5),
                    child: Text(
                      'User name',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Followers',
                              style: TextStyle(fontSize: 18,color: Colors.white),
                            ),
                            Text(
                              '100K',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: <Widget>[
                          Text(
                            'Posts',
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                          Text(
                            '500',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child:const  Text("Follow"),
                    ),
                  ),
              
                ],
              ),
            const   Positioned(
                top: 40.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 60,
              
                  ),
                ),
              ),
              
             
            ],
          ),
              profilTabBarView()
          
        ],
      ),
    );
  }
}
