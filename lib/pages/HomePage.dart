import 'package:findhouse/models/space.dart';
import 'package:findhouse/models/tips.dart';
import 'package:findhouse/widgets/bottom_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:findhouse/models/city.dart';
import 'package:findhouse/widgets/city_card.dart';
import 'package:findhouse/widgets/text_card.dart';
import 'package:findhouse/theme.dart';

import '../widgets/space_card.dart';
import '../widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE : Title
            TextCard(
              label: 'Explore Now',
              fontSize: 24,
              textStyle: blackTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            TextCard(
              label: 'Mencari kosan yang cozy',
              fontSize: 16,
              textStyle: greyTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Popular City',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              // NOTE : Popular city
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 2,
                        name: 'Malang',
                        imageUrl: 'assets/city2.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 3,
                        name: 'Kediri',
                        imageUrl: 'assets/city3.png',
                        isPopular: false),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/space1.png',
                      city: 'Bandung',
                      country: 'Germany',
                      price: 52,
                      rating: 3,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/space2.png',
                      city: 'Seattle',
                      country: 'Bogor',
                      price: 11,
                      rating: 5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Kos antok',
                      imageUrl: 'assets/space3.png',
                      city: 'Kediri',
                      country: 'Indonesia',
                      price: 15000,
                      rating: 3,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TipsCard(
              tips: Tips(
                  id: 1,
                  title: 'City Guidelines',
                  imageUrl: 'assets/tips1.png',
                  updateAt: '20 Apr'),
            ),
            SizedBox(
              height: 20,
            ),
            TipsCard(
              tips: Tips(
                  id: 2,
                  title: 'Jakarta Fairship',
                  imageUrl: 'assets/tips2.png',
                  updateAt: '11 Dec'),
            ),
            SizedBox(
              height: 70 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: Color(0xFFF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: true,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
