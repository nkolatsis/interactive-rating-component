// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingsComponent extends StatefulWidget {
  const RatingsComponent({
    super.key,
  });

  @override
  State<RatingsComponent> createState() => _RatingsComponentState();
}

class _RatingsComponentState extends State<RatingsComponent> {
  int selectedRating = 0;
  Widget _ratingButton(int value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRating = value;
        });
      },
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              selectedRating == value ? Color(0xffFC7614) : Color(0xff262E38),
        ),
        child: Center(
          child: Text(
            value.toString(),
            style: TextStyle(
              color: selectedRating == value ? Colors.black : Color(0xff969FAD),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const text =
        'Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!';
    return Container(
      width: 327,
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: RadialGradient(
          center: Alignment.topCenter,
          radius: 1.0,
          colors: [
            Color(0xff232A34),
            Color(0xff181E27),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xff262E38),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SvgPicture.asset('assets/images/icon-star.svg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'How did we do?',
              style: GoogleFonts.overpass(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: GoogleFonts.overpass(
                color: Color(0xff969FAD),
                fontSize: 14,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ratingButton(1),
                _ratingButton(2),
                _ratingButton(3),
                _ratingButton(4),
                _ratingButton(5),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                print('Rating submitted: $selectedRating');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFC7614),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                minimumSize: Size(double.infinity, 0),
              ),
              child: Text(
                'Submit'.toUpperCase(),
                style: GoogleFonts.overpass(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
