import 'package:flutter/cupertino.dart';

class cartprovider with ChangeNotifier{
   bool active = false;
void actives( ){
   active = true;
   notifyListeners();
}

   void activefalse( ){
      active = false;
      notifyListeners();
   }



}