import 'package:flutter/material.dart';
import 'package:snap_chat/utils/constants/color_constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Log In",
              style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 30,
              ),),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "USERNAME OR EMAIL",
                  hintStyle: TextStyle(color: Colors.blue),
                ),
                 validator: (value) {
                            if(value==null||value.isEmpty){
                              return " enter a email address";
                            }
                            else if(value.contains("@")){
                              return null;
                            }else{
                              return "enter a valid email address";
                            }
                          },
              ),
              SizedBox(height: 20,),
             TextFormField(
              decoration: InputDecoration(
                hintText: "PASSWORD",
                hintStyle: TextStyle(color: Colors.blue),
                suffixIcon: Icon(Icons.visibility_off_outlined)
              ),
               validator: (value) {
                           if(value!=null && value.length>=6){
                            return null;
                           }else{
                            return " enter password with min 6 characters";
                           }
                         },
             ),
             SizedBox(
             child: Text("Forgot Your Password?",
             style: TextStyle(
              color: Colors.blue,
             ),),),

             SizedBox(height: 50,),
             SizedBox(height: 50, width: 210,
             child: ElevatedButton(onPressed: (){}, 
             child: Text("Log In",
             style: TextStyle(
              fontSize: 20,
              color: ColorConstants.mainWhite,
             ),
             ),
             style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
             ),
             ),

            ],
          ),
        ),
      ),
    );
  }
}