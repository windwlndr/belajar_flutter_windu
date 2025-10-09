import 'package:belajar_flutter_windu/main.dart';
import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {
  const ProfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(title: Text("Profil Saya", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), backgroundColor: Colors.deepPurple),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello! My name is:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),
          ),

          Text("Windu Wulandari",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Colors.indigo
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.blueGrey), 
              Text("Central Jakarta City",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Times New Roman"
                ),
              )
            ],
          ),
          
          Text("Saya adalah seorang freshgraduate dari Prodi Pendidikan Teknik Informatika dan Komputer Universitas Negeri Jakarta",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Arial",
              fontSize: 12
            ),
          ),

        ],
        ),
    );
  }
}