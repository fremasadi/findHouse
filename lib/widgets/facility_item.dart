import 'package:flutter/material.dart';

import '../theme.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem(
      {required this.name, required this.imageUrl, required this.total});

  final String name;
  final String imageUrl;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
          height: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: total.toString(),
            style: purpleTextStyle.copyWith(
              fontSize: 16,
            ),
            children: [
              TextSpan(
                text: name,
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
