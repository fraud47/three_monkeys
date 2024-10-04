import 'package:flutter/material.dart';

import '../../theme/app_pallete.dart';

class Header extends StatelessWidget {
  final String heading;
  final String subHeading;
  const Header({
    required this.heading,
    required this.subHeading,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$heading",

            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              height: 1.2,
              fontSize: 28.0

            ),

          ),

          Text("$subHeading",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppPallete.txtGrey,
              fontSize: 23,
              height: 1.2
            ),
          ),
        ],
      ),
    );
  }
}
