import 'package:flutter/material.dart';
import 'package:myot_app/login_signup/confirm_email.dart';
import 'package:myot_app/widgets/app_color.dart';
import 'package:myot_app/widgets/button.dart';

class forgot_password extends StatelessWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 250,
                  child: Image.asset(
                    'images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Text("Reset Password",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Colors.black,
                    )),
              ),
              SizedBox(height: 15,),
              Center(
                  child: Text("Enter the accociation with your account and We’ll send an email with instructions to reset your Password.",
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color.fromRGBO(156, 163, 175, 1),
                      ))),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(10),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        suffixStyle: TextStyle(color: Colors.grey),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.grey),
                        hintText:  'Eg namaemail@emailkamu.com',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color:  Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color:  Color.fromRGBO(242, 242, 242, 1),
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              button().materialbuttons('Next',(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          confirm_email()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
