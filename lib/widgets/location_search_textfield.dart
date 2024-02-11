import 'package:flutter/material.dart';
import 'package:travel_motto/models/open_street_location/os_location.dart';
import 'package:travel_motto/widgets/tm_textfield.dart';

class LocationSearchTextfield extends StatefulWidget {
  final List<OSLocation> list;
  final TextEditingController controller;
  final Color color;
  final Function(String)? onChanged;
  const LocationSearchTextfield(
      {super.key,
      required this.list,
      required this.controller,
      this.color = Colors.black,
      this.onChanged});

  @override
  State<LocationSearchTextfield> createState() =>
      _LocationSearchTextfieldState();
}

class _LocationSearchTextfieldState extends State<LocationSearchTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TMTextField(controller: widget.controller, onChanged: widget.onChanged),
      widget.list.isEmpty
          ? const SizedBox.shrink()
          : Card(
              child: Container(
                height: 200,
                color: Colors.white,
                child: ListView.separated(
                  itemCount: widget.list.length,
                  itemBuilder: (context, index) {
                    return widget.list[index].displayName == null
                        ? const SizedBox.shrink()
                        : ListTile(
                            onTap: () {
                              widget.controller.text =
                                  widget.list[index].displayName.toString();
                              setState(() {
                                widget.controller.text =
                                    widget.list[index].displayName.toString();
                                widget.list.clear();
                              });
                            },
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            contentPadding: const EdgeInsets.all(8),
                            title: Text(
                              widget.list[index].displayName ?? '',
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey.shade200,
                    );
                  },
                ),
              ),
            )
    ]);
  }
}
