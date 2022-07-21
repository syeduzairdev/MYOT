import 'package:flutter/material.dart';
import 'package:myot_app/login_signup/forgot_password.dart';
import 'package:myot_app/login_signup/select_your_interest_screen.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class login_screen extends StatelessWidget {
  const login_screen({Key? key}) : super(key: key);

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


                apptheme().textfield(context,'Eg namaemail@emailkamu.com','Email address'),
                SizedBox(height: 15,),

                apptheme().textfield(context,'Password','Password'),
                SizedBox(height: 15,),

                button().materialbuttons('Login',(){

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              select_your_interest_screen()),
                    );

                }),
                SizedBox(height:  5,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              forgot_password()),
                    );
                  },
                    child:
                    Text("Forget Password?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color.fromRGBO(111, 192, 91, 1)),)),

                SizedBox(height: 15,),


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
