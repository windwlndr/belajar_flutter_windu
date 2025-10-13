import 'package:flutter/material.dart';

class LayoutProfilLengkap extends StatelessWidget {
  const LayoutProfilLengkap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text("Profil Lengkap", 
        style: TextStyle(
          color: Colors.white, 
          fontWeight: FontWeight.bold),), 
        backgroundColor: Colors.deepPurple
      ),

      //Body
      body: Column(
        children: [

          //Tambah images
          Expanded(child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 225, 240),
              image: DecorationImage(
                image: AssetImage("assets/images/profpic.png"))
            ),
          )),

          //Baris 1
          Center(child: 
            Text("Windu Wulandari",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.indigo
            ),),
          ),

          //Baris 2
          Padding(padding: const EdgeInsetsGeometry.all(20.0),
          child: Container(
            color: const Color.fromARGB(255, 184, 197, 204),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.mail, size: 30,),
                SizedBox(width: 20),
                Text("winduwlndr@gmail.com", 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                  ),)
              ],
            ),
            ),
          ),

          //Baris 3
          Padding(padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.phone_callback),
              SizedBox(width: 20,),
              Text("+6285715888301", style: TextStyle(
                    fontSize: 18,
              ),
              ),
              Spacer(),
              Text("Contact Me", style: TextStyle(
                    fontSize: 18,
                    decoration: TextDecoration.underline
              ),),
            ],
          ),
          ),

          //Baris 4
          Row(
            children: [
              Expanded(child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 195, 230),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height: 175, 
               
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("12", style: TextStyle(
                          fontSize: 28,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("Postingan"),

                      ],
                    ),
                  ),
                ),
                )),

              Expanded(child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 199, 183, 241),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height: 175, 
               
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("888", style: TextStyle(
                          fontSize: 28,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("Followers"),
                      ],
                    ),
                  ),
                ),
                )),

            ],
          ),

          //Baris 5
          SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello! I am a student of Mobile Programming class at PPKD Jakarta Pusat", textAlign: TextAlign.center,)

              ],
            ),
          ),

          //Baris 6
          SizedBox(height: 30,),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 84, 133, 216),
            alignment: Alignment.center,
            child: 
                Text("Let's connect each other", 
                style: TextStyle(
                  fontSize: 20, 
                  fontFamily: "Times New Roman",
                  color: Colors.white),
                  )
          )
        ],
      ),
    );
  }
}