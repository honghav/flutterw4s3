import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ? this line remove the debug banner that usually debugShowCheckedModeBanner: false,
      home: moveClick()
    )
);

class moveClick extends StatefulWidget{
@override
_moveClickState createState() => _moveClickState();
}
class _moveClickState extends State<moveClick> {
  int clickButton = 0;
  void previousImage(){
    setState(() {
      clickButton = (clickButton == 0)? images.length-1 : clickButton - 1 ;
    });
  }
  void nextImage(){
    setState(() {
      clickButton =(clickButton == images.length -1 )? 0 : clickButton + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: previousImage,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed:nextImage,
              ),
            ),

          ]
      ) ,
      body: Image.asset(images[clickButton]),
    );
  }
}