import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:three_monkeys/utils/constants.dart';

import '../../theme/app_pallete.dart';


class Carousellarge extends StatefulWidget {
  const Carousellarge({super.key});

  @override
  State<Carousellarge> createState() => _CarousellargeState();
}

class _CarousellargeState extends State<Carousellarge> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Adding post-frame callback to ensure the widget is built before scrolling
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToPosition();
    });
  }

  void _scrollToPosition() {
    // Animate the scroll when the page is loaded
    _scrollController.animateTo(
      100.0, // Scroll position in pixels (adjust as needed)
      duration: Duration(seconds: 2), // Animation duration
      curve: Curves.easeInOut, // Animation curve
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController, // Attach the ScrollController
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products.map((product) {
          return Container(
            margin: EdgeInsets.only(right: 15.0),
            width: 350,
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0)
              ),
              border: Border.all(
                color: AppPallete.darkGrey, // Adjust color to match AppPallete.darkGrey
                width: 1,
                
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Stack(
              children: [

                ClipRRect(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),  // Adjust the radius as needed
                topRight: Radius.circular(10.0),


                          ),
                  child:
                  Image(image: NetworkImage(product.image),
                    fit: BoxFit.cover,
                    width: 350,
                    height: 180,),
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: AppPallete.whiteColor,
                      shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset(
                        "images/heart_1.svg",
                        colorFilter: ColorFilter.mode(
                            AppPallete.txtGrey, BlendMode.srcIn),
                        width: 25.0,
                        semanticsLabel: 'A red up arrow'
                    ),
                  ),
                ),
              ],
            ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0,
                      left: 10.0, right: 10.0 ,
                  bottom: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(product.name,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600
                      ),),
                      Text("Starting \$5",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: AppPallete.primary

                        ),)
                    ],
                  ),
                  
                ),
                SizedBox(height: 8.0,),

                Row(
                    children: [
                      SizedBox(width: 8.0,),
                      crumb("fish",context),
                      SizedBox(width: 8.0,),
                      crumb(product.name,context),
                      SizedBox(width: 8.0,),
                      crumb("+5",context)
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Free Delivery",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(width: 15.0,),

                      Icon(
                        Icons.watch_later,
                        color: AppPallete.greyColor,
                        size: 20,
                      ),
                      SizedBox(width: 5.0,),

                      Text(product.time,
                        style: TextStyle(
                          fontSize: 20
                        ),
                      )
                    ],
                  ),
                )


              ],
            ),
          );
        }).toList(),
      ),
    );

    @override
    void dispose() {
      _scrollController.dispose();
      super.dispose();
    }
  }
}



Widget crumb( String name, BuildContext context){

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: AppPallete.darkGrey
    ),
    child: Text("$name",
    style: Theme.of(context).textTheme.titleSmall!.copyWith(
      color: AppPallete.greyColor
    ),),
  );
}
