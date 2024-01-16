

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_aplikasi/models/laptops_model.dart';

import 'package:test_aplikasi/pages/user_page.dart';

import 'package:test_aplikasi/widgets/laptop_recommendation_card.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Future<SharedPreferences> _getSharedPreferences(BuildContext context) async {
 return await SharedPreferences.getInstance();
}
  Future<dynamic> getLaptop() async {
    const url = "http://192.168.69.107//db_app_test/api.php?order_id=0";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    await Future.delayed(Duration(seconds: 1));
    final body = response.body;
    return body;
  }

  Future<dynamic> getUserVerified() async {
    final url =
        "http://192.168.69.107/db_app_test/user_info.php?user_email=${finalUserEmail}";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    return body;
  }
  

  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        foregroundColor: Colors.black,
        surfaceTintColor: Colors.blue,
        title: Row(
          children: [
            Text("Pinjam Dulu",
                style: TextStyle(
                    fontFamily: "GodoB", fontSize: 25, color: Colors.white)),
            Padding(padding: EdgeInsets.only(left: 115)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserPage()));
                },
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
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: 500,
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/laptop_page_background.jpg",
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(25, 25),
                    bottomRight: Radius.elliptical(25, 25))),
          ),
          SingleChildScrollView(
              padding: EdgeInsets.only(left: 7, right: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 10,
                  )),
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    width: 400,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.white,
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        controller: _searchController,
                        scrollPadding: EdgeInsets.only(top: 10),
                        onChanged: (value) {
                          print('Value: $value');
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10),
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.blue),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                          suffixIcon: IconButton(
                            onPressed: _clearSearch,
                            icon: Icon(Icons.clear, color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10, left: 10, bottom: 5),
                      child: Text(
                        "Browse categories",
                        style: TextStyle(
                          fontFamily: "GodoB",
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )),
                  CustomDivider(width: 500),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    color: Colors.transparent,
                    height: 62,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 5)),
                        InkWell(
                          onTap: () {
                            print('Container tapped');
                          },
                          child: Container(
                            width: 63,
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              elevation: 3,
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 5)),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/gaming_laptop_icon.png"),
                                  ),
                                  Flexible(
                                      child: Text(
                                    "Gaming",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: Colors.blue,
                                        fontSize: 8),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        InkWell(
                          onTap: () {
                            print('Container tapped');
                          },
                          child: Container(
                            width: 65,
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              elevation: 3,
                              child: (Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 35,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/notebook_laptop_icon.png"),
                                  ),
                                  Flexible(
                                      child: Text(
                                    "Notebook",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: Colors.blue,
                                        fontSize: 8),
                                  ))
                                ],
                              )),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        InkWell(
                          onTap: () {
                            print('Container tapped');
                          },
                          child: Container(
                            width: 65,
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              elevation: 3,
                              child: (Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 8)),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 37,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/netbook_laptop_icon.png"),
                                  ),
                                  Flexible(
                                      child: Text(
                                    "Netbook",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: Colors.blue,
                                        fontSize: 9),
                                  ))
                                ],
                              )),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        InkWell(
                          onTap: () {
                            print('Container tapped');
                          },
                          child: Container(
                            width: 85,
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              elevation: 3,
                              child: (Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 7)),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 38,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/business_laptop_icon.png"),
                                  ),
                                  Flexible(
                                      child: Text(
                                    "Business Laptop",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: Colors.blue,
                                        fontSize: 9),
                                  ))
                                ],
                              )),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        InkWell(
                          onTap: () {
                            print('Container tapped');
                          },
                          child: Container(
                            width: 85,
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              elevation: 3,
                              child: (Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 7)),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 38,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/tablet_laptop_icon.png"),
                                  ),
                                  Flexible(
                                      child: Text(
                                    "Tablet Laptop",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: Colors.blue,
                                        fontSize: 9),
                                  ))
                                ],
                              )),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        InkWell(
                          onTap: () {
                            print('Container tapped');
                          },
                          child: Container(
                            width: 75,
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                              elevation: 3,
                              child: (Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    height: 35,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/touch_screen_laptop_icon.png"),
                                  ),
                                  Flexible(
                                      child: Text(
                                    "Touch Screen",
                                    style: TextStyle(
                                        fontFamily: "GodoB",
                                        color: Colors.blue,
                                        fontSize: 9),
                                  ))
                                ],
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "Recommendation",
                        style: TextStyle(
                            fontFamily: "GodoB",
                            fontSize: 15,
                            color: Colors.white),
                      )),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  CustomDivider(width: 500),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  FutureBuilder(
                      future: getLaptop(),
                      builder: (context, snapshot) {
                        // log(snapshot.toString());
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasData) {
                            var laptops = laptopsModelFromJson(snapshot.data!);
                            // log(laptops.toString());
                            return Column(
                              children: [
                                ...laptops
                                    .map((laptop) => LaptopRecommendationCard(
                                        laptopId: laptop.laptopId,
                                        laptopName: laptop.laptopName,
                                        laptopPrice:
                                            int.parse(laptop.laptopPrice),
                                        laptopProcessor: laptop.laptopProcessor,
                                        laptopScreen: laptop.laptopScreen,
                                        laptopType: laptop.laptopType,
                                        laptopDescription:
                                            laptop.laptopDescription,
                                            laptopGambar: laptop.laptopGambar,))
                                    .toList()
                              ],
                            );
                          }

                          return Container();
                        }

                        return Container(
                          padding: EdgeInsets.only(top: 160),
                          child: Center(
                            child: CircularProgressIndicator(
                                color: Colors.blue.shade200),
                          ),
                        );
                      }),
                ],
              )),
        ],
      ),
    );
  }
}
