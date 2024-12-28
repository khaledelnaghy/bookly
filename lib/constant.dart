import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff100B20);
const kTranstionDuration = Duration(milliseconds: 250);
const kGtSectraFine = 'GT Sectra Fine';

class PaddingHorizontal extends StatelessWidget {
  const PaddingHorizontal({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: child,
    );
  }
}
