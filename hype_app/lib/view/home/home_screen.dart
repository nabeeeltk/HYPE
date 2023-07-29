import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search,color: Colors.black,),
                          fillColor: Colors.black12,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),
                    ),
                  ),
                  
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.details))
              ],
            ),
             SizedBox(height: 20,),

           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(children: [
                CircleAvatar(
            
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("@user nmae"),
                )
              ],),
            ),
            
          ],
        ),
      ),
    );
  }
}
