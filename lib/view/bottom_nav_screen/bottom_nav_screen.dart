import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/view/camera_screen/camera_screen.dart';
import 'package:snap_chat/view/chat_screen/chat_screen.dart';
import 'package:snap_chat/view/contact_screen/contact_screen.dart';
import 'package:snap_chat/view/location_screen/location_screen.dart';
import 'package:snap_chat/view/more_screen/more_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex=0;
  List <Widget> myScreen=[
    LocationScreen(),
    ChatScreen(),
    CameraScreen(),
    ContactScreen(),
    MoreScreen()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreen[selectedIndex],
      backgroundColor: ColorConstants.mainBlack,
      bottomNavigationBar:
       BottomNavigationBar(
        
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        currentIndex: selectedIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.location_on),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.contact_emergency_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.pause_circle_outline),label: ""),
       ],
       onTap: (value) {
         selectedIndex=value;
         setState(() {
           
         });
       },
       ),
    );
  }
}