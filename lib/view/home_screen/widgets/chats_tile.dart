import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
// import 'package:snap_chat/view/dummy_db.dart';

class ChatsTile extends StatelessWidget {
  const ChatsTile({super.key,  this.imageUrl, required this.userName, required this.snapDe});
 final String? imageUrl;
 final String userName;
 final String snapDe;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(
          children: [CircleAvatar(
         backgroundImage: AssetImage(imageUrl!),
            radius: 30,
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Text(userName,
              style: TextStyle(
                color: ColorConstants.mainBlack,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
              Row(
                children: [
                  Text(snapDe,
                  style: TextStyle(
                    color: ColorConstants.mainBlack,
                    
                    fontSize: 16,),
                    
                    
                    ),
                    // SizedBox(width: 2,),
                    // Text("tym")
                ],
              ),
               
                
               
            ],
            
          ),
          
          Spacer(),
          Column(
            children: [
              Icon(Icons.messenger)
            ],
          )
          ],
        ),
      ),
    );
  }
}