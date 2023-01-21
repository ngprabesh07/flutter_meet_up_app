import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meet/widgets/custom_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/images/test.jpg"),
              Text('TPainT'),
              Text("This is a very popular painting. You can buy it right now"),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Buy Now',
                onTap: () {},
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
