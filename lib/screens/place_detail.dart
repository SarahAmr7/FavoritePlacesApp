import 'package:flutter/material.dart';
import 'package:favorite_places/models/place.dart';
// import 'package:favorite_places/screens/map.dart';

class PlaceDetailScreen extends StatelessWidget {
  final Place place;
  const PlaceDetailScreen({super.key, required this.place});

  // String get locationImage {
  //   final lat = place.location.latitude;
  //   final lng = place.location.longitude;
  //   return 'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$lng=&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$lat,$lng&key=YOUR_API_KEY';
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            place.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
        body: Stack(
          children: [
            Image.file(
              place.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: Column(
            //     children: [
            //       GestureDetector(
            //         onTap: (){
            //           Navigator.of(context).push(MaterialPageRoute(builder: (context) => MapScreen(location: place.location, isSelecting: false)));
            //         },
            //         child: CircleAvatar(
            //           radius: 70,
            //           backgroundImage: NetworkImage(locationImage),
            //         ),
            //       ),
            //       Container(
            //         alignment: Alignment.center,
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 24,
            //           vertical: 16,
            //         ),
            //         decoration: const BoxDecoration(
            //           gradient: LinearGradient(
            //             colors: [
            //               Colors.transparent,
            //               Colors.black54,
            //             ],
            //             begin: Alignment.topCenter,
            //             end: Alignment.bottomCenter,
            //           ),
            //         ),
            //         child: Text(
            //           place.location.address,
            //           textAlign: TextAlign.center,
            //           style: Theme.of(context).textTheme.titleLarge!.copyWith(
            //                 color: Theme.of(context).colorScheme.primary,
            //               ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ));
  }
}
