import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/home_container.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheked = false;
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/transaction_page_background.jpg"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(top: 80),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 37, fontFamily: "GodoB", color: Colors.white,shadows: tambahBayangan),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: CustomDivider(width: 200),
                  )),
              Container(
                padding: EdgeInsets.only(top: 10),
              ),
              Card(
                color: Colors.transparent,
                elevation: 5,
                shadowColor: Colors.purple[200],
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: usernameInput,
                    decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(
                            color: Colors.purple.shade200.withOpacity(0.5),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple.shade200.withOpacity(0.6)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(13, 13)),
                        )),
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                elevation: 5,
                shadowColor: Colors.purple[200],
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: usernameInput,
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.purple.shade200.withOpacity(0.5),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple.shade200.withOpacity(0.6)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(13, 13)),
                        )),
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                elevation: 5,
                shadowColor: Colors.purple[200],
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: usernameInput,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.purple.shade200.withOpacity(0.5),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple.shade200.withOpacity(0.6)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(13, 13)),
                        )),
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                elevation: 5,
                shadowColor: Colors.purple[200],
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: usernameInput,
                    decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                            color: Colors.purple.shade200.withOpacity(0.5),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple.shade200.withOpacity(0.6)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(13, 13)),
                        )),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
              ),
              Center(child: CustomDivider(width: double.infinity)),
              Container(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                children: [
                  Container(
                    child: Checkbox(
                      side: BorderSide(color: Colors.white),
                      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(13, 13))),
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                        value: isCheked,
                        onChanged: (newBool) {
                          setState(() {
                            isCheked = newBool;
                          });
                        }),
                  ),
                  Text(
                    "By checking this box I agree to the Pinjam \nDulu User Agrremenand Privacy Policy",
                    style: TextStyle(color: Colors.white, fontFamily: "GodoB"),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    width: 115,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shadowColor: MaterialStatePropertyAll(Colors.blue),
                            elevation: MaterialStatePropertyAll(10),
                            surfaceTintColor:
                                MaterialStatePropertyAll(Colors.blue),
                            shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(15, 15)))),
                            side: MaterialStateProperty.all(
                                BorderSide(color: Colors.white)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeContainer()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: "GodoB",
                            color: Colors.white,
                            // color: Colors.blue[200],
                          ),
                        ))),
              ),
              Padding(padding: EdgeInsets.only(left: 6.7)),
              Container(
                  padding: EdgeInsets.only(top: 140),
                  alignment: Alignment.center,
                  child: Text.rich(TextSpan(
                      text: "@2022 PinjemSek SG. All rights reserved.privacy",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      )))),
            ]),
          ),
        ],
      ),
    );
  
  }
}
