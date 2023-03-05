import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('as'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/C4E03AQHNmjH-F13J2w/profile-displayphoto-shrink_800_800/0/1659665584656?e=1683763200&v=beta&t=oYvjnQgmoCc4KfgWGBWKTFw2X4FTe0n7ne4tAevOrIU'),
        ),
      ),
    );
  }
}
