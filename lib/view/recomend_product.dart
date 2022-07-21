import 'package:flutter/material.dart';

 class product{
   Widget Recommentproduct(images,name,location,price){
     return   Container(
       margin: EdgeInsets.all(5),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(15),
       ),
       height: 165,
       width: 135,
       child: Column(
         children: [
           SizedBox(
             height: 5,
           ),
           Center(
               child: Image.asset(
                 images,
                 height: 100,
                 width: 110,

               )),
           SizedBox(
             height: 5,
           ),
           Center(
               child: Text(
                 name,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     color: Colors.black,
                     fontSize: 12,
                     fontWeight: FontWeight.w600),
               )),
           SizedBox(
             height: 5,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                 children: [
                   Icon(
                     Icons.add_location_rounded,
                     color: Colors.red,
                   ),
                   Text(
                     location,
                     style: TextStyle(
                         color: Color.fromRGBO(104, 113, 122, 1),
                         fontSize: 12),
                   ),
                 ],
               ),
               Center(
                 child: Container(
                     width: 60,
                     height: 30,
                     decoration: BoxDecoration(
                       color: Color.fromRGBO(0, 0, 0, 0.08),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Center(child: Text( price))),
               ),
             ],
           )
         ],
       ),
     );

   }
   Widget honeymoonpackage(BuildContext context,image,name,description,price,star){
     return  Container(
       margin: EdgeInsets.all(10),
       child: Container(
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15),
           ),
           height: 90,

           width: MediaQuery.of(context).size.width,
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 child: Image.asset(
                   image,
                   height: 130,
                   fit: BoxFit.cover,
                 ),
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     name,
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,
                         fontWeight: FontWeight.w500),
                   ),
                   Text(
                     description,

                     style: TextStyle(
                         color: Color.fromRGBO(109, 113, 118, 1),
                         fontSize: 10,
                         fontWeight: FontWeight.w500),
                   ),
                   SizedBox(height: 15,),
                   Row(
                     children: [
                       Text(
                         price,
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 15,
                             fontWeight: FontWeight.w700),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [
                           Icon(Icons.star,color: Colors.yellow,),
                           Text(star)
                         ],
                       )
                     ],
                   )
                 ],
               )
             ],
           )),
     );
   }
 }