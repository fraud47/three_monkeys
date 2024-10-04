import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_pallete.dart';

class CustomNavigationItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomNavigationItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0
      ),
      child: GestureDetector(
          onTap: onTap,

            child:Column(
              children:[ SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(isSelected?AppPallete.primary:
                  AppPallete.txtGrey, BlendMode.srcIn),
                  width: 30.0,
                  semanticsLabel: 'A red up arrow'
              ),
              Text("$label",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: isSelected?AppPallete.primary:AppPallete.txtGrey
              ),)


              ]
            )
      ),
    );
  }
}