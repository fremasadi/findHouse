import 'package:flutter/material.dart';

import '../models/tips.dart';
import '../theme.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({
    required this.tips,
  });

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: edge),
      child: Row(
        children: [
          Container(
            child: Image.asset(
              tips.imageUrl,
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tips.title,
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                Text(
                  'Updated ${tips.updateAt}',
                  style: greyTextStyle,
                )
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              size: 24,
              color: greyColor,
            ),
          )
        ],
      ),
    );
  }
}
