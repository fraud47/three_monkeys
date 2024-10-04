import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../app_pallete.dart';

class ToastsOverlayWidget extends StatefulWidget {
  const ToastsOverlayWidget({
    required this.message,
    required this.backgroundColor,
    super.key});
  final String message;
  final Color backgroundColor;

  @override
  State<ToastsOverlayWidget> createState() => _ToastsOverlayWidgetState();
}

class _ToastsOverlayWidgetState extends State<ToastsOverlayWidget>
    with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =AnimationController(vsync: this,
        duration:const Duration(seconds: 2));
    _animation = Tween(begin: 1.0,end: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {
        });
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context,height,width,sy,sx)
    {
      return Positioned(
        top: sy(20),
        left: sx(20),
        right: sx(20),
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: sx(20),
                vertical: sy(10)
            ),
            decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Text(widget.message,
                  style: TextStyle(color: AppPallete.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'AfacadFlux',
                      fontSize: sy(10)
                  ),),
                SizedBox(height: sy(2),),
                LinearProgressIndicator(
                  minHeight: 1.5,
                  value: _animation.value,
                  backgroundColor: AppPallete.whiteColor.withOpacity(0.2),
                  valueColor: AlwaysStoppedAnimation<Color>(AppPallete.whiteColor),
                )
              ],
            ),
          ),

        ),
      );
    }
    );
  }
}