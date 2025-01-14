import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFA1C6EA),
            radius: 60,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("images/profile.jpeg"),
            ),
          ),
          CircleAvatar(
            backgroundColor: bgPrimaryColor,
            radius: 22,
            child: CircleAvatar(
              backgroundColor: Color(0xFFA1C6EA),
              child: Icon(
                Icons.edit,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
