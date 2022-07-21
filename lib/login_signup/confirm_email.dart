import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class confirm_email extends StatelessWidget {
  const confirm_email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/mail.png'),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text("Check your mail",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
              child:
                  Text("We have a Password Recover instructions to you email.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color.fromRGBO(156, 163, 175, 1),
                      ))),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text("Skip, I'll confirm later",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[

              TextSpan(
                text: "Did not receive the email? Check your spam\n",
                style: TextStyle(color: Colors.black, fontSize: 12),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //       builder: (context) =>
                    //           User_Aggrement_Screen()),
                    // );
                  },
              ),
              TextSpan(

                  text: "filter or",
                  style: TextStyle(color: Colors.black, fontSize: 12,)),
              TextSpan(
                text: " try another email address",
                style: TextStyle(color: Color.fromRGBO(147, 200, 61, 1), fontSize: 12),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //       builder: (context) =>
                    //           Privacy_policy()),
                    // );
                  },
              ),
            ])),
          )
        ],
      ),
    );
  }
}
