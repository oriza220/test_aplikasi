import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_aplikasi/pages/home_container.dart';
import 'package:test_aplikasi/pages/login_page.dart';
import 'package:get/get.dart';
import 'package:test_aplikasi/utilities/settings.dart';

String? finaluserInfo;

class afterLogin extends StatefulWidget {
  const afterLogin({super.key});
  @override
  State<afterLogin> createState() => _afterLoginState();
}

class _afterLoginState extends State<afterLogin> {
  @override
  void initState() {
    getuserInfo().whenComplete(() async {
      Timer(
          Duration(seconds: 2),
          () => Get.to(
              () => finaluserInfo == null ? LoginPage() : HomeContainer()));
    });
  }

  Future getuserInfo() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var userInfo = sharedPreferences.getString('email');
    setState(() {
      finaluserInfo = userInfo;
    });
    print(finaluserInfo);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/login_page_background.png"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                          fit: BoxFit.fill)),
                ),
                Padding(padding: EdgeInsets.only(top:  30)),
                Container(
                  width: 240,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.blue[300],
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(13, 13))),
                  child: Row(
                    children: [
                      Container(
                          child: Flexible(
                            child: Text(
                                                    " Login Succes",
                                                    style:
                              TextStyle(color: warnaCerah, fontFamily: "GodoB",fontSize: 30),
                                                  ),
                          )),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(30, 30))),
                        child: Icon(Icons.check_box, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                // Container(
                //   child: Container(
                //       child: Text("""Pinjam Dulu""",
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 40,
                //               fontFamily: "GodoB"))),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
