import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';
import 'package:snap_chat/utils/constants/image_constants.dart';
import 'package:snap_chat/view/login_page/login_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: ColorConstants.mainYellow,
      body: 
       Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
         children: [
           Image.asset(ImageConstants.Logo),
           // Spacer(),
                 
           Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Row(
                        children: [
                          SizedBox(width: 126, height: 36,
                          child: ElevatedButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                          }, child: 
                                            Text("Log in",
                                            style: TextStyle(color: ColorConstants.mainBlack,
                                            fontSize: 20),),
                                            
                                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(ColorConstants.mainWhite),
                                            ),
                          ),
                          
                                              ),
                                              SizedBox(width: 20,),
                                               SizedBox(width: 126, height: 36,
                          child: ElevatedButton(onPressed: (){}, child: 
                                            Text("Sign Up",
                                            style: TextStyle(color: Colors.white,
                                            fontSize: 20),),
                                            
                                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue),
                                            ),
                          ),
                          
                                              ),
                            
                        ],
                      ),
                    ),
         ],
           
       ),
      
      
      
      
      
    );
  }
}