import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
           Container(
            height: 150,
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "User Name",
                    fillColor: Colors.blueGrey,
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "User Name",
                    fillColor: Colors.blueGrey,
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () {},
                color: Colors.green,
                child: const Text(
                  "LOG IN",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          const   Text("OR",style: TextStyle(fontSize: 20,color: Colors.white),),
             const SizedBox(
              height: 30,
            ),

         const    Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/facebookicon.png"),
                ),
                 CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/googleicon - Copy.png"),
                ),
                 CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/twitericon.png"),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
