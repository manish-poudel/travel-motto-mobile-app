import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_motto/models/photo_tips/photo_tips.dart';
import 'package:travel_motto/widgets/current_pageview_identifier.dart';

class PhotoTipsViewer extends StatefulWidget {
  final List<PhotoTips> photoTips;
  final String? textHeading;
  final Function()? onCloseButtonPressed;
  const PhotoTipsViewer(
      {super.key,
      required this.photoTips,
      this.onCloseButtonPressed,
      this.textHeading});

  @override
  State<PhotoTipsViewer> createState() => _PhotoTipsViewerState();
}

class _PhotoTipsViewerState extends State<PhotoTipsViewer> {
  int currentPos = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
            itemCount: widget.photoTips.length,
            onPageChanged: (currentPage) {
              setState(() {
                currentPos = currentPage + 1;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                  ),
                  child: ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.grey,
                      BlendMode.dst,
                    ),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.gif',
                      placeholderFit: BoxFit.scaleDown,
                      image: widget.photoTips[index].photoUrl,
                      fit: BoxFit.fill,
                    ),
                  ));
            }),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: CurrentPageViewIdentifier(
                                size: widget.photoTips.length,
                                currentPos: currentPos),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: widget.onCloseButtonPressed,
                          icon: const Icon(
                            Icons.close_sharp,
                            color: Colors.white,
                            size: 32,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AnimatedOpacity(
                      // If the widget is hidden, animate to 1.0 (fully visible).
                      opacity: widget.textHeading != null && currentPos == 1
                          ? 1.0
                          : 0.0,
                      duration: const Duration(milliseconds: 200),
                      child: Text(
                        widget.textHeading!,
                        style: const TextStyle(
                            fontSize: 32,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AnimatedOpacity(
                      opacity: 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16.0)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.photoTips[currentPos - 1].text,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
