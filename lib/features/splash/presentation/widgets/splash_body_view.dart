import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

// SingleTickerProviderStateMixin => handle rate change value to run animation
class _SplashBodyViewState extends State<SplashBodyView>
    with SingleTickerProviderStateMixin {
// AnimationController animationController => take value from 0 to 1
  late AnimationController animationController;
  //Animation object => take any values and pass it to animationController
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override

//  dispose => avoid leak memory
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // stretch => it will take all available space width
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 1.5), end: Offset.zero)
        .animate(animationController);
    // forward => run animation
    animationController.forward();
  }

  void navigateToHome() {
    // Future.delayed => navigate to HomeView after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => HomeView(),
      //     // transition => handle (simple animation to navigate) transition between pages
      //     transition: Transition.fade,
      //     duration: kTranstionDuration);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
