import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  final String label;
  const HeadingSection({
    required this.label,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        bottom: 15.0,
        right: 20.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$label",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold
          )),
          Text("See All",
              style: Theme.of(context).textTheme.bodySmall)
        ],
      ),
    );
  }
}
