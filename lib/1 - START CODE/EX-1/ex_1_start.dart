import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            children: [

              ColorChage(),
              SizedBox(height: 20),
              ColorChage(),
              SizedBox(height: 20),
              ColorChage(),
              SizedBox(height: 20),
              ColorChage()
            ],
          ),
        ),
      ),
    ));

class ColorChage extends StatefulWidget{
  @override
  _ColorChageState createState() => _ColorChageState();

}
class _ColorChageState extends State<ColorChage>{
  // get isSelected => Colors.grey;
  bool isSelected = false;
    void _taggleState(){
      setState(() {
         isSelected = !isSelected;
      });
    }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          onPressed: _taggleState,
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? Colors.blue : Colors.grey,
          ),
          child:  Center(
            child: Text( isSelected ? "Selected" : "Not Selected",
            style:  TextStyle(
              fontSize: 25 ,
              color: isSelected ? Colors.white : Colors.black
    ),
          )
      ),
      )
    );
  }

}
