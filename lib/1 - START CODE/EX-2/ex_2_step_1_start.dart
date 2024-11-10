import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          clickIcon(),
          clickIcon(),
          clickIcon(),
        ],
      ),
    ),
  )
  );
}
class clickIcon extends StatefulWidget{
  @override
  _clickIconState createState() => _clickIconState();
}
class _clickIconState extends State<clickIcon>{
  bool isclick = false;
  void _clicked(){
    setState(() {
      isclick = !isclick;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Tittle",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w800),
                ),
                Text("Description")
              ],
            ),
          ),
          IconButton(
              onPressed: _clicked,
              icon: Icon(
                Icons.favorite,
                color: isclick ? Colors.red : Colors.grey

              )
          )
        ],
      ),
    );
  }
}
