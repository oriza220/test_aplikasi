import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/add_laptop.dart';
import 'package:test_aplikasi/pages/detail_laptop.dart';
import 'package:test_aplikasi/pages/detail_laptop_unverified.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPage();
}

class _TransactionPage extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Container(
                padding: EdgeInsets.only(left: 13),
                child: Icon(
                  Icons.payment,
                  size: 45,
                  color: Colors.white,
                )),
            title: Transform(
              transform: Matrix4.translationValues(-5.0, 0.0, 0.0),
              child: Text("Transaction List",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: "GodoB")),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/798745994103095322/1183056667500359720/Untitled-10.png?ex=6586f261&is=65747d61&hm=8a3bdca4b2ec5564cd39a74b8b7d6ad848229149d3fd78df08c709e9cb09c551&"),
                      fit: BoxFit.fill)),
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(
                splashBorderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(13, 13),
                    topRight: Radius.elliptical(13, 13)),
                labelColor: Colors.blue.withOpacity(0.8),
                unselectedLabelColor: Colors.white.withOpacity(0.85),
                dividerColor: Colors.blue[200],
                indicatorColor: Colors.blue.withOpacity(0.8),
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                tabs: [
                  Tab(
                      child: Text("All Transaction",
                          style: TextStyle(fontSize: 15, fontFamily: "GodoB"))),
                  Tab(
                      child: Text(" Using ",
                          style: TextStyle(fontSize: 15, fontFamily: "GodoB"))),
                  Tab(
                      child: Text("Lending",
                          style: TextStyle(fontSize: 15, fontFamily: "GodoB"))),
                ]),
          ),
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/798745994103095322/1183042630221832232/Untitled-6.jpg?ex=6586e54e&is=6574704e&hm=af15f8df40f1fa7547eb73e6c31a0822626668cbf9569d9ce96b1c2f11369a70&'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.input_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Lending",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 165,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("On Going",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 174, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 86,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Track",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.output_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Lending",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 195,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("Done",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 174, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 86,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.output_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Using",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 187,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("On Going",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 114, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 146,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Add Extra Time",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.output_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Using",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 217,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("Done",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 134, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 126,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Lend Again",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/798745994103095322/1183042630221832232/Untitled-6.jpg?ex=6586e54e&is=6574704e&hm=af15f8df40f1fa7547eb73e6c31a0822626668cbf9569d9ce96b1c2f11369a70&'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.output_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Using",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 187,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("On Going",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 114, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 146,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Add Extra Time",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.output_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Using",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 217,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("Done",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 134, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 126,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Lend Again",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/798745994103095322/1183042630221832232/Untitled-6.jpg?ex=6586e54e&is=6574704e&hm=af15f8df40f1fa7547eb73e6c31a0822626668cbf9569d9ce96b1c2f11369a70&'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.input_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Lending",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 165,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("On Going",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 174, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 86,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Track",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailLaptop()));
                          },
                          child: Card(
                            surfaceTintColor: Colors.transparent,
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15, top: 15, bottom: 10),
                                      child: Icon(
                                        Icons.output_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          top: 15,
                                          bottom: 10,
                                          right: 10),
                                      child: Text("Lending",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontFamily: "GodoB")),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: 195,
                                            top: 15,
                                            bottom: 10,
                                            right: 10),
                                        child: Text("Done",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 17,
                                              fontFamily: "GodoB",
                                            ))),
                                  ],
                                ),
                                CustomDivider(width: 385),
                                Container(padding: EdgeInsets.only(top: 10)),
                                ListTile(
                                  leading: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Placeholder(),
                                  ),
                                  title: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Date - Date",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.only(top: 0)),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Total Price",
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 15,
                                                  fontFamily: "GodoB")),
                                          Text("Rp. 123*456",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17,
                                                  fontFamily: "GodoB")),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 174, top: 10),
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 86,
                                            height: 35,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            0),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue,
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
