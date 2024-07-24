import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';


class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(image: 
          AssetImage(ImageConstants.Pic1
          ),
          fit: BoxFit.cover
        ),
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
     
      children: [
        SizedBox(height: 40,),
        Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(ImageConstants.Dp),
          ),
          SizedBox(width: 5,),
          CircleAvatar(
            backgroundColor: ColorConstants.mainBlack.withOpacity(0.5),
            child: Icon(Icons.search,
            color: ColorConstants.mainWhite,),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: ColorConstants.mainBlack.withOpacity(0.5),
            child: Icon(Icons.person_add,
            color: ColorConstants.mainWhite,),
          ),
          SizedBox(width: 5,),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          //   width: 40,
          //   height: 100,
          //   decoration: BoxDecoration(
          //     color: ColorConstants.mainWhite,
          //     shape: BoxShape.rectangle,
          //     borderRadius: BorderRadius.circular(12)
          //   ),
          // ),
          CircleAvatar(
          backgroundColor: ColorConstants.mainBlack.withOpacity(0.5),
            child: Icon(Icons.crop_rotate,
            color: ColorConstants.mainWhite,),
          
          ),
          
        ],
      ),
      Spacer(),
      Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstants.Picem,
                  ),
                
                SizedBox(width: 20,),
                Container(
                   width: 80,
                  height: 80, 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorConstants.mainWhite, 
                      width: 5, 
                    ),
                  )
                ),
                
                SizedBox(width: 20,),
              Image.asset(ImageConstants.Smileem)
                
                  // Image.asset(ImageConstants.Picem)
                ],
              ),
            ],
          ),
        ),
      )
      ],
      
    ),
    
    
    
      ),
      
      
      
    );
  }
}