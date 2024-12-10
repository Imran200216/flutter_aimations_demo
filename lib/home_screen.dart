import 'package:flutter/material.dart';
import 'package:flutter_aimations_demo/animations/fade_animation/fade_in_animation.dart';
import 'package:flutter_aimations_demo/animations/flip_animation/flip_animation.dart';
import 'package:flutter_aimations_demo/animations/glow_animation/glow_animation.dart';
import 'package:flutter_aimations_demo/animations/hero_animation/hero_animation.dart';
import 'package:flutter_aimations_demo/animations/hover_animation/hover_animation.dart';
import 'package:flutter_aimations_demo/animations/lottie_animation/lottie_animation.dart';
import 'package:flutter_aimations_demo/animations/ripple_animation/ripple_animation.dart';
import 'package:flutter_aimations_demo/animations/rive_animations/rive_animation.dart';
import 'package:flutter_aimations_demo/animations/shimmer_animations/shimmer_animation.dart';
import 'package:flutter_aimations_demo/animations/staggered_animation/staggered_animation.dart';
import 'package:flutter_aimations_demo/components/custom_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// to find the device width
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Animation List"),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 30,
            bottom: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// mobile animations
              sizeWidth <= 1024
                  ? Column(
                      children: [
                        /// hero animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const HeroAnimation();
                              },
                            ));
                          },
                          btnText: "Hero animation",
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        /// flip animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const FlipAnimation();
                              },
                            ));
                          },
                          btnText: "Flip animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// lottie animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const LottieAnimation();
                              },
                            ));
                          },
                          btnText: "Lottie animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// rive animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const RiveAnimation();
                              },
                            ));
                          },
                          btnText: "Rive animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// staggered animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const StaggeredAnimation();
                              },
                            ));
                          },
                          btnText: "Staggered animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// fade types animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const FadeInAnimation();
                              },
                            ));
                          },
                          btnText: "Fade in animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// shimmer animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const ShimmerAnimation();
                              },
                            ));
                          },
                          btnText: "Shimmer animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// glow animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const GlowAnimation();
                              },
                            ));
                          },
                          btnText: "Glow animation",
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        /// ripple animation
                        CustomBtn(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const RippleAnimation();
                              },
                            ));
                          },
                          btnText: "Ripple animation",
                        ),
                      ],
                    )
                  : const SizedBox(),

              const SizedBox(
                height: 20,
              ),

              /// web animations
              sizeWidth >= 1024
                  ? CustomBtn(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const HoverAnimation();
                          },
                        ));
                      },
                      btnText: "Hover Animation",
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
