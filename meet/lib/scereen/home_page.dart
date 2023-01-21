import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meet/scereen/details_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Welcome back'), CircleAvatar()],
            ),
            Align(
                alignment: Alignment.centerLeft, child: Text('All Categories')),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Paintings'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text('Thanka')),
                  TextButton(onPressed: () {}, child: Text('WoodWork')),
                  TextButton(onPressed: () {}, child: Text('Clothes')),
                  TextButton(onPressed: () {}, child: Text('Khukuri')),
                  TextButton(onPressed: () {}, child: Text('data'))
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Popular',
              ),
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15),
              children: [
                artItem(),
                artItem(),
                artItem(),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'For You',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15),
              children: [
                artItem(),
                artItem(),
                artItem(),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  artItem() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailsScreen()),
        );
      },
      child: Container(
        height: 600,
        width: 499,
        child: Column(
          children: [
            Image.asset(
              'assets/images/test.jpg',
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Title',
              ),
            ),
            Text('Description of this artmwork/'),
          ],
        ),
      ),
    );
  }

  bottomBar() {}
}
