// FutureBuilder(
//                                     future: getLaptop(),
//                                     builder: (context, snapshot) {
//                                       if (snapshot.connectionState ==
//                                           ConnectionState.done) {
//                                         if (snapshot.hasData) {
//                                           if(snapshot.data is List<dynamic>){}
//                                           var laptop =
//                                               laptopFromJson(snapshot.data!);
//                                           log(snapshot.data.toString());
//                                           if (laptop.laptopName != null) {
//                                             if (snapshot.data != null ||
//                                                 snapshot.data != "") {
//                                               var laptops =
//                                                   laptopsModelFromJson(
//                                                       snapshot.data!);
//                                               return Column(
//                                                 children: [
//                                                   ...laptops
//                                                       .map((laptop) => laptop_user_verified_card(
//                                                           laptopId:
//                                                               laptop.laptopId,
//                                                           laptopName:
//                                                               laptop.laptopName,
//                                                           laptopPrice:
//                                                               double.parse(laptop
//                                                                   .laptopPrice),
//                                                           laptopProcessor: laptop
//                                                               .laptopProcessor,
//                                                           laptopScreen: laptop
//                                                               .laptopScreen,
//                                                           laptopType:
//                                                               laptop.laptopType,
//                                                           laptopDescription: laptop
//                                                               .laptopDescription))
//                                                       .toList()
//                                                 ],
//                                               );
//                                             }
//                                           } else {
//                                             return Column(
//                                               children: [
//                                                 Padding(
//                                                     padding: EdgeInsets.only(
//                                                         top: 10)),
//                                                 Container(
//                                                   margin: EdgeInsets.only(left: 5,right: 5),
//                                                   width: double.infinity,
//                                                   height: 120,
//                                                   decoration: BoxDecoration(
//                                                     border: Border.all(color: Colors.purple,width: 2.0),
//                                                       color: Colors.white.withOpacity(0.5),
//                                                       borderRadius:
//                                                           BorderRadius.all(
//                                                               Radius.elliptical(
//                                                                   13, 13))),
//                                                   child: Column(
//                                                     children: [
//                                                       Stack(
//                                                         children: [
//                                                           Icon(
//                                                             Icons.laptop_sharp,
//                                                             size: 70,
//                                                             color: Colors.purple
//                                                                 .shade200,
//                                                           ),
//                                                           Icon(
//                                                             Icons
//                                                                 .laptop_rounded,
//                                                             size: 60,
//                                                             color: Colors.white,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       SizedBox(height: 5),
//                                                       Text(
//                                                         'No Laptops found',
//                                                         style: TextStyle(
//                                                           fontSize: 24,
//                                                           fontWeight:
//                                                               FontWeight.bold,
//                                                           color: Colors.purple
//                                                               .shade200, // Added a text color
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             );
//                                           }
//                                         }

//                                         return Container();
//                                       }

//                                       return Container(
//                                         padding: EdgeInsets.only(top: 160),
//                                         child: Center(
//                                           child: CircularProgressIndicator(
//                                               color: Colors.white),
//                                         ),
//                                       );
//                                     }),