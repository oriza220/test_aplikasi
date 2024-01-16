import 'package:flutter/material.dart';
import 'package:test_aplikasi/models/user_info.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

String? finalUserEmail;

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => UserPageState();
}

class UserPageState extends State<UserPage> {
  Future getuserInfo() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var userEmail = sharedPreferences.getString('email');
    print(finalUserEmail);
    setState(() {
      finalUserEmail = userEmail ?? 'email';
    });
  }

  @override
  void initState() {
    super.initState();
    getuserInfo();
  }

  Future<dynamic> getUser() async {
    final url =
        "http://192.168.69.107/db_app_test/user_info.php?user_email=${finalUserEmail}";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              var user = userInfoFromJson(snapshot.data!);
              return Scaffold(
                  appBar: AppBar(
                    title: Row(
                      children: [
                        Text("Pinjam Dulu",
                            style: TextStyle(
                                fontFamily: "GodoB",
                                fontSize: 25,
                                color: Colors.white)),
                        Padding(padding: EdgeInsets.only(left: 115)),
                        IconButton(
                            onPressed: getuserInfo,
                            icon: Icon(
                              Icons.person_outline_outlined,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                          CircleAvatar(child: Image.asset("assets/logo.png")),
                    ),
                    elevation: 40,
                    backgroundColor: Colors.blue[500],
                    automaticallyImplyLeading: false,
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Container(
                    height: 40,
                    width: 375,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13))),
                    child: FloatingActionButton.extended(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        focusColor: Colors.white,
                        splashColor: Colors.white,
                        onPressed: () {},
                        label: Text(
                          "Log Out",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "GodoB",
                              color: Colors.blue,
                              fontSize: 13,
                              fontStyle: FontStyle.italic
                              // color: Colors.blue[200],
                              ),
                        )),
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/transaction_page_background.jpg'),
                                  fit: BoxFit.fitWidth)),
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Row(children: [
                              Container(
                                height: 70,
                                width: 70,
                                child: CircleAvatar(
                                    child: Icon(
                                  Icons.person,
                                  size: 50,
                                )),
                                decoration: BoxDecoration(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                    top: 5,
                                  )),
                                  Text("${user.userName}",
                                      style: TextStyle(
                                          fontFamily: "GodoB",
                                          color: warnaCerah,
                                          fontSize: 30)),
                                  Text("${user.userPhoneNumber}",
                                      style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: warnaCerah,
                                      )),
                                  Container(
                                    width: 140,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        color: Colors.blue[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(13, 13))),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Text(
                                          "   Terverifikasi ",
                                          style: TextStyle(
                                              color: warnaCerah,
                                              fontFamily: "GodoB"),
                                        )),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(30, 30))),
                                          child: Icon(Icons.check_box,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Material(
                          elevation: 3,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(13, 13)),
                          child: Column(children: [
                            Container(
                              child: ExpansionTile(
                                title: Row(
                                  children: [
                                    Icon(Icons.person, color: Colors.blue),
                                    Container(
                                        padding: EdgeInsets.only(right: 20)),
                                    Text(
                                      "Profile Information",
                                      style: TextStyle(fontFamily: "GodoB"),
                                    ),
                                  ],
                                ),
                                children: [
                                  CustomDivider(width: double.infinity),
                                  ListTile(
                                    title: Row(
                                      children: [
                                        Text("Username :"),
                                        Text(" ${user.userName}",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  CustomDivider(width: double.infinity),
                                  ListTile(
                                    title: Row(
                                      children: [
                                        Text("Email :"),
                                        Text(" ${user.userEmail}",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  CustomDivider(width: double.infinity),
                                  ListTile(
                                    title: Row(
                                      children: [
                                        Text("Phone Number :"),
                                        Text(" ${user.userPhoneNumber}",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(10),
                              width: 380,
                            ),
                          ]),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                        ),
                        Container(
                          height: 235,
                          child: Material(
                            elevation: 3,
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(13, 13)),
                            child: Column(children: [
                              Container(
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.question_mark,
                                          color: Colors.blue),
                                      Container(
                                          padding: EdgeInsets.only(right: 20)),
                                      Text(
                                        "Help Center",
                                        style: TextStyle(fontFamily: "GodoB"),
                                      ),
                                    ],
                                  ),
                                ),
                                padding: EdgeInsets.all(25),
                                width: 380,
                              ),
                              Container(child: CustomDivider(width: 380)),
                              Container(
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.ssid_chart,
                                          color: Colors.blue),
                                      Container(
                                          padding: EdgeInsets.only(right: 20)),
                                      Text(
                                        "Terms & Condition",
                                        style: TextStyle(fontFamily: "GodoB"),
                                      ),
                                    ],
                                  ),
                                ),
                                padding: EdgeInsets.all(25),
                                width: 380,
                              ),
                              Container(child: CustomDivider(width: 380)),
                              Container(
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.control_camera_outlined,
                                          color: Colors.blue),
                                      Container(
                                          padding: EdgeInsets.only(right: 20)),
                                      Text(
                                        "Privacy Policy",
                                        style: TextStyle(fontFamily: "GodoB"),
                                      ),
                                    ],
                                  ),
                                ),
                                padding: EdgeInsets.all(25),
                                width: 380,
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ));
            } else {
              return Center(child: Text(('no data found.')));
            }
          } else {
            return Scaffold(
                appBar: AppBar(
                  title: Row(
                    children: [
                      Text("Pinjam Dulu",
                          style: TextStyle(
                              fontFamily: "GodoB",
                              fontSize: 25,
                              color: Colors.white)),
                      Padding(padding: EdgeInsets.only(left: 115)),
                      IconButton(
                          onPressed: getuserInfo,
                          icon: Icon(
                            Icons.person_outline_outlined,
                            color: Colors.white,
                            size: 30,
                          ))
                    ],
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(child: Image.asset("assets/logo.png")),
                  ),
                  elevation: 40,
                  backgroundColor: Colors.blue[500],
                  automaticallyImplyLeading: false,
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/transaction_page_background.jpg'),
                                fit: BoxFit.fitWidth)),
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Row(children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: CircleAvatar(
                                  child: Icon(
                                Icons.person,
                                size: 50,
                              )),
                              decoration: BoxDecoration(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                  top: 5,
                                )),
                                Text("UserName",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: warnaCerah,
                                        fontSize: 30)),
                                Text("12345678910",
                                    style: TextStyle(
                                      fontFamily: "GodoB",
                                      color: warnaCerah,
                                    )),
                                Container(
                                  width: 140,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text(
                                        "   Terverifikasi ",
                                        style: TextStyle(
                                            color: warnaCerah,
                                            fontFamily: "GodoB"),
                                      )),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(30, 30))),
                                        child: Icon(Icons.check_box,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Material(
                        elevation: 3,
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13)),
                        child: Column(children: [
                          Container(
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Icon(Icons.person, color: Colors.blue),
                                  Container(
                                      padding: EdgeInsets.only(right: 20)),
                                  Text(
                                    "Profile Information",
                                    style: TextStyle(fontFamily: "GodoB"),
                                  ),
                                ],
                              ),
                              children: [
                                CustomDivider(width: double.infinity),
                                ListTile(
                                  title: Row(
                                    children: [
                                      Text("Username :"),
                                      Text("",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                CustomDivider(width: double.infinity),
                                ListTile(
                                  title: Row(
                                    children: [
                                      Text("Email :"),
                                      Text("",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                CustomDivider(width: double.infinity),
                                ListTile(
                                  title: Row(
                                    children: [
                                      Text("Phone Number :"),
                                      Text("",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(10),
                            width: 380,
                          ),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                      ),
                      Container(
                        height: 235,
                        child: Material(
                          elevation: 3,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(13, 13)),
                          child: Column(children: [
                            Container(
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.question_mark,
                                        color: Colors.blue),
                                    Container(
                                        padding: EdgeInsets.only(right: 20)),
                                    Text(
                                      "Help Center",
                                      style: TextStyle(fontFamily: "GodoB"),
                                    ),
                                  ],
                                ),
                              ),
                              padding: EdgeInsets.all(25),
                              width: 380,
                            ),
                            Container(child: CustomDivider(width: 380)),
                            Container(
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.ssid_chart, color: Colors.blue),
                                    Container(
                                        padding: EdgeInsets.only(right: 20)),
                                    Text(
                                      "Terms & Condition",
                                      style: TextStyle(fontFamily: "GodoB"),
                                    ),
                                  ],
                                ),
                              ),
                              padding: EdgeInsets.all(25),
                              width: 380,
                            ),
                            Container(child: CustomDivider(width: 380)),
                            Container(
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.control_camera_outlined,
                                        color: Colors.blue),
                                    Container(
                                        padding: EdgeInsets.only(right: 20)),
                                    Text(
                                      "Privacy Policy",
                                      style: TextStyle(fontFamily: "GodoB"),
                                    ),
                                  ],
                                ),
                              ),
                              padding: EdgeInsets.all(25),
                              width: 380,
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ));
          }
        });
  }
}
