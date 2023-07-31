import 'package:flutter/material.dart';

class SocialMediaPost extends StatelessWidget {
  const SocialMediaPost({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
            margin: const EdgeInsets.all(10),
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 3,
                ),
              ],
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/roomimage.jpeg"),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "@user name",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    MaterialButton(
                      height: 30,
                      color: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        "FOLLOW +",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/roomimage.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    TextButton.icon(
                        label: const Text("Like"),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.red,
                        )),
                    TextButton.icon(
                        label: const Text("comments"),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment,
                          size: 20,
                          color: Colors.black,
                        )),
                    TextButton.icon(
                        label: const Text("Shope"),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag,
                          size: 20,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              )
            ]));
      },
    );
  }
}
