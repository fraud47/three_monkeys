import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:three_monkeys/ui/home_screen/widgets/CarouselLarge.dart';
import 'package:three_monkeys/ui/home_screen/widgets/CarouselSmall.dart';
import 'package:three_monkeys/ui/home_screen/widgets/Categories.dart';
import 'package:three_monkeys/ui/home_screen/widgets/TopAppBar.dart';
import 'package:three_monkeys/ui/home_screen/widgets/heading_section.dart';
import 'package:three_monkeys/ui/theme/app_pallete.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                     TopAppBar(),
                SizedBox(height: 30.0,),
                Categories(),
                SizedBox(height: 30.0,),
                HeadingSection(label: "Top Dishes"),
                Carousellarge(),
                 HeadingSection(label: "Popular items"),

                Carouselsmall()
          
          
          
              ],
            ),
          ),
        )
      ),
    );
  }
}
