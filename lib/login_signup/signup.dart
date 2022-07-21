import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class signup_screen extends StatelessWidget {
  const signup_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.only(left:15,right:15),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              SizedBox(height: 15,),
             apptheme().textfield(context,'Full Name','Full Name'),
             SizedBox(height: 15,),
             apptheme().textfield(context,'Eg namaemail@emailkamu.com','Email address'),
             SizedBox(height: 15,),
             apptheme().textfield(context,'Phone no','Phone no'),
             SizedBox(height: 15,),
             apptheme().textfield(context,'Password','Password'),
             SizedBox(height: 15,),
             apptheme().textfield(context,'Reffer Code','Reffer Code'),
             SizedBox(height: 15,),
             button().materialbuttons('Registration',(){}),
             SizedBox(height: 15,),
             Text("Signup with",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
             SizedBox(height:  5,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Image.asset('images/facebook_icon.png'),
                 SizedBox(width: 5,),
                 Image.asset('images/goggle_icon.png'),

               ],
             )



           ],
         ),
       ),
     )
    );
  }
}
