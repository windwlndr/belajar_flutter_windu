import 'package:flutter/material.dart';

class Soal1Tugas5 extends StatefulWidget {
  const Soal1Tugas5({super.key});

  @override
  State<Soal1Tugas5> createState() => _Soal1Tugas5State();
}

class _Soal1Tugas5State extends State<Soal1Tugas5> {
  bool showNama = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevated Button")
      ),

      body: Column(
        children: [
          if (!showNama) ...[
            Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Center(
              child: Text(
                "Nama saya Windu Wulandari",
              ),
            ),
          ),
          ] else ...[],
          

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: (){
                print("Tampilkan nama : $showNama");
                showNama = !showNama;
                setState(() {});
              }, 
              child: Text(showNama ? "Tampilkan Nama" : "Sembunyikan Nama", style: TextStyle(color: Colors.white))),
          )
        ],
      ),
    );
  }
}