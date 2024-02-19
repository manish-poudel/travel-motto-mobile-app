import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/models/current_travel.dart/current_travel.dart';
import 'package:travel_motto/utils/datetime_utils.dart';
import 'package:travel_motto/widgets/current_pageview_identifier.dart';
import 'package:travel_motto/widgets/tm_textbutton_icon.dart';

class YourCurrentTravel extends StatefulWidget {
  final CurrentTravel currentTravel;
  final Function() onViewPhoto;
  final Function() onStopViewPhoto;
  const YourCurrentTravel(
      {super.key,
      required this.currentTravel,
      required this.onStopViewPhoto,
      required this.onViewPhoto});

  @override
  State<YourCurrentTravel> createState() => _YourCurrentTravelState();
}

class _YourCurrentTravelState extends State<YourCurrentTravel> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return widget.currentTravel.photos.pexelsPhotos.isEmpty
        ? Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/travel_placeholder.jpg',
                            height: 300,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TMTextButtonWithIcon(
                              color: Colors.green.withOpacity(0.8),
                              iconData: Icons.location_city,
                              onPressed: widget.onViewPhoto,
                              text: "View photo"),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.currentTravel.travel.status == "not_started"
                            ? "You are set to travel to"
                            : "Currently traveling to",
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        widget.currentTravel.travel.endFullAddress,
                        //textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      widget.currentTravel.travel.status == "started"
                          ? const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: SizedBox.shrink(),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_month_sharp,
                                    size: 14,
                                    color: Colors.black54,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      DateTimeUtils.formattedDate(widget
                                          .currentTravel.travel.startDate),
                                      //textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      widget.currentTravel.remainingTravelDistance == null ||
                              widget.currentTravel.travel.status ==
                                  "not_started"
                          ? const SizedBox.shrink()
                          : Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.place,
                                    size: 14,
                                    color: Colors.black54,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "Remaining distance: ${widget.currentTravel.remainingTravelDistance!.round()}m",
                                      //textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      widget.currentTravel.completedCheckList == null
                          ? const SizedBox.shrink()
                          : Row(
                              children: [
                                const Icon(
                                  Icons.check_box,
                                  size: 14,
                                  color: Colors.black54,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "Checklist completed: ${widget.currentTravel.completedCheckList}/${widget.currentTravel.travel.checkList?.length}",
                                    //textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: TextButton(
                        onPressed: () {
                          context.push('/current_travel',
                              extra: widget.currentTravel);
                        },
                        child: Text(
                          "View more details",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          )
        : Card(
            elevation: 1,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Card(
                            elevation: 0,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: SizedBox(
                                height: 240,
                                width: double.infinity,
                                child: PageView.builder(
                                    onPageChanged: (cp) {
                                      setState(() {
                                        currentPage = cp + 1;
                                      });
                                    },
                                    scrollDirection: Axis.horizontal,
                                    itemCount: widget.currentTravel.photos
                                        .pexelsPhotos.length,
                                    itemBuilder: (context, index) {
                                      return Center(
                                          child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: Colors.grey[100],
                                        child: Stack(
                                          children: [
                                            Image.network(
                                              widget
                                                  .currentTravel
                                                  .photos
                                                  .pexelsPhotos[index]
                                                  .src
                                                  .landscape,
                                              height: 300,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ],
                                        ),
                                      ));
                                    }),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: CurrentPageViewIdentifier(
                                    size: widget.currentTravel.photos
                                        .pexelsPhotos.length,
                                    currentPos: currentPage),
                              ),
                            ),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Pexels photo",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                              Text(
                                "Photographer: ${widget.currentTravel.photos.pexelsPhotos[currentPage - 1].photographer}",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 11),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 8.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.currentTravel.travel.status == "not_started"
                              ? "You are set to travel to"
                              : "Currently traveling to",
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Text(
                          widget.currentTravel.travel.endFullAddress,
                          //textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),
                        widget.currentTravel.travel.status == "started"
                            ? const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: SizedBox.shrink(),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_month_sharp,
                                      size: 14,
                                      color: Colors.black54,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        DateTimeUtils.formattedDate(widget
                                            .currentTravel.travel.startDate),
                                        //textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        widget.currentTravel.remainingTravelDistance == null ||
                                widget.currentTravel.travel.status ==
                                    "not_started"
                            ? const SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.place,
                                      size: 14,
                                      color: Colors.black54,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        "Remaining distance: ${widget.currentTravel.remainingTravelDistance!.round()}m",
                                        //textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        widget.currentTravel.completedCheckList == null
                            ? const SizedBox.shrink()
                            : Row(
                                children: [
                                  const Icon(
                                    Icons.check_box,
                                    size: 14,
                                    color: Colors.black54,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "Checklist completed: ${widget.currentTravel.completedCheckList}/${widget.currentTravel.travel.checkList?.length}",
                                      //textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: TextButton(
                          onPressed: () {
                            context.push('/current_travel',
                                extra: widget.currentTravel);
                          },
                          child: Text(
                            "View more details",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  // Divider(
                  //   thickness: 2,
                  //   color: Colors.grey.shade200,
                  // )
                ]),
          );
  }
}
