import 'package:flutter/material.dart';

class AddLaptop extends StatefulWidget {
  const AddLaptop({super.key});

  @override
  State<AddLaptop> createState() => AddLaptopState();
}

class AddLaptopState extends State<AddLaptop> {
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
              height: 770,
              width: 500,
              child: Image(
                image: NetworkImage(
                    "https://cdn.discordapp.com/attachments/798745994103095322/1182141656078749799/login_page_background.png?ex=65839e35&is=65712935&hm=e02decbe2213bba8a626525bfee075efa20b8da1c39a1e88dff0463ef5722664&"),
                fit: BoxFit.fill,
              )),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 10),),
                Container(
                  child: Container(
                    child: Placeholder(),
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
                    ),
                  ),
                ),
                Container(height: 10),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  height: 40,
                  width: double.infinity,
                  child: TextField(
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Laptop Name",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.2),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.2)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Row(
                  children: [
                    Container(height: 50),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 90,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Screen",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 272,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Processor",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(height: 50),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 100,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Ram",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 80,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Hardisk",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 172,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Laptop Color",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(height: 50),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 60,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Age",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 150,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Type",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                      height: 40,
                      width: 142,
                      child: TextField(
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Condition",
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.2),
                                fontFamily: 'GodoB'),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Description",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.2),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.2)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: "Price",
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.2),
                            fontFamily: 'GodoB'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.2)),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                        )),
                  ),
                ),
                 Padding(padding: EdgeInsets.only(top: 35)),
                Container(
                  padding: EdgeInsets.only(left: 260),
                  child: SizedBox(
                      width: 113,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(5, 5)))),
                              elevation: MaterialStatePropertyAll(5),
                              side: MaterialStateProperty.all(
                                  BorderSide(color: Colors.blue)),
                              surfaceTintColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(
                              fontFamily: "GodoB",
                              color: Colors.blue.withOpacity(0.7),
                              // color: Colors.blue[200],
                            ),
                          ))),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
