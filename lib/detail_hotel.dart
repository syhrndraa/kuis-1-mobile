import 'package:flutter/material.dart';


class DetailHotel extends StatefulWidget {
  final String hotelName, location, stars, link;
  // final int stars;

  const DetailHotel({Key? key,
    required this.hotelName,
    required this.stars,
    required this.location,
    required this.link,
    // required this.iconFacility
  }) : super(key: key);

  @override
  _DetailHotelState createState() => _DetailHotelState();
}

class _DetailHotelState extends State<DetailHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.hotelName}"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                "Rating : ${widget.stars}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Location : ${widget.location}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 48,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Website"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
