import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:test_aplikasi/models/laptop_model.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';
import 'package:http/http.dart' as http;
class DetailLaptopVerified extends StatefulWidget {
  final String laptopId;
  const DetailLaptopVerified({required this.laptopId, super.key});

  @override
  State<DetailLaptopVerified> createState() => _DetailLaptopState();
}

class _DetailLaptopState extends State<DetailLaptopVerified> {
  Future<dynamic> getLaptop() async {
    final url =
        "http://192.168.69.107//db_app_test/laptop_detail.php?laptop_id=${widget.laptopId}";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    return body;
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            surfaceTintColor: Colors.blue,
            backgroundColor: Colors.transparent,
            title: Container(
              child: Text("Your Laptop"),
            )),
        floatingActionButton: SpeedDial(
          elevation: 10,
          shape: StadiumBorder(side: BorderSide(color: Colors.white)),
          activeBackgroundColor: Colors.blue[100],
          backgroundColor: Colors.blue[200],
          activeForegroundColor: Colors.white,
          foregroundColor: Colors.white,
          overlayColor: Colors.white.withOpacity(0.9),
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            
            SpeedDialChild(
              onTap: () {},
              child: SizedBox(
                  width: 100,
                  child: Center(

                    child: Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 17,
                          fontFamily: "GodoB",
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  )),
            ),
            SpeedDialChild(
              onTap: () {},
              child: SizedBox(
                  width: 100,
                  child: Center(
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        fontSize: 12,
                          fontFamily: "GodoB",
                          color: Colors.red.withOpacity(0.8)),
                    ),
                  )),
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [FutureBuilder(
            future: getLaptop(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  var laptop = laptopFromJson(snapshot.data!);
                  return Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 310,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.discordapp.com/attachments/798745994103095322/1182015240897040486/2Q.png?ex=6583287a&is=6570b37a&hm=ed12e8ee9e777abd47e0651e5750abb6dfd333674678b82cfa7c0e55d77b35d2&"),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 10),
                                )),
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      "${laptop.laptopName} ",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 25,
                                          fontFamily: "GodoB"),
                                    )),
                                Container(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 5),
                                )),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      Text("Added At - ",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontFamily: "GodoB")),
                                      Text("5 Dec 2023",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontFamily: "GodoB")),
                                    ],
                                  ),
                                ),
                                CustomDivider(width: double.infinity),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Container(
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "VERIFIED",
                            style: TextStyle(
                                color: Colors.blue.withOpacity(0.8),
                                fontSize: 20,
                                fontFamily: "GodoB",),
                          )),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      CustomDivider(width: double.infinity),
                      Padding(padding: EdgeInsets.only(top: 20)),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      "Specification :",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 20,
                                          fontFamily: "GodoB"),
                                    )),
                                    
                                Container(
                                    child: Padding(
                                  padding: EdgeInsets.only(top: 5),
                                )),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Column(
                                  children: [
                                    Container(
                                      child: Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(13, 13)),
                                        child: Column(children: [
                                          Container(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Screen",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopScreen}'",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 20, right: 20),
                                                    child: Container(
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      height: 43,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Prosesor",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopProcessor}",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            padding: EdgeInsets.fromLTRB(
                                                25, 25, 25, 0),
                                            width: double.infinity,
                                          ),
                                          Container(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Ram",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopRam} GB",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 20, right: 20),
                                                    child: Container(
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      height: 43,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Hardisk",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopHardisk} GB",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            padding: EdgeInsets.fromLTRB(
                                                25, 25, 25, 25),
                                            width: double.infinity,
                                          ),
                                          Container(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Colors",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopColor}",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 20, right: 20),
                                                    child: Container(
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      height: 43,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Laptop Age",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopAge} Y/o + -",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            padding: EdgeInsets.fromLTRB(
                                                25, 0, 25, 25),
                                            width: double.infinity,
                                          ),
                                          Container(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Type",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopType}",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 20, right: 20),
                                                    child: Container(
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      height: 43,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Laptop Condition",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                      Text(
                                                          "${laptop.laptopCondition}",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontFamily:
                                                                  "GodoB")),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            padding: EdgeInsets.fromLTRB(
                                                25, 0, 25, 25),
                                            width: double.infinity,
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "Price :",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 20,
                                    fontFamily: "GodoB"),
                              )),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            child: Material(
                              elevation: 5,
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              child: Container(
                                child: InkWell(
                                splashColor: Colors.black.withOpacity(0.1),
                                  onTap: () {},
                                  child: Text(
                                    "Rp 123.456 / Week",
                                    style: TextStyle(fontFamily: "GodoB"),
                                  ),
                                ),
                                padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return Container();
              }

              return Center(
                child: CircularProgressIndicator(),
              );
            })
                ],
            ),
          ),
        ));
  }
}
