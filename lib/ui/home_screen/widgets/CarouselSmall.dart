import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../theme/app_pallete.dart';

class Carouselsmall extends StatefulWidget {
  const Carouselsmall({super.key});

  @override
  State<Carouselsmall> createState() => _CarouselsmallState();
}

class _CarouselsmallState extends State<Carouselsmall> {
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
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(20.0)
              ),
              border: Border.all(
                color: AppPallete.darkGrey, // Adjust color to match AppPallete.darkGrey
                width: 2,

              ),
            ),
            child: Column(
              children: [
                Text(product.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    fontSize: 23
                  ),),
                Text("\$ 5.00",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    fontSize: 23
                  ),),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),  // Adjust the radius as needed
                    topRight: Radius.circular(10.0),


                  ),
                  child:
                  Image(image: NetworkImage(products[3].image),
                    fit: BoxFit.contain,
                    width: 150,
                    height: 100,),
                ),




              ],
            ),
          );
        }).toList(),
      ),
    );


  }
}



