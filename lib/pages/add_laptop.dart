import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:test_aplikasi/models/user_info.dart';
import 'package:test_aplikasi/pages/home_container.dart';

import 'package:test_aplikasi/pages/user_page.dart';
import 'dart:developer';



class AddLaptop extends StatefulWidget {
  const AddLaptop({super.key});

  @override
  State<AddLaptop> createState() => AddLaptopState();
}

class AddLaptopState extends State<AddLaptop> {
  final _isiKey = GlobalKey<FormState>();
  Future getuserInfo() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var userEmail = sharedPreferences.getString('email');
    setState(() {
      finalUserEmail = userEmail ?? 'email';
    });
  }

  @override
  void initState() {
    super.initState();
    getuserInfo();
  }

  Future<dynamic> getUserVerified() async {
    final url =
        "http://192.168.69.107/db_app_test/user_info.php?user_email=${finalUserEmail}";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    return body;
  }

  TextEditingController laptopName = TextEditingController();
  TextEditingController laptopScreen = TextEditingController();
  TextEditingController laptopProcessor = TextEditingController();
  String laptopRam = '4';
  String laptopHardisk = '128';
  String laptopAge = '1';
  String laptopType = 'Notebook';
  String laptopCondition = 'Decent';
  TextEditingController laptopColor = TextEditingController();
  TextEditingController laptopPrice = TextEditingController();
  TextEditingController laptopDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.blue,
          backgroundColor: Colors.blue[300],
          title: Container(
              child: Text("Add New Laptop",
                  style: TextStyle(fontFamily: "GodoB", color: Colors.white)))),
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  child: Form(
                    key: _isiKey,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Container(
                            height: 150,
                            width: 200,
                            child: Placeholder(
                              color: Colors.blue,
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(bottom: 5, left: 2),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Laptop Name',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontFamily: "GodoB",
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: double.infinity,
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                controller: laptopName,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Laptop Name",
                                    hintStyle: TextStyle(
                                      color: Colors.blue.withOpacity(0.5),
                                      fontFamily: 'GodoB',
                                      fontSize: 12,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(bottom: 5, left: 2),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Processor',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontFamily: "GodoB",
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: double.infinity,
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                controller: laptopProcessor,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "Processor",
                                    hintStyle: TextStyle(
                                      color: Colors.blue.withOpacity(0.5),
                                      fontFamily: 'GodoB',
                                      fontSize: 12,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(bottom: 5, left: 2),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontFamily: "GodoB",
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: double.infinity,
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                controller: laptopDescription,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "ex : this laptop is .... ",
                                    hintStyle: TextStyle(
                                      color: Colors.blue.withOpacity(0.5),
                                      fontFamily: 'GodoB',
                                      fontSize: 12,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Laptop Condition',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  child: DropdownButton<String>(
                                    menuMaxHeight: 150,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    value: laptopCondition,
                                    items: <String>[
                                      'New',
                                      'Good',
                                      'Decent',
                                      'Worn',
                                    ].map((String laptopCondition) {
                                      return DropdownMenuItem<String>(
                                        value: laptopCondition,
                                        child: Container(
                                            child: Text(laptopCondition),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                              Radius.elliptical(13, 13),
                                            ))),
                                      );
                                    }).toList(),
                                    onChanged: (String? conditionnewValue) {
                                      if (conditionnewValue != null) {
                                        setState(() {
                                          laptopCondition = conditionnewValue;
                                          print(laptopCondition);
                                        });
                                      }
                                    },
                                    // Customize the appearance of the DropdownButton here
                                    iconSize: 40,
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.blue.shade200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Screen',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 190,
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                    controller: laptopScreen,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: "example : 14' full hd",
                                        hintStyle: TextStyle(
                                            color: Colors.blue.withOpacity(0.5),
                                            fontFamily: 'GodoB',
                                            fontSize: 12),
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Ram',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  child: DropdownButton<String>(
                                    menuMaxHeight: 150,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    value: laptopRam,
                                    items: <String>[
                                      '4',
                                      '8',
                                      '16',
                                      '32',
                                      '64',
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Container(
                                            child: Text(value),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                              Radius.elliptical(13, 13),
                                            ))),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        setState(() {
                                          laptopRam = newValue;
                                          print(newValue);
                                        });
                                      }
                                    },
                                    // Customize the appearance of the DropdownButton here
                                    iconSize: 40,
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.blue.shade200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Hardsik',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 122,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  child: DropdownButton<String>(
                                    menuMaxHeight: 150,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    value: laptopHardisk,
                                    items: <String>[
                                      '128',
                                      '256',
                                      '512',
                                    ].map((String hardiskvalue) {
                                      return DropdownMenuItem<String>(
                                        value: hardiskvalue,
                                        child: Container(
                                            child: Text(hardiskvalue),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                              Radius.elliptical(13, 13),
                                            ))),
                                      );
                                    }).toList(),
                                    onChanged: (String? hardisknewValue) {
                                      if (hardisknewValue != null) {
                                        setState(() {
                                          laptopHardisk = hardisknewValue;
                                          print(laptopHardisk);
                                        });
                                      }
                                    },
                                    // Customize the appearance of the DropdownButton here
                                    iconSize: 40,
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.blue.shade200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Laptop Age',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  child: DropdownButton<String>(
                                    menuMaxHeight: 150,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    value: laptopAge,
                                    items: <String>[
                                      '1',
                                      '2',
                                      '3',
                                      '4',
                                      '5',
                                    ].map((String hardiskvalue) {
                                      return DropdownMenuItem<String>(
                                        value: hardiskvalue,
                                        child: Container(
                                            child: Text(hardiskvalue),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                              Radius.elliptical(13, 13),
                                            ))),
                                      );
                                    }).toList(),
                                    onChanged: (String? agenewValue) {
                                      if (agenewValue != null) {
                                        setState(() {
                                          laptopAge = agenewValue;
                                          print(laptopAge);
                                        });
                                      }
                                    },
                                    // Customize the appearance of the DropdownButton here
                                    iconSize: 40,
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.blue.shade200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Color',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                    controller: laptopColor,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: "ex : Blue",
                                        hintStyle: TextStyle(
                                          color: Colors.blue.withOpacity(0.5),
                                          fontFamily: 'GodoB',
                                          fontSize: 12,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.only(bottom: 5, left: 2),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Laptop Type',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontFamily: "GodoB",
                                      ),
                                    )),
                                Container(
                                  height: 50,
                                  width: 172,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13))),
                                  child: DropdownButton<String>(
                                    menuMaxHeight: 150,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    value: laptopType,
                                    items: <String>[
                                      'Notebook',
                                      'Netbook',
                                      'Gaming',
                                      'Business Laptop',
                                      'Tablet Laptop',
                                      'Touch Screen',
                                    ].map((String laptopType) {
                                      return DropdownMenuItem<String>(
                                        value: laptopType,
                                        child: Container(
                                            child: Text(laptopType),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                              Radius.elliptical(13, 13),
                                            ))),
                                      );
                                    }).toList(),
                                    onChanged: (String? typenewValue) {
                                      if (typenewValue != null) {
                                        setState(() {
                                          laptopType = typenewValue;
                                          print(laptopType);
                                        });
                                      }
                                    },
                                    // Customize the appearance of the DropdownButton here
                                    iconSize: 40,
                                    isExpanded: true,
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue,
                                      size: 30,
                                    ),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.blue.shade200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                        ), Padding(padding: EdgeInsets.only(top: 0)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(bottom: 5, left: 2),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Price',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontFamily: "GodoB",
                                  ),
                                )),
                            Container(
                              height: 50,
                              width: 220,
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                controller: laptopPrice,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "ex : 200000",
                                    hintStyle: TextStyle(
                                      color: Colors.blue.withOpacity(0.5),
                                      fontFamily: 'GodoB',
                                      fontSize: 12,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        FutureBuilder(
                            future: getUserVerified(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                if (snapshot.hasData) {
                                  var user = userInfoFromJson(snapshot.data!);
                                  return Container(
                                    width: 206,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            shadowColor: MaterialStatePropertyAll(
                                                Colors.blue),
                                            elevation:
                                                MaterialStatePropertyAll(10),
                                            surfaceTintColor:
                                                MaterialStatePropertyAll(
                                                    Colors.white),
                                            shape: MaterialStatePropertyAll(
                                                ContinuousRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                15, 15)))),
                                            side: MaterialStateProperty.all(BorderSide(
                                                color: Colors.blue.shade300)),
                                            backgroundColor:
                                                MaterialStatePropertyAll(Colors.white)),
                                        onPressed: () async {
                                          if (_isiKey.currentState!
                                              .validate()) {
                                            Future<dynamic> addLaptop(
                                                String laptopName,
                                                String laptopScreen,
                                                String laptopProcessor,
                                                String laptopRam,
                                                String laptopHardisk,
                                                String laptopAge,
                                                String laptopType,
                                                String laptopCondition,
                                                String laptopColor,
                                                String laptopPrice,
                                                String
                                                    laptopDescription) async {
                                              final url =
                                                  "http://192.168.69.107/db_app_test/add_laptop.php?user_id=${user.userId}&laptop_name=${laptopName}&laptop_screen=${laptopScreen}&laptop_processor=${laptopProcessor}&laptop_ram=${laptopRam}&laptop_hardisk=${laptopHardisk}&laptop_age=${laptopAge}&laptop_type=${laptopType}&laptop_condition=${laptopCondition}&laptop_color=${laptopColor}&laptop_price=${laptopPrice}&laptop_description=${laptopDescription}&laptop_verified=NotVerified&laptop_gambar=";

                                              final uri = Uri.parse(url);
                                              final response =
                                                  await http.get(uri);
                                              final body = response.body;
                                              return body;
                                            }

                                            addLaptop(
                                              laptopName.text,
                                              laptopScreen.text,
                                              laptopProcessor.text,
                                              laptopRam,
                                              laptopHardisk,
                                              laptopAge,
                                              laptopType,
                                              laptopCondition,
                                              laptopColor.text,
                                              laptopPrice.text,
                                              laptopDescription.text,
                                            ).then((value) {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeContainer()));
                                              log(value);
                                            }).catchError((error) {
                                              log(error);
                                            });
                                            ;
                                          }
                                        },
                                        child: Text(
                                          "add Laptop",
                                          style: TextStyle(
                                            fontFamily: "GodoB",
                                            color: Colors.blue,
                                            // color: Colors.blue[200],
                                          ),
                                        )),
                                  );
                                }
                                return Container();
                              }
                              return Container();
                            }),
                        Padding(padding: EdgeInsets.only(top: 30)),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
