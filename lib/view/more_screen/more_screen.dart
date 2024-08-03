

import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';
import 'package:snap_chat/view/dummy_db.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
         leadingWidth: 100,
        backgroundColor: ColorConstants.mainBlack,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.Dp),
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.search),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Icon(Icons.search, color: ColorConstants.mainBlack),
            ),
          ],
        ),
        title: Text(
          "Discover",
          style: TextStyle(
            color: ColorConstants.mainWhite,
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
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "For You",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GridView.builder(
                itemCount: DummyDb.statusView.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.7,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(DummyDb.statusView[index]),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   bottom: 0,
                        //   left: 0,
                        //   child: Text("data"))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
