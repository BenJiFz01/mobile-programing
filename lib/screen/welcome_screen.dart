import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_kopi/screen/home_screen.dart';

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100,bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/walpaper.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5 
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Zen Coffe Shop",style: GoogleFonts.pacifico(
            fontSize: 60,
            color: Color.fromARGB(255, 241, 99, 33),
          ),),
          Column(children: [
            Text("Take A Break With Coffe", style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,

            ),),
                      SizedBox(height: 60),
          Material(
            color: Color.fromARGB(255, 114, 57, 31),
            borderRadius: BorderRadius.circular(15),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute
                (builder: (context)=>HomeScreen(),
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: Text("MENU",
                style: TextStyle(
                  color: Color.fromARGB(255, 245, 245, 245),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1,
                ),),
              ),
            ),
          ),
          ],),
          ],
        ),
      ),
    );
  }
}
