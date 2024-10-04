import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_pallete.dart';

class Explorescreen extends StatelessWidget {
  const Explorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:  Container(
          padding: EdgeInsets.all(10.0),

          decoration: BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(
                  color: AppPallete.darkGrey,
                  width: 1
              )
          ),
          child: SvgPicture.asset(
            'images/burger.svg',
            colorFilter: ColorFilter.mode(
                AppPallete.txtGrey, BlendMode.srcIn),
            width: 50.0,
          ),
        ),
      ),
    );
  }
}
