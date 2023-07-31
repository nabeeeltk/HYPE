import 'package:flutter/material.dart';

import '../../widgets/social_media_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.grey.shade900,
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ))),
                const Text(
                  "HYPE",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                CircleAvatar(
                    backgroundColor: Colors.grey.shade900,
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ))),
              ],
            ),
          ),
          const Expanded(child: SocialMediaPost()),
        ],
      ),
    );
  }
}
