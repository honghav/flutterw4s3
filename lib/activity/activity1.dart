import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Activity1"),
      ),
        body:  Expanded(
          child: Container(
            color: Colors.white,
              child:  Column(
                children: [
                  const SizedBox(
                    height: 100,),
                  Container(
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                      height: 100,
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.green)
                          ),
                          Container(width: 100, color: Colors.pink,)
                        ],
                      )
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(color: Colors.yellow,),
                        ),
                        SizedBox(
                         width: 20,
                        ),
                        Expanded(
                          child: Container(color: Colors.yellow,),
                        ),
                        SizedBox(
                         width: 20,
                        ),
                        Expanded(
                          child: Container(color: Colors.yellow,),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.pink,))
                ],
              )
          )
        )
      )
    )
  );
}
