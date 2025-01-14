import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:modern_profile/components/profile_img.dart';
import 'package:modern_profile/constant/constant.dart';

import '../../components/profile_menu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _seletedItem = 0;

  void _navigationBottomNavBar(int index){
    setState(() {
      _seletedItem = index;
      print(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F9),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: iconPrimaryColor,
        ),
        title: Center(
            child: Text(
          'Edit Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.exit_to_app,
            size: 20,
            color: iconPrimaryColor,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedItem,
        onTap: _navigationBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
              color: iconPrimaryColor,
            ),
            label: "home",
          ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 30,
              color: iconPrimaryColor,
            ),
            label: "favourtie",
          ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: iconPrimaryColor,
            ),
            label: "settings",
          ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
              color: iconPrimaryColor,
            ),
            label: "Edit pofile",
          ),
        
        ],
      ),
    );
  }
}
