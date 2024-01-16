import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:test_aplikasi/models/laptops_model.dart';
import 'package:test_aplikasi/models/user_info.dart';
import 'package:test_aplikasi/pages/add_laptop.dart';

import 'package:test_aplikasi/pages/user_page.dart';
import 'package:test_aplikasi/utilities/settings.dart';

import 'package:http/http.dart' as http;
import 'package:test_aplikasi/widgets/laptop_user_unverified_card.dart';
import 'package:test_aplikasi/widgets/laptop_user_verified_card.dart';

class LaptopPage extends StatefulWidget {
  const LaptopPage({super.key});

  @override
  State<LaptopPage> createState() => LaptopPageState();
}

class LaptopPageState extends State<LaptopPage> {
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getUserVerified(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              var user = userInfoFromJson(snapshot.data!);
              Future<dynamic> getLaptopVerified() async {
                final url =
                    "http://192.168.69.107//db_app_test/laptop_detail_verified.php?user_id=${user.userId}";
                final uri = Uri.parse(url);
                final response = await http.get(uri);
                final body = response.body;
                return body;
              }

              Future<dynamic> getLaptopUnVerified() async {
                final url =
                    "http://192.168.69.107//db_app_test/laptop_detail_unverified.php?user_id=${user.userId}";
                final uri = Uri.parse(url);
                final response = await http.get(uri);
                final body = response.body;
                return body;
              }

              return DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    floatingActionButton: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(17, 17))),
                      child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddLaptop()));
                          },
                          backgroundColor:
                              Colors.deepPurpleAccent.shade100.withOpacity(0.4),
                          splashColor: Colors.blue[200],
                          child: Icon(
                            Icons.add,
                            color: warnaCerah,
                          )),
                    ),
                    appBar: AppBar(
                      leading: Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.laptop_chromebook_rounded,
                            color: Colors.white,
                            size: 35,
                          )),
                      title: Transform(
                        transform: Matrix4.translationValues(-10.0, 0.0, 0.0),
                        child: Text(" ${user.userName} Laptop",
                            style: TextStyle(
                                color: warnaCerah,
                                fontSize: 30,
                                fontFamily: "GodoB")),
                      ),
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/laptop_page_cover.png"),
                                fit: BoxFit.fill)),
                      ),
                      automaticallyImplyLeading: false,
                      bottom: TabBar(
                          dividerColor: Colors.blue[200],
                          indicatorColor: Colors.deepPurple[300],
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          labelColor: Colors.deepPurple[300],
                          unselectedLabelColor: Colors.white.withOpacity(0.8),
                          tabs: [
                            Tab(
                                child: Text("Laptop",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "GodoB"))),
                            Tab(
                                child: Text("Verified Laptop",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "GodoB"))),
                            Tab(
                                child: Text("Not Verified Laptop",
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: "GodoB"))),
                          ]),
                    ),
                    body: TabBarView(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/laptop_page_background.jpg'),
                                  fit: BoxFit.cover)),
                          child: SingleChildScrollView(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                FutureBuilder(
                                    future: getLaptopVerified(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data != "") {
                                            if (snapshot.connectionState ==
                                                ConnectionState.done) {
                                              if (snapshot.hasData) {
                                                var laptops =
                                                    laptopsModelFromJson(
                                                        snapshot.data);
                                                return Column(
                                                  children: [
                                                    ...laptops
                                                        .map((laptop) => laptop_user_verified_card(
                                                              laptopId: laptop
                                                                  .laptopId,
                                                              laptopName: laptop
                                                                  .laptopName,
                                                              laptopPrice: double
                                                                  .parse(laptop
                                                                      .laptopPrice),
                                                              laptopProcessor:
                                                                  laptop
                                                                      .laptopProcessor,
                                                              laptopScreen: laptop
                                                                  .laptopScreen,
                                                              laptopType: laptop
                                                                  .laptopType,
                                                              laptopDescription:
                                                                  laptop
                                                                      .laptopDescription,
                                                              onDelete:
                                                                  (laptopId) {
                                                                Future<dynamic>
                                                                    laptopDetele(
                                                                        String
                                                                            laptopId) async {
                                                                  final url =
                                                                      "http://192.168.69.107/db_app_test/delete_laptop.php?laptop_id=${laptopId}";
                                                                  final uri =
                                                                      Uri.parse(
                                                                          url);
                                                                  final response =
                                                                      await http
                                                                          .get(
                                                                              uri);
                                                                  final body =
                                                                      response
                                                                          .body;
                                                                  return body;
                                                                }

                                                                laptopDetele(
                                                                        laptopId)
                                                                    .then(
                                                                        (value) {
                                                                          log(laptopId);
                                                                  laptops.removeWhere(
                                                                      (laptop) =>
                                                                          laptop
                                                                              .laptopId ==
                                                                          laptopId);
                                                                  setState(
                                                                      () {});
                                                                }).catchError(
                                                                        (error) {
                                                                  log(error
                                                                      .toString());
                                                                });
                                                              },
                                                            ))
                                                        .toList()
                                                  ],
                                                );
                                              }
                                            }
                                            return Container();
                                          } else {
                                            return Column(
                                              children: [],
                                            );
                                          }
                                        }
                                      }
                                      return CircularProgressIndicator();
                                    }),
                                FutureBuilder(
                                    future: getLaptopUnVerified(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data != "") {
                                            if (snapshot.connectionState ==
                                                ConnectionState.done) {
                                              if (snapshot.hasData) {
                                                var laptops =
                                                    laptopsModelFromJson(
                                                        snapshot.data);
                                                return Column(
                                                  children: [
                                                    ...laptops
                                                        .map((laptop) =>
                                                            laptop_user_unverified_card(
                                                              laptopId: laptop
                                                                  .laptopId,
                                                              laptopName: laptop
                                                                  .laptopName,
                                                              laptopPrice: double
                                                                  .parse(laptop
                                                                      .laptopPrice),
                                                              laptopProcessor:
                                                                  laptop
                                                                      .laptopProcessor,
                                                              laptopScreen: laptop
                                                                  .laptopScreen,
                                                              laptopType: laptop
                                                                  .laptopType,
                                                              laptopDescription:
                                                                  laptop
                                                                      .laptopDescription,
                                                              onDelete:
                                                                  (laptopId) {
                                                                Future<dynamic>
                                                                    laptopDetele(
                                                                        String
                                                                            laptopId) async {
                                                                  final url =
                                                                      "http://192.168.69.107/db_app_test/delete_laptop.php?laptop_id=${laptopId}";
                                                                  final uri =
                                                                      Uri.parse(
                                                                          url);
                                                                  final response =
                                                                      await http
                                                                          .get(
                                                                              uri);
                                                                  final body =
                                                                      response
                                                                          .body;
                                                                  return body;
                                                                }

                                                                laptopDetele(
                                                                        laptopId)
                                                                    .then(
                                                                        (value) {
                                                                  laptops.removeWhere(
                                                                      (laptop) =>
                                                                          laptop
                                                                              .laptopId ==
                                                                          laptopId);
                                                                  setState(
                                                                      () {});
                                                                }).catchError(
                                                                        (error) {
                                                                  log(error
                                                                      .toString());
                                                                });
                                                              },
                                                              onVerified:
                                                                  (laptopId) {
                                                                Future<dynamic>
                                                                    laptopVerified(
                                                                        String
                                                                            laptopId) async {
                                                                  final url =
                                                                      "http://192.168.69.107/db_app_test/verified_laptop.php?laptop_id=${laptopId}";
                                                                  final uri =
                                                                      Uri.parse(
                                                                          url);
                                                                  final response =
                                                                      await http
                                                                          .get(
                                                                              uri);
                                                                  final body =
                                                                      response
                                                                          .body;
                                                                  log(url);
                                                                  return body;
                                                                }

                                                                laptopVerified(
                                                                        laptopId);

                                                              },
                                                            ))
                                                        .toList()
                                                  ],
                                                );
                                              }
                                            }
                                            return Container();
                                          } else {
                                            return Column(
                                              children: [],
                                            );
                                          }
                                        }
                                      }
                                      return CircularProgressIndicator();
                                    }),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/laptop_page_background.jpg'),
                                  fit: BoxFit.cover)),
                          child: SingleChildScrollView(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                FutureBuilder(
                                    future: getLaptopVerified(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data != "") {
                                            if (snapshot.connectionState ==
                                                ConnectionState.done) {
                                              if (snapshot.hasData) {
                                                var laptops =
                                                    laptopsModelFromJson(
                                                        snapshot.data);
                                                return Column(
                                                  children: [
                                                    ...laptops
                                                        .map((laptop) =>
                                                            laptop_user_verified_card(
                                                              laptopId: laptop
                                                                  .laptopId,
                                                              laptopName: laptop
                                                                  .laptopName,
                                                              laptopPrice: double
                                                                  .parse(laptop
                                                                      .laptopPrice),
                                                              laptopProcessor:
                                                                  laptop
                                                                      .laptopProcessor,
                                                              laptopScreen: laptop
                                                                  .laptopScreen,
                                                              laptopType: laptop
                                                                  .laptopType,
                                                              laptopDescription:
                                                                  laptop
                                                                      .laptopDescription,
                                                              onDelete:
                                                                  (laptopId) {
                                                                Future<dynamic>
                                                                    laptopDetele(
                                                                        String
                                                                            laptopId) async {
                                                                  final url =
                                                                      "http://192.168.69.107/db_app_test/delete_laptop.php?laptop_id=${laptopId}";
                                                                  final uri =
                                                                      Uri.parse(
                                                                          url);
                                                                  final response =
                                                                      await http
                                                                          .get(
                                                                              uri);
                                                                  final body =
                                                                      response
                                                                          .body;
                                                                  log(url);
                                                                  return body;
                                                                }

                                                                laptopDetele(
                                                                        laptopId)
                                                                    .then(
                                                                        (value) {
                                                                  laptops.removeWhere(
                                                                      (laptop) =>
                                                                          laptop
                                                                              .laptopId ==
                                                                          laptopId);
                                                                  setState(
                                                                      () {});
                                                                }).catchError(
                                                                        (error) {
                                                                  log(error
                                                                      .toString());
                                                                });
                                                              },
                                                            ))
                                                        .toList()
                                                  ],
                                                );
                                              }
                                            }
                                            return Container();
                                          } else {
                                            return Column(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10)),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 5, right: 5),
                                                  width: double.infinity,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.purple,
                                                          width: 2.0),
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  13, 13))),
                                                  child: Column(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Icon(
                                                            Icons.laptop_sharp,
                                                            size: 70,
                                                            color: Colors.purple
                                                                .shade200,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .laptop_rounded,
                                                            size: 60,
                                                            color: Colors.white,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'You have no verified laptop ',
                                                        style: TextStyle(
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.purple
                                                              .shade200, // Added a text color
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          }
                                        }
                                      }
                                      return CircularProgressIndicator();
                                    })
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/laptop_page_background.jpg'),
                                  fit: BoxFit.cover)),
                          child: SingleChildScrollView(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                FutureBuilder(
                                    future: getLaptopUnVerified(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        if (snapshot.hasData) {
                                          if (snapshot.data != "") {
                                            if (snapshot.connectionState ==
                                                ConnectionState.done) {
                                              if (snapshot.hasData) {
                                                var laptops =
                                                    laptopsModelFromJson(
                                                        snapshot.data);
                                                return Column(
                                                  children: [
                                                    ...laptops
                                                        .map((laptop) =>
                                                            laptop_user_unverified_card(
                                                              laptopId: laptop
                                                                  .laptopId,
                                                              laptopName: laptop
                                                                  .laptopName,
                                                              laptopPrice: double
                                                                  .parse(laptop
                                                                      .laptopPrice),
                                                              laptopProcessor:
                                                                  laptop
                                                                      .laptopProcessor,
                                                              laptopScreen: laptop
                                                                  .laptopScreen,
                                                              laptopType: laptop
                                                                  .laptopType,
                                                              laptopDescription:
                                                                  laptop
                                                                      .laptopDescription,
                                                              onDelete:
                                                                  (laptopId) {
                                                                Future<dynamic>
                                                                    laptopDetele(
                                                                        String
                                                                            laptopId) async {
                                                                  final url =
                                                                      "http://192.168.69.107/db_app_test/delete_laptop.php?laptop_id=${laptopId}";
                                                                  final uri =
                                                                      Uri.parse(
                                                                          url);
                                                                  final response =
                                                                      await http
                                                                          .get(
                                                                              uri);
                                                                  final body =
                                                                      response
                                                                          .body;
                                                                  return body;
                                                                }

                                                                laptopDetele(
                                                                        laptopId)
                                                                    .then(
                                                                        (value) {
                                                                  laptops.removeWhere(
                                                                      (laptop) =>
                                                                          laptop
                                                                              .laptopId ==
                                                                          laptopId);
                                                                  setState(
                                                                      () {});
                                                                }).catchError(
                                                                        (error) {
                                                                  log(error
                                                                      .toString());
                                                                });
                                                              },
                                                            ))
                                                        .toList()
                                                  ],
                                                );
                                              }
                                            }
                                            return Container();
                                          } else {
                                            return Column(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10)),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 5, right: 5),
                                                  width: double.infinity,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.purple,
                                                          width: 2.0),
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.elliptical(
                                                                  13, 13))),
                                                  child: Column(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Icon(
                                                            Icons.laptop_sharp,
                                                            size: 70,
                                                            color: Colors.purple
                                                                .shade200,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .laptop_rounded,
                                                            size: 60,
                                                            color: Colors.white,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'You have no not verified laptop ',
                                                        style: TextStyle(
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.purple
                                                              .shade200, // Added a text color
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          }
                                        }
                                      }
                                      return CircularProgressIndicator();
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            } else {
              return Center(child: Text(('no data found.')));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
