import 'package:flutter/material.dart';
import 'package:myot_app/widgets/app_color.dart';



class modal   {
  reject_order(BuildContext context,heading,first,first1,second,second2,third,third1,fourth,fourth1,five,five1) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentPadding: EdgeInsets.only(top: 0.0, bottom: 10),
            backgroundColor: Color.fromRGBO(242, 242, 242, 1),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color:apptheme().appthemecoloue,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  height: 50,
                  child: Center(
                    child: Text(
                      heading,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
             Container(
               padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(first,  style: TextStyle(
                           color: Colors.black, fontWeight: FontWeight.w400,fontSize: 14),),
                       Text(first1,  style: TextStyle(
                           color: Colors.black,fontSize: 14  ),),
                     ],
                   ),
                   SizedBox(height:10,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(second,  style: TextStyle(
                           color: Colors.black, fontWeight: FontWeight.w400,fontSize: 14),),
                       Text(second2,  style: TextStyle(
                           color: Colors.black, fontSize: 14 ),),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(third,  style: TextStyle(
                           color: Colors.black, fontWeight: FontWeight.w400,fontSize: 14),),
                       Text(third1,  style: TextStyle(
                           color: Colors.black,fontSize: 14  ),),
                     ],
                   ),
                   SizedBox(height:10,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(fourth,  style: TextStyle(
                           color: Colors.black, fontWeight: FontWeight.w400,fontSize: 14),),
                       Text(fourth1,  style: TextStyle(
                           color: Colors.black, fontSize: 14 ),),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(five,  style: TextStyle(
                           color: Colors.black, fontWeight: FontWeight.w400,fontSize: 14),),
                       Text(five1,  style: TextStyle(
                           color: Colors.black, fontSize: 14 ),),
                     ],
                   )
                 ],
               ),
             )

              ],
            ),
          );
        });}}
