

import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';
import 'package:snap_chat/view/dummy_db.dart';
import 'package:snap_chat/view/home_screen/widgets/chats_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainWhite,
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
          "Chat",
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
            child: Icon(Icons.message_outlined, color: ColorConstants.mainBlack),
          ),
          SizedBox(width: 16), 
        ],
      ),
      body: 
      ListView.separated(itemBuilder: (context, index) => ChatsTile(
        imageUrl: DummyDb.profileList[index]["url"],
        userName:  DummyDb.profileList[index]["Name"],
        snapDe:  DummyDb.profileList[index]["snap"],
      ), separatorBuilder: (context, index) =>Divider(height: 0,), itemCount: DummyDb.profileList.length)
    );
  }
}

