// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:session_6/screens/splash/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatelessWidget {
  SharedPreferences? prefs;
  logOut()async{
    prefs = await SharedPreferences.getInstance();
    prefs!.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
      color: Colors.teal,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ListTile(
              title: Text("Nader Mohamed",style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold
              )),
              subtitle: Text("Nader Mohamed send message .......",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold
              )),
              leading: Image.asset(
                "assets/icons/google.png",
                width: 35,
                height: 35,
              ),
              trailing: Text("2.30 PM",style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold
              )),
              onTap: (){
                print("Nader mohamed");
              },
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home",
                style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),


          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home",
                style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),


          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home",
                style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),


          ListTile(
            onTap: (){
              logOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context)=> SplashScreen()));
            },
            leading: Icon(Icons.logout),
            title: Text("Log Out",
                style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}


