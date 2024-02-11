import 'package:flutter/material.dart';
import 'package:travel_motto/models/open_street_location/os_location.dart';

class PlaceListItem extends StatelessWidget {
  final OSLocation location;
  final bool isSelected;
  final void Function()? onTap;
  const PlaceListItem(
      {super.key, required this.location, this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    // String coordinates = location.lat != null && location.lon != null
    //     ? "Position: [${location.lat}, ${location.lon}]"
    //     : "";
    return ListTile(
        onTap: onTap,
        leading: VerticalDivider(
          color: Theme.of(context).primaryColor,
          thickness: isSelected ? 4 : 1,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location.displayName ?? '',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight:
                      isSelected == true ? FontWeight.w600 : FontWeight.normal),
            ),
            // Text(
            //   coordinates,
            //   style: TextStyle(
            //       fontSize: 12,
            //       color: Colors.black54,
            //       fontWeight:
            //           isSelected == true ? FontWeight.w600 : FontWeight.normal),
            // ),
          ],
        ));
  }
}
