import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp1());
}
class MyApp1 extends StatefulWidget {
  State createState() => _MYAPP();
}
class _MYAPP extends State{
  int Currentindex=1;
  void change(){
    setState(() {
      Currentindex=Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.limeAccent,
          centerTitle: true,
          title: Text('DICE',style: TextStyle(fontSize: 25),),
        ),
        body: Center(
            child: Column(
              children: [
                Image.asset("assets/images/image-$Currentindex.png",height: 500,width: 200,),
                Text("Current_number= $Currentindex",style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: change,
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shadowColor: Colors.grey,
                  ),
                  child: Container(height: 50,width: 80,alignment: Alignment.center,
                      child:Text("Roll",style: TextStyle(fontSize: 30,color: Colors.white,),)),)

              ],
            )
        ),
      ),
    );
  }
}