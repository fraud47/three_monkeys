import 'package:flutter/material.dart';
import 'package:three_monkeys/ui/navigator_screen.dart';
import 'package:three_monkeys/ui/theme/toast/ContextExtensions.dart';

import '../auth/widgets/AuthField.dart';
import '../auth/widgets/Header.dart';
import '../theme/app_pallete.dart';


class Signup extends StatefulWidget {
  static route() => MaterialPageRoute(
    builder: (context) => const Signup(),
  );
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup>  with SingleTickerProviderStateMixin  {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late Animation<double> _rotationAnimation;
  double _opacity = 0.0; // Initial opacity for fade-in

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 2), // Animation duration
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0), // Start from off the screen on the left
      end: Offset(-2.5, 0.0),    // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,  // You can change the curve as needed
    ));
    _rotationAnimation = Tween<double>(
      begin: 0.0,   // Start with no rotation
      end: 2 * 4.0, // Full 360-degree rotation (2 * π)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,  // Customize the curve
    ));
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0; // Change opacity to 1.0 to fade in the content
      });
    });

    // Start the animation when the widget is first built
    _controller.forward();
  }


  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is removed
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),

        child: AnimatedOpacity(
          opacity: _opacity, // Fade-in opacity
          duration: Duration(seconds: 1), // Duration of the fade-in effect
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SlideTransition(
                  position: _animation,
                  child: RotationTransition(
                    turns: _rotationAnimation,
                    child: Image(
                      image: AssetImage("images/logo.png"),
                      width: 70,
                    ),
                  ),
                ),
              ),
              const Header(
                heading: "Sign Up to 3 Monkeys",
                subHeading: "Give your mouth an experience it can never forget.",
              ),
              SizedBox(height: 20.0),
              AuthField(
                hintText: 'enter email',
                controller: emailController,
              ),
              SizedBox(height: 20.0),
              AuthField(
                isObscureText: true,
                hintText: 'enter password',
                controller: passwordController,
              ),
              SizedBox(height: 20.0),
              AuthField(
                isObscureText: true,
                hintText: 'Confirm password',

                controller: nameController,
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    context.notify('Sign up Success');
                        Navigator.push(context,
                        NavigatorScreen.route());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
