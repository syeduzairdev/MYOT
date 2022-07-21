import 'package:flutter/material.dart';
import 'package:myot_app/make_my_own_trip/review_location.dart';
import 'package:myot_app/widgets/button.dart';

class payment_option extends StatefulWidget {
  const payment_option({Key? key}) : super(key: key);

  @override
  _payment_optionState createState() => _payment_optionState();
}

class _payment_optionState extends State<payment_option> {
  @override
  Widget build(BuildContext context) {
    int _value = 1;
    int _n = 0;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Options',
                style: TextStyle(
                    color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                'Please rate your experience.This would help us\nContinually improve our services.',

                style: TextStyle(
                    color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SELECT PAYMENT METHOD',

                    style: TextStyle(
                        color: Color.fromRGBO(111, 192, 91, 1), fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'RS:42,500',

                    style: TextStyle(
                        color: Color.fromRGBO(111, 192, 91, 1), fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              for (int i = 1; i <= 4; i++)
                Column(
                  children: [
                    ListTile(


                      dense: true,
                      contentPadding: EdgeInsets.only(
                          left: 0.0, right: 0.0, bottom: 0.0),
                      title: Text(
                        'Easypaisa $i',
                      ),
                      leading: Radio(
                        value: i,
                        groupValue: _value,
                        activeColor: Color.fromRGBO(111, 192, 91, 1),
                        onChanged: (int? value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                    Divider()
                  ],
                ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 45,
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

                        suffixStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText:'Card Holder',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
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
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 45,
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

                        suffixStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText:'Card Number',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(10),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width:170,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                            suffixStyle: TextStyle(color: Colors.black),
                            hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                            // suffixIcon: Icon(
                            //   Icons.check,
                            //   color: Color.fromRGBO(252, 186, 24, 1),
                            // ),
                            prefixStyle: TextStyle(color: Colors.black),
                            hintText:'Expiry Date',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(242, 242, 242, 1),
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

                  Center(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(10),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                         width:170,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                            suffixStyle: TextStyle(color: Colors.black),
                            hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                            // suffixIcon: Icon(
                            //   Icons.check,
                            //   color: Color.fromRGBO(252, 186, 24, 1),
                            // ),
                            prefixStyle: TextStyle(color: Colors.black),
                            hintText:'Cvvc',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(242, 242, 242, 1),
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
                ],
              ),
              Divider(),
              Center(
                child: Container(
                  height: 45,
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

                        suffixStyle: TextStyle(color: Colors.black),
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),
                        // suffixIcon: Icon(
                        //   Icons.check,
                        //   color: Color.fromRGBO(252, 186, 24, 1),
                        // ),
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText:'Promo Code',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1),
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
              SizedBox(
                height: 25,
              ),
              Center(
                child: button().materialbuttons('Pay now',(){

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (BuildContext context) =>
                  //           review_location()),
                  // );

                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
