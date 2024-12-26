import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashBodyView extends StatelessWidget {
  const SplashBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // stretch => it will take all available space width
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo ),
        const SizedBox(height: 5,),
       const Text("Read Free Books" , textAlign: TextAlign.center,)
      ],
    );
  }
}
