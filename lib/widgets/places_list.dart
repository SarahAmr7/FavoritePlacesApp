import 'package:flutter/material.dart';
import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/screens/place_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesList extends ConsumerWidget {
  final List<Place> places;
  const PlacesList({super.key, required this.places});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places yet, start adding some!',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return ListTile(
            // subtitle: Text(
            //   places[index].location.address,
            //   style: Theme.of(context).textTheme.bodySmall!.copyWith(
            //         color: Theme.of(context).colorScheme.primary,
            //       ),
            // ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      PlaceDetailScreen(place: places[index])));
            },
            leading: CircleAvatar(
              radius: 26,
              backgroundImage: FileImage(places[index].image),
            ),
            title: Text(
              places[index].title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          );
        },
      );
    }
  }
}
