import 'package:flutter/material.dart';
import 'package:wisata_dicoding/DetailsScreen.dart';
import 'package:wisata_dicoding/Packages/TempatWisata.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wisata Alam"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final TempatWisata place = TempatWisataList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailsScreen(place: place,);
                }));
              },
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: Image.asset(place.imageAsset!)),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(place.name!),
                            SizedBox(
                              height: 10,
                            ),
                            Text(place.location!)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: TempatWisataList.length,
        ));
  }
}
