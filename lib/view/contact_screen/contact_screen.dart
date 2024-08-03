import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';
import 'package:snap_chat/view/dummy_db.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      appBar: AppBar(
         leadingWidth: 100,
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
            Container(
              child: CircleAvatar(),
            )

            // Text("For You",
            // style: TextStyle(
            //     color: ColorConstants.mainBlack,
            //     fontSize: 15,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            //  Expanded(
            //              child: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: GridView.builder(
            //     itemCount: DummyDb.statusView.length,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       childAspectRatio: 1/1.7,
            //       mainAxisSpacing: 10,
            //       crossAxisSpacing: 10,
            //     ),
            //     itemBuilder: (context, index) {
            //       return ClipRRect(
            //         borderRadius: BorderRadius.circular(4),
            //         child: Stack(
            //           children: [
            //             Container(
            //               height: 300,
            //               decoration: BoxDecoration(
            //                 color: Colors.grey,
            //                 image: DecorationImage(
            //                   fit: BoxFit.cover,
            //                   image: NetworkImage(DummyDb.statusView[index]),
            //                 ),
            //               ),
            //             ),
            //             // Positioned(
            //             //   bottom: 0,
            //             //   left: 0,
            //             //   child: Text("data"))
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            //              ),
            //            ),
            // Spacer(),
            // Container(
            //   height: 50,
            //   width: 30,
            //   decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //           color: ColorConstants.mainBlack, 
            //         border: Border.all(
                    
            //           width: 5, ),
            //   ),
            // )
          ],
          
        ),
        
      ),
      
      
    );
  }
}