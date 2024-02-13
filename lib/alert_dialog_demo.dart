import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
    myAlert(){
      return showDialog(context: context, builder: (BuildContext context){
        return Container(

          child: AlertDialog(

            title: Text("Alert!!"),
            iconColor: Colors.black,
            titlePadding: EdgeInsets.only(right: 167),
            icon: Icon(Icons.delete),
            content: Text("If want to delete press yes"),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("yes")),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("No")),
            ],
          )
        );
      });
    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           appBar: AppBar(
             backgroundColor: Colors.lightBlueAccent,
             title: Text("Alert Dialog"),
      
             centerTitle: true,
           ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){
                myAlert();
              },child: Text("Delete"),color: Colors.lightBlueAccent,)
            ],
          ),
        ),
      ),
    );
  }
}
