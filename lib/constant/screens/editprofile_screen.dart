import 'package:flutter/material.dart';
import 'package:modern_profile/components/profile_img.dart';
import 'package:modern_profile/components/profile_menu.dart';
import 'package:modern_profile/constant/constant.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const ProfileImage(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'RESISTANCE_UNIT',
            style: textTitle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'unitresistance@gmail.com',
            style: textSubTitle,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xFFA1C6EA), borderRadius: BorderRadius.circular(25.0)),
            child: Center(
              child: Text(
                'Edit Profile',
                style: textBtn,
              ),
            ),
          ),
    
          //Profile Menu
          const SizedBox(
            height: 20,
          ),
          const ProfileMenu(
            title: 'Setting',
            icons: Icons.settings,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'Billing Detail',
            icons: Icons.wallet,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'User Management',
            icons: Icons.person,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'Favorite',
            icons: Icons.favorite,
          ),
          const SizedBox(
            height: 50,
          ),
          const ProfileMenu(
            title: 'Logout',
            icons: Icons.logout,
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
