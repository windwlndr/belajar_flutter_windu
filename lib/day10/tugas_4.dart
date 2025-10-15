import 'package:flutter/material.dart';

class Tugas4 extends StatefulWidget {
  const Tugas4({super.key});

  @override
  State<Tugas4> createState() => _Tugas4State();
}

class _Tugas4State extends State<Tugas4> {
  @override
  Widget build(BuildContext context) {
    //bool ifSelected = false;
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff696FC7),
        title: Text("Form and List Item", 
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold),),
        ),

      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          Text("Form", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xffA7AAE1),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input your full name"
                                ),),
                                SizedBox(height: 20),
                                          
                                Text("E-mail", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input your e-mail"
                                ),),
                                SizedBox(height: 20),

                                          
                                Text("Phone Number", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input your phone number"
                                ),),
                                SizedBox(height: 20),
                                
                                          
                                Text("Description", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(40),
                                  border: OutlineInputBorder(),
                                  hintText: "Input description about yourself",
                                ),),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),

                    Text("List Item", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 16),

                    //Item 1
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 246, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA7AAE1),
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            )]
                      ),

                      child: ListTile(
                        leading: Image.asset("assets/images/uv_shield_tone_up_sunscreen-min.png"),
                        title: Text(
                          "Wardah UV Shield Tone Up", 
                          style: TextStyle(
                            fontSize: 16,
                          ),),
                        subtitle: Text(
                          "Rp. 72.500",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        trailing: 
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // IconButton(onPressed: () 
                            // {
                            //   setState(() {
                            //   !ifSelected;
                                
                            //   });
                            // }, 
                            // icon: ifSelected ? Icon( Icons.favorite  ) : Icon(Icons.mail)),
                            Icon(Icons.favorite),
                            SizedBox(width: 8,),
                            Icon(Icons.trolley),
                            SizedBox(width: 8,),
                            Icon(Icons.share)
                          ],
                        ),
                      )
                      ),
                    SizedBox(height: 10),

                    //Item 2
                      Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 246, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA7AAE1),
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            )]
                      ),

                      child: ListTile(
                        leading: Image.asset("assets/images/cetaphil.jpg"),
                        title: Text(
                          "Cetaphil Gentle Cleanser 500mL", 
                          style: TextStyle(
                            fontSize: 16
                          ),),
                        subtitle: Text(
                          "Rp. 213.000",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        trailing: 
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(width: 8,),
                            Icon(Icons.trolley),
                            SizedBox(width: 8,),
                            Icon(Icons.share)
                          ],
                        ),
                      )
                      ),
                    SizedBox(height: 10),

                    //Item 3
                      Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 246, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA7AAE1),
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            )]
                      ),

                      child: ListTile(
                        leading: Image.asset("assets/images/Hyalucera_Moisturizer_Gel-01.jpg"),
                        title: Text(
                          "The Originote Hyallucera Moisturizer 30mL", 
                          style: TextStyle(
                            fontSize: 16
                          ),),
                        subtitle: Text(
                          "Rp. 42.000",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        trailing: 
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.favorite),
                            SizedBox(width: 8,),
                            Icon(Icons.trolley),
                            SizedBox(width: 8,),
                            Icon(Icons.share)
                          ],
                        ),
                      )
                      ),
                    SizedBox(height: 10),

                    //Item 4
                      Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 246, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA7AAE1),
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            )]
                      ),

                      child: ListTile(
                        leading: Image.asset("assets/images/H-llow_Clarifying_Toner-18.jpg"),
                        title: Text(
                          "The Originote H-llow Clarifying Toner", 
                          style: TextStyle(
                            fontSize: 16
                          ),),
                        subtitle: Text(
                          "Rp. 39.900",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        trailing: 
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.favorite),
                            SizedBox(width: 8,),
                            Icon(Icons.trolley),
                            SizedBox(width: 8,),
                            Icon(Icons.share)
                          ],
                        ),
                      )
                      ),
                    SizedBox(height: 10),

                    //Item 5
                      Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 246, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA7AAE1),
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            )]
                      ),

                      child: ListTile(
                        leading: Image.asset("assets/images/wardah micellar water.png"),
                        title: Text(
                          "Wardah Calm&Soothe Micellar Water 400mL", 
                          style: TextStyle(
                            fontSize: 16
                          ),),
                        subtitle: Text(
                          "Rp. 97.000",
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        trailing: 
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(width: 8,),
                            Icon(Icons.trolley),
                            SizedBox(width: 8,),
                            Icon(Icons.share)
                          ],
                        ),
                      )
                      ),
        ],
      ),
    );
    
  }
}