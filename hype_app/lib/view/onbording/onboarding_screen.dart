import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype_app/view/auth/login_screen.dart';

class OnboardingScreenFirst extends StatelessWidget {
  const OnboardingScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  SizedBox(height: 100,),
             Center(
               child: Container(
                height: 300,
                width: double.infinity,
                decoration:const BoxDecoration(
                  
                  image: DecorationImage(image: AssetImage("images/pngtree-d-screen-showing-a-green-phone-and-green-and-white-robots-picture-image_2711903-removebg-preview.png",
                  ),)
                ),
               ),
             ),
           const   SizedBox(height: 20,),
          const  Padding(
             padding: EdgeInsets.all(8.0),
             child:   Text("Connect and Share with the World",style: TextStyle(color: Colors.white,fontSize:20 ),),
           ),
              const  Padding(
             padding: EdgeInsets.all(8.0),
             child:   Text("Join a vibrant community of creators and friends. Share your moments, passions,\nand experiences.",style: TextStyle(color: Colors.white,fontSize:15 ),),
           ),
          const  SizedBox(height: 20,),
           Center(
             child: MaterialButton(
              color: Colors.green,
              
              onPressed: (){
                Get.to( const UserLogin());
              },
             child: const  Text("Get Started"),),
           )
          ],
        ),
      ),
    );
  }
}