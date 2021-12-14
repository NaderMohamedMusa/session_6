// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:session_6/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Course Flutter",
          style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                context.locale.languageCode == "ar"
                    ? context.locale = Locale("en","US")
                    : context.locale = Locale("ar","EG");
              },
              child: Row(
                children: [
                  Text(context.locale.languageCode,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),

                  Icon(Icons.language,size: 25)

                ],
              ),
            ),
          )
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
         check = false;
        },
        child: Icon(Icons.call)
      ),

      body: Center(
        child: InkWell(
          onTap: bottomModalSheet,
          child: Container(
            color: Colors.red,
            child: Text("sheet Bottom",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            )),
          ),
        ),
      )
    );
  }


  bottomModalSheet(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.3,
            color: Colors.green,
          );
        });
  }
}