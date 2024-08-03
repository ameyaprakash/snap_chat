import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 201, 201),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
           
            children: [
              Icon(Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,)
            ],
            
          ),
        ),
        actions: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings,
            color: ColorConstants.mainBlack.withOpacity(0.5),),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstants.Ppimage)),
              ),
              
            ),
            
          ),
          
          Text("Jenny",
          style: TextStyle(
            color: ColorConstants.mainBlack,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          SizedBox(height: 2,),
          Row(
            children: [
              Text("jenny98.12",
              style: TextStyle(
            color: ColorConstants.mainBlack,
            
            fontSize: 15,
              ),
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 2,
              ),
              SizedBox(width: 10,),
              Text("45,325",
              style: TextStyle(
            color: ColorConstants.mainBlack,
            
            fontSize: 15,),
              ),
               SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 2,),
                SizedBox(width: 10,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                   width: 65,
                  height: 30, 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 87, 8, 101),
                    
                    
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.loop,
                      size: 20,
                      color: ColorConstants.mainWhite,),
                      SizedBox(width: 2,),
                      Icon(Icons.arrow_forward_ios,
                      size: 20,
                      color: ColorConstants.mainWhite,)
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 60,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.mainWhite,
            ),
            child: Row(
              children: [
                Icon(Icons.person_add_alt_1_sharp)
              ],
            ),
            
          ),
        ],
        
      ),

    );
  }
}