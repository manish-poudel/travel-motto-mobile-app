import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:travel_motto/models/current_travel.dart/current_travel.dart';
import 'package:travel_motto/utils/datetime_utils.dart';
import 'package:travel_motto/utils/location_utils.dart';

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
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  widget.currentTravel.travel.status == "not_started"
                      ? "Currently Planning\n${widget.currentTravel.travel.name}"
                      : "Currently traveling\n${widget.currentTravel.travel.name}",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    context.push('/current_travel',
                        extra: widget.currentTravel);
                  },
                  child: const Icon(Icons.chevron_right))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: widget.currentTravel.photos.pexelsPhotos.isNotEmpty
                          ? Image.network(
                              widget.currentTravel.photos.pexelsPhotos[0].src
                                  .landscape,
                              height: 60,
                              fit: BoxFit.fill,
                            )
                          : GestureDetector(
                              onTap: widget.onViewPhoto,
                              child: Image.asset(
                                'assets/images/travel_placeholder.jpg',
                                height: 60,
                                fit: BoxFit.fill,
                              ),
                            ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                size: 14,
                                color: Colors.black54,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    widget.currentTravel.travel.endFullAddress,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    //textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          widget.currentTravel.travel.status == "started"
                              ? const Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: SizedBox.shrink(),
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_outlined,
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
                          widget.currentTravel.remainingTravelDistance ==
                                      null ||
                                  widget.currentTravel.travel.status ==
                                      "not_started"
                              ? const SizedBox.shrink()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.social_distance_rounded,
                                        size: 14,
                                        color: Colors.black54,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          "Remaining distance: ${LocationUtils.readableDistance(widget.currentTravel.remainingTravelDistance!.round())}",
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

                                        style: TextStyle(
                                          decoration: widget
                                                      .currentTravel
                                                      .travel
                                                      .checkList
                                                      ?.length ==
                                                  widget.currentTravel
                                                      .completedCheckList
                                              ? TextDecoration.lineThrough
                                              : null,
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
                  )
                ]),
          ),

          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 0.0),
          //     child: TextButton(
          //         onPressed: () {
          //           context.push('/current_travel',
          //               extra: widget.currentTravel);
          //         },
          //         child: Text(
          //           "View more details",
          //           style: TextStyle(
          //             color: Theme.of(context).primaryColor,
          //             fontSize: 12,
          //           ),
          //         )),
          //   ),
          // ),
        ],
      ),
    );
  }
}
