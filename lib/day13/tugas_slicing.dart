import 'package:belajar_flutter_windu/day13/fill_form_widget.dart';
import 'package:flutter/material.dart';

class TugasSlicingDay13 extends StatefulWidget {
  const TugasSlicingDay13({super.key});

  @override
  State<TugasSlicingDay13> createState() => _TugasSlicingDay13State();
}

class _TugasSlicingDay13State extends State<TugasSlicingDay13> {
  //bool clickSee = true;
  bool obscurepass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 225, 240),
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fitWidth
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text("Let's Connect With Us!", style: TextStyle(
                fontSize: 32.09,
                fontWeight: FontWeight.bold,
                fontFamily: "Work Sans"
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            
            //Fill Form
            child: Column(
              children: [
                fillForm(textFill: "E-mail Address",),
                SizedBox(height: 16,),

                fillForm(textFill: "Password", click: (){
                       // clickSee = !clickSee;
                        setState(() {
                          obscurepass = !obscurepass;
                        });
                      },isPassword: true , isVisibility: obscurepass,),
                SizedBox(height: 16,),
              ],
            ),
          ),

          //Text Button Forgot Password
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    setState(() {
                    });
                  }, 
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.black
                    ),
                  )
                ),
              ],
            ),
          ),

          //Button Login
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
            ),
            onPressed: (){
              setState(() {});
            }, 
            child: SizedBox(
              width: 320,
              height: 50,
              child: Center(
                child: Text(
                  "Login", 
                  style: 
                    TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.bold
                    ),
                )
              )
            )
          ),
          SizedBox(height: 10,),

          //Pembatas
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                SizedBox(width: 10,),
                Text("or", style: TextStyle(fontSize: 16),),
                SizedBox(width: 10,),
                Expanded(child: Divider(thickness: 1,))
              ],
            ),
          ),
          SizedBox(height: 10),

          //Button Login Apple 
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
            onPressed: (){
              setState(() {});
            }, 
            child: SizedBox(
              width: 320,
              height: 50,
              child: 

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Apple_Icons.png', height: 33, width: 33,),
                  SizedBox(width: 10),
                  Text(
                    "Sign up with Apple", 
                    style: 
                      TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.bold
                      ),
                  ),
                ],
              )
            )
          ),
          SizedBox(height: 10),


          //Button Login Google
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shadowColor: Colors.blueGrey
            ),
            onPressed: (){
              setState(() {});
            }, 
            child: SizedBox(
              width: 320,
              height: 50,
              child: 

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Google_Icons.png', height: 33, width: 33,),
                  SizedBox(width: 10),
                  Text(
                    "Sign up with Google", 
                    style: 
                      TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Work Sans",
                        fontWeight: FontWeight.bold
                      ),
                  ),
                ],
              )
            )
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?", 
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              TextButton(
                  onPressed: (){
                    setState(() {
                    });
                  }, 
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  )
                ),
            ],
          )
        ],
      ),
    );
  }
}

