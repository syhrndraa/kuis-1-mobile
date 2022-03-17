import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_hotel.dart';
import 'data_hotel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final DataHotel hotel = hotelList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailHotel(
                  hotelName: hotel.name,
                  stars: hotel.stars,
                  location: hotel.location,
                  link: hotel.websiteLink,
                  // iconFacility: hotel.iconFacility,
                );
              }));
            },
            child: Card(
              child: Row(
                // children: [
                //   Image.network(hotel.imageUrl[0],width: 64,),
                //   Text(hotel.name),
                //   Text(hotel.roomPrice)
                // ],
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 600.0,
                        height: 250.0,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(hotel.imageUrl[0]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: 600.0,
                        height: 250.0,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30, left: 30),
                        child: Row(
                          children: [
                            Text(
                              hotel.name,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 70, left: 30),
                        child: Row(
                          children: [
                            Text(
                              hotel.roomPrice,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: hotelList.length,
      ),
      // body: GridView.builder(
      //   gridDelegate:
      //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   itemBuilder: (context, index) {
      //     final TourismPlace place = tourismPlaceList[index];
      //     return InkWell(
      //       onTap: () {
      //         Navigator.push(context, MaterialPageRoute(builder: (context) {
      //           return HomePage(username: place.name);
      //         }));
      //       },
      //       child: Container(
      //         child: Column(
      //           children: [
      //             Expanded(
      //                 child: Container(
      //               padding: const EdgeInsets.all(10),
      //               child: Image.network(
      //                 place.imageUrls[0],
      //                 width: 600,
      //               ),
      //             )),
      //             Expanded(
      //                 child: Container(
      //                     padding: const EdgeInsets.all(10),
      //                     child: Column(
      //                       children: [
      //                         Text(
      //                           place.name,
      //                           style: TextStyle(
      //                             fontSize: 12,
      //                             fontWeight: FontWeight.bold,
      //                           ),
      //                         ),
      //                         Text(
      //                           "Location : ${(place.location)}",
      //                           textAlign: TextAlign.center,
      //                           style: TextStyle(
      //                             fontSize: 12,
      //                             fontStyle: FontStyle.italic,
      //                             color: Colors.grey,
      //                           ),
      //                         ),
      //                         Text(
      //                           "Description : ${(place.description.substring(0, 30))}",
      //                           textAlign: TextAlign.center,
      //                           style: TextStyle(
      //                             fontSize: 12,
      //                             color: Colors.blue,
      //                           ),
      //                         ),
      //                       ],
      //                     ))),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      //   itemCount: tourismPlaceList.length,
      // ),
    );
  }
}
