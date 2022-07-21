import 'package:flutter/material.dart';


class button {
  Widget materialbuttons(name,rout){
    return  Container(
      height: 49,
      width: 260,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60)),
        color: Color.fromRGBO(111, 192, 91, 1),
        child: Text(
         name,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        onPressed: rout,
      ),
    );
  }
  Widget newbutton(name,route){
    return  Container(
      height: 49,
      width: 260,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60)),
        color: Colors.black,
        child: Text(
          name,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        onPressed: route,
      ),
    );
  }
  Widget smallbutton(name,route){
    return  Container(
      height: 24,
      width: 100,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60)),
        color: Color.fromRGBO(111, 192, 91, 1),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        onPressed: route,
      ),
    );
  }
  Widget screensbutton(name,route){
    return
      Container(
      height: 35,
      width: 130,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60)),
        color: Color.fromRGBO(111, 192, 91, 1),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        onPressed: route,
      ),
    );
  }
}