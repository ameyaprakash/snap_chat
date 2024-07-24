import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      appBar: AppBar(
         leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 10), 
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              backgroundImage: AssetImage(ImageConstants.Dp),
             
            ),
            
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.search, color: ColorConstants.mainBlack),
            ),
          ],
        ),
        title: Text(
          "Stories",
          style: TextStyle(
            color: ColorConstants.mainBlack,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: Icon(Icons.person_add, color: ColorConstants.mainBlack),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: Icon(Icons.more_horiz, color: ColorConstants.mainBlack),
          ),
          SizedBox(width: 16), 
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Friends",
            style: TextStyle(
              color: ColorConstants.mainBlack,
             fontWeight: FontWeight.bold,
             fontSize: 15
            ),),
            // Spacer(),
            // Container(
            //   height: 3,
            //   width: 6,
            //   decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         border: Border.all(
            //           color: ColorConstants.mainBlack, 
            //           width: 5, ),
            //   ),
            // )
          ],
        ),
        
      ),
      
    );
  }
}