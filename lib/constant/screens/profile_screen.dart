import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:modern_profile/components/profile_img.dart';
import 'package:modern_profile/constant/constant.dart';
import 'package:modern_profile/constant/screens/editprofile_screen.dart';

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

  final list<widget> _pages = [
    const Text('Home'),
    const Text('Settings'),
    const Text('Favorite'),
    const EditProfileScreen(),
  ];


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
      body: const EditProfileScreen(),
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

