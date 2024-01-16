import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/detail_pinjam_laptop.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class LaptopRecommendationCard extends StatelessWidget {
  final String laptopId;
  final String laptopName;
  final int laptopPrice;
  final String laptopProcessor;
  final String laptopScreen;
  final String laptopType;
  final String laptopDescription;
  final String laptopGambar;
  const LaptopRecommendationCard({
    required this.laptopId,
    required this.laptopName,
    required this.laptopPrice,
    required this.laptopProcessor,
    required this.laptopScreen,
    required this.laptopType,
    required this.laptopDescription,
    required this.laptopGambar,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {

    return Container(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DetailPinjamLaptop(laptopId: laptopId)));
        },
        child: Card(
          surfaceTintColor: Colors.transparent,
          elevation: 5,
          child: Column(
            children: [
              Container(padding: EdgeInsets.only(top: 5)),
              ListTile(
                leading: SizedBox(
                  width: 50,
                  height: 40,
                  child: Placeholder()
                ),
                title: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(padding: EdgeInsets.only(top: 0)),
                      Text("${laptopName}",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: "GodoB",
                              color: Colors.blue)),
                      Container(
                          child: Text("${laptopType}",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 11,
                                fontFamily: "GodoB",
                              )))
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerLeft,
                  child: Text("Rp.${laptopPrice} / Week",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "GodoB",
                          color: Colors.red.withOpacity(0.9)))),
              Container(padding: EdgeInsets.only(top: 5)),
              CustomDivider(width: double.infinity),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
                  ),
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Layar",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 13,
                                    fontFamily: "GodoB")),
                            Text("${laptopScreen}'",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "GodoB",
                                    color: Colors.black.withOpacity(0.6))),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            color: Colors.black.withOpacity(0.7),
                            height: 43,
                            width: 1,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Prosesor",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 13,
                                      fontFamily: "GodoB")),
                              Text("${laptopProcessor}",
                              textWidthBasis: TextWidthBasis.longestLine,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontFamily: "GodoB",
                                      color: Colors.black.withOpacity(0.7),)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            Flexible(
                                child: Text(
                              "${laptopDescription}",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'GodoB',
                                  color: Colors.black.withOpacity(0.6)),
                            ))
                          ],
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(top: -10, right: 11),
                        title: Container(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              width: 82,height: 30,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                          ContinuousRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(13, 13)))),
                                      elevation: MaterialStatePropertyAll(5),
                                      side: MaterialStateProperty.all(
                                          BorderSide(color: Colors.blue.withOpacity(0.5))),
                                      surfaceTintColor:
                                          MaterialStatePropertyAll(
                                              Colors.white)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailPinjamLaptop(
                                                    laptopId: laptopId)));
                                  },
                                  child: Text(
                                    "Pinjam",
                                    style: TextStyle(
                                      fontFamily: "GodoB",
                                      color: Colors.blue.withOpacity(0.7),
                                      fontSize: 10
                                      // color: Colors.blue[200],
                                    ),
                                  ))),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
