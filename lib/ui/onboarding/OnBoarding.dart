import 'package:flutter/material.dart';
import 'package:three_monkeys/ui/onboarding/widgets/Dot.dart';
import 'package:three_monkeys/ui/sign_up/SignUp.dart';
import 'package:three_monkeys/ui/theme/app_pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:    Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: [
                          Text("Quick delivery at \n your Doorstep",
                            textAlign: TextAlign.center,

                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  height: 1.2,

                  fontSize: 30.0

                            ),

                          ),
                          SizedBox(height: 20,),

                          Text("Pick your desired food from the menu\n There are more than 66 items",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppPallete.txtGrey,
                  fontSize: 23,
                  height: 1.2
                            ),)
                  ],
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

          SvgPicture.asset(
            width: 400,
              "images/onboard.svg",
          ),


             Spacer(
               flex: 1,
             ),
             Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Back",
                       style: Theme.of(context).textTheme.bodySmall!.copyWith(
                           color: AppPallete.txtGrey,
                           fontWeight: FontWeight.w500,
                           fontSize: 20
                       ),
                     ),
                     ControlButton(),
                     Text("Next",
                       style: Theme.of(context).textTheme.bodySmall!.copyWith(
                           color: AppPallete.txtGrey,
                           fontWeight: FontWeight.w500,
                           fontSize: 20
                       ),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 25.0,
                 ),
                 SizedBox(
                   width: double.infinity, // This makes the button take up the full width
                   child: ElevatedButton(
                     onPressed: ()=>Navigator.push(context,
                     Signup.route()),
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15), // Adjust the radius for more or less rounding
                       ),
                     ),
                     child: Text(
                       "Sign Up",
                       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                         fontSize: 23,
                         fontWeight: FontWeight.w600
                       ),
                     ),
                   ),
                 )
               ],
             )




            ],
          ) ),
        ),

    );
  }
}


Widget ControlButton(){
  return Container(
    width: 100.0,
    child: const Row(

      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        Dot( color: AppPallete.primary,),
        Dot(color: AppPallete.txtGrey,),
        Dot(color: AppPallete.txtGrey,)
      ],
    ),
  );
}

// Text("home",
// style: Theme.of(context).textTheme.titleLarge,)