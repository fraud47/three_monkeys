import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/app_pallete.dart';


class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40
      ),
      child: Row(

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Location",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  height: 1,
                    color: AppPallete.txtGrey,
                  fontSize: 20

                ),),
              Row(
                children: [
                  SvgPicture.asset(
                      'images/pin.svg',

                      width: 20.0,
                      semanticsLabel: 'A red up arrow'
                  ),
                  Text("Mbare, Matapi Area",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 20
                      )),
                  Icon(Icons.keyboard_arrow_down_outlined,
                    color: AppPallete.txtGrey,
                    size: 20,
                  )
                ],
              )
            ],
          ),


          SizedBox(width:120.0 ,),


          Container(
             padding: EdgeInsets.all(10.0),

               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 
                 border: Border.all(
                   color: AppPallete.darkGrey,
                     width: 1


                 )
               ),
             child: SvgPicture.asset(
                  'images/search_icon.svg',
                  colorFilter: ColorFilter.mode(
                  AppPallete.txtGrey, BlendMode.srcIn),
                  width: 25.0,
                  semanticsLabel: 'A red up arrow'
              ),
           ),
          SizedBox(width:10.0 ,),
          Container(
            padding: EdgeInsets.all(10.0),

            decoration: BoxDecoration(
                shape: BoxShape.circle,

                border: Border.all(
                    color: AppPallete.darkGrey,
                  width: 1
                )
            ),
            child: SvgPicture.asset(
                'images/cart_icon.svg',
                colorFilter: ColorFilter.mode(
                    AppPallete.txtGrey, BlendMode.srcIn),
                width: 25.0,
            ),
          ),


        ],
      ),
    );
  }
}
