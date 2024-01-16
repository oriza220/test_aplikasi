import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_aplikasi/models/login_model.dart';

import 'package:test_aplikasi/pages/signup_page.dart';
import 'package:test_aplikasi/splash/after_login.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final _formKey = GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Future<String> login(String emailInput, String passwordInput) async {
    final url =
        "http://192.168.69.107/db_app_test/test_login.php?email=${emailInput}&password=${passwordInput}";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    return body;
  }

  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login_page_background.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.only(),
                        child: Image.asset("assets/logo.png"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: Text(
                          "Pinjam Dulu",
                          style: TextStyle(
                              fontSize: 37,
                              fontFamily: "GodoB",
                              color: Colors.white,
                              shadows: tambahBayangan),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 0),
                        child: Center(
                          child: CustomDivider(width: 150),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                          child: Text(
                        "The First P2p Laptop Lending App",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "GodoB",
                            color: warnaCerah),
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    // Text("Email",style: TextStyle(color: Colors.white,fontFamily: "GodoB",fontSize: 20),),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.blue),
                            controller: emailInput,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            strutStyle: StrutStyle(fontFamily: "GodoB"),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              label: Container(
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(3, 3)),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('Email',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ))),
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                color: Colors.blue.shade200,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors
                                      .blue, // Change this to your desired color while active
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue, // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.blue),
                            controller: passwordInput,
                            obscureText: true,
                            obscuringCharacter: '*',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Password';
                              }
                              return null;
                            },
                            strutStyle: StrutStyle(fontFamily: "GodoB"),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              label: Container(
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(3, 3)),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('Password',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ))),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                color: Colors.blue.shade200,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors
                                      .blue, // Change this to your desired color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors
                                      .blue, // Change this to your desired color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors
                                      .blue, // Change this to your desired color while active
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    CustomDivider(width: double.infinity),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 130,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shadowColor:
                                      MaterialStatePropertyAll(Colors.blue),
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
                                        builder: (context) => SignUp()));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontFamily: "GodoB",
                                  color: Colors.white,
                                  // color: Colors.blue[200],
                                ),
                              )),
                        ),
                        Padding(padding: EdgeInsets.only(left: 6.7)),
                        Container(
                          width: 206,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shadowColor:
                                      MaterialStatePropertyAll(Colors.blue),
                                  elevation: MaterialStatePropertyAll(10),
                                  surfaceTintColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  shape: MaterialStatePropertyAll(
                                      ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(15, 15)))),
                                  side: MaterialStateProperty.all(
                                      BorderSide(color: Colors.blue.shade300)),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  final SharedPreferences sharedPreferences =
                                      await SharedPreferences.getInstance();
                                  sharedPreferences.setString(
                                      "email", emailInput.text)!;
                                  var userEmail =
                                      sharedPreferences.getString('email');
                                  login(emailInput.text, passwordInput.text)
                                      .then((value) {
                                    final loginData = loginModelFromJson(value);
                                    if (loginData.userEmail != null &&
                                        loginData.userPassword != null) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  afterLogin()));
                                    }
                                  }).catchError((error) {
                                    log(error);
                                  });
                                }
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: "GodoB",
                                  color: Colors.blue,
                                  // color: Colors.blue[200],
                                ),
                              )),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text.rich(TextSpan(
                              text: "Forgot Password ? ",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.bold)))),
                    ),

                    Container(padding: EdgeInsets.only(top: 5)),
                    // Container(
                    //     padding: EdgeInsets.only(top: 15),
                    //     child: Center(child: CustomDivider(width: 250))),
                    Container(padding: EdgeInsets.only(top: 40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 10,
                          shadowColor: Colors.blue,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(6, 6))),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  width: 50,
                                  height: 45,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.network(
                                        "https://cdn.discordapp.com/attachments/798745994103095322/1181045688969207828/Git-Icon-Black.png?ex=657fa183&is=656d2c83&hm=50366f9742c8aa42890987dc24776d59c2d86869eff0cabc9de6ab0314fd082a&"),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(13, 13))),
                                    width: 70,
                                    height: 20,
                                    child: Text(
                                      "Git Hub",
                                      style: TextStyle(fontFamily: "GodoB"),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 15)),
                        Card(
                          elevation: 10,
                          shadowColor: Colors.blue,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(6, 6))),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  width: 50,
                                  height: 45,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Image.network(
                                        "https://cdn.discordapp.com/attachments/611552007764836372/1181040507527385129/google_logo_icon_169090.png?ex=657f9caf&is=656d27af&hm=f8888f6316418a36d20cc32ce3860328f06031d396e9c55c432e30fc5f5e822d&"),
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(13, 13))),
                                    width: 70,
                                    height: 20,
                                    child: Text(
                                      "Google",
                                      style: TextStyle(fontFamily: "GodoB"),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 60),
                        alignment: Alignment.center,
                        child: Text.rich(TextSpan(
                            text:
                                "@2022 PinjemSek SG. All rights reserved.privacy",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                            )))),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
