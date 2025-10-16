import 'package:flutter/material.dart';

class State1Day12 extends StatefulWidget {
  const State1Day12({super.key});

  @override
  State<State1Day12> createState() => _State1Day12State();
}

class _State1Day12State extends State<State1Day12> {
  @override
  Widget build(BuildContext context) {
    int counter = 5;
    return Scaffold(appBar: AppBar(title: Text("State 1 Counter"),),
      body: Column(
        children: [
          Text("Tambah data",),
          Text("$counter",
            style: TextStyle(
              fontSize: 20
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print("Print tambah $counter");
              counter++;
              setState(() {});
            }, 
            child: Text("Tambah"))
        ],
      ),
    );
  }
}