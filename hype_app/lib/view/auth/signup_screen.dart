import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype_app/view/auth/login_screen.dart';



class UserSignUp extends StatelessWidget {
  const UserSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 20,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                  )
                ],
              ),
            ),
            const Center(
                child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
            const Text(
              "Please sign up to get started",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius:const  BorderRadius.only(topLeft: Radius.circular(30),
                topRight: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                  const   SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: "User Name",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: "Email",
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: "Confirm Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to( UserLogin());
                        },
                        color: Colors.green,
                        height: 50,
                        minWidth: double.infinity,
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Or",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                      const   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [

                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("images/facebookicon.png"),
                        ),
                        SizedBox(width: 10,),
                         CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("images/googleicon - Copy.png"),
                        ),
                        
                        SizedBox(width: 10,),
                         CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("images/twitericon.png"),
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
