import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alert Dialoh'),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                testDialog();
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: Text('Button'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  testDialog(){
   return showDialog(context: context,
       builder: (BuildContext context){
     return AlertDialog(
       content: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           Text('Alert Dialog  Message'),
         ],
       ),
     );
       });
  }
}
