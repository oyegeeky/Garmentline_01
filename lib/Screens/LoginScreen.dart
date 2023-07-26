import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              //color: tdPink,
              child: Image.asset('assets/images/abstract01.png',
                fit: BoxFit.fill)
            ),

            Stack(
              children: [
                Container(
                    height: 509,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 15
                    ),
                    //color: tdPink,
                  child: Column(
                    children: [
                      Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        color: tdPink
                    )
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          'to get started now!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black
                          )
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const SizedBox(
                    height: 50,
                      child:   TextField(
                      decoration: InputDecoration(

                        contentPadding: EdgeInsets.all(11),
                        hintText: 'Email or Mobile number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.all(Radius.circular(9.0)) ,
                          borderSide: BorderSide(
                            width: 1, color: Color(0xFFA5A5A5),
                          ), //<-- SEE HERE
                        ),
                      ),
                    ),
                  ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            contentPadding: EdgeInsets.all(11),
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:  BorderRadius.all(Radius.circular(9.0)) ,
                              borderSide: BorderSide(
                                width: 1, color: Color(0xFFA5A5A5),
                              ), //<-- SEE HERE
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            contentPadding: EdgeInsets.all(11),
                            hintText: 'Confirm Password',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:  BorderRadius.all(Radius.circular(9.0)) ,
                              borderSide: BorderSide(
                                width: 1, color: Color(0xFFA5A5A5),
                              ), //<-- SEE HERE
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        height: 41,
                        width: 289.24,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          => const LoginScreen() ) );
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tdPink,
                              // shadowColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(910.0),
                              ),
                              minimumSize: const Size(120,50)
                          ), child:
                          Text('Sign Up',
                            style: GoogleFonts.raleway(
                                textStyle: Theme.of(context).textTheme.displayMedium,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                          ),
                          // style: ButtonStyle(
                          //   backgroundColor: Colors.pink
                          // ),
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
