import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:travel_motto/widgets/tm_rounded_textfield.dart';
import 'package:travel_motto/widgets/tm_textbutton_icon.dart';

class CreateGameTypeForm extends StatefulWidget {
  const CreateGameTypeForm({super.key});

  @override
  State<CreateGameTypeForm> createState() => _CreateGameTypeFormState();
}

class _CreateGameTypeFormState extends State<CreateGameTypeForm> {
  XFile? xFile;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Container(
              height: 240,
              width: double.infinity,
              color: Colors.grey[300],
              child: xFile == null
                  ? GestureDetector(
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
                        final XFile? image = await picker.pickImage(
                            source: ImageSource.gallery, imageQuality: 10);
                        setState(() {
                          xFile = image;
                        });
                      },
                      child: const Center(
                          child: Text(
                        "Tap to add image",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      )),
                    )
                  : Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.file(
                          File(xFile!.path),
                          height: 240,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TMTextButtonWithIcon(
                            borderRadius: 12,
                            color: Colors.red.withOpacity(0.8),
                            iconData: Icons.close,
                            text: "Clear",
                            onPressed: () {
                              setState(() {
                                xFile = null;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
            )),
        const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text(
            "Title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        const Text(
          "Example: Mystical Nepal, India's Hidden Treasures, etc.",
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: TMRoundedTextField(
            textInputType: TextInputType.multiline,
            hintText: "Title",
            maxLine: null,
            borderColor: Colors.black54,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text(
            "Description",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        const Text(
          "Provide a description of the game. Let users know about the journey they are embarking on, what to expect, and what they might learn.",
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: TMRoundedTextField(
            textInputType: TextInputType.multiline,
            hintText: "Description",
            maxLine: null,
            borderColor: Colors.black54,
          ),
        ),
      ],
    );
  }
}
