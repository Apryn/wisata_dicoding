import 'package:flutter/material.dart';
import 'package:wisata_dicoding/Packages/TempatWisata.dart';

class DetailsScreen extends StatelessWidget {
  final TempatWisata place;
  const DetailsScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Image.asset(place.imageAsset!),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back))
            ]),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                place.name!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.date_range),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        place.openDays!,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.lock_clock),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        place.openTime!,
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        place.ticketPrice!,
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                place.description!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
            ),
            Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: place.imageUrls!.map<Widget>((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ),
                    );
                  }).toList(),
                ))
          ],
        ),
      ),
    ));
  }
}
