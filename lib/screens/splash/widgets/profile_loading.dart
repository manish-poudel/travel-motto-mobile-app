import 'package:flutter/material.dart';

class ProfileLoading extends StatelessWidget {
  final bool showText;
  const ProfileLoading({super.key, this.showText = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "TravelMotto",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 42,
                  color: Color(0xffffefcd)),
            ),
            Visibility(
              visible: showText,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(
                        strokeWidth: 4,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "loading traveller's data",
                      style:
                          TextStyle(fontFamily: 'Poppins', color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
