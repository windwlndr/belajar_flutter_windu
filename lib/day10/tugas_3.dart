import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffAED6CF),
        title: Text("Form and Gallery", 
        style: TextStyle(
          fontWeight: FontWeight.bold),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Form", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xff80A1BA),
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
                                          
                                Text("E-mail", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input your e-mail"
                                ),),
                                          
                                Text("Phone Number", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Input your phone number"
                                ),),
                                          
                                Text("Description", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                TextField(decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(40),
                                  border: OutlineInputBorder(),
                                  hintText: "Input description about yourself",
                                  
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    SizedBox(height: 50,),
                    Text("Gallery", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                                    
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Text("+", style: TextStyle(
                                fontSize: 56,
                                color: const Color.fromARGB(255, 98, 110, 116)
                              ),)
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}