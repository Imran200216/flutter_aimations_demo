import 'package:flutter/material.dart';
import 'package:flutter_aimations_demo/components/custom_hover_card.dart';

class HoverAnimation extends StatelessWidget {
  const HoverAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: CustomHoverCard(
          imageUrl:
              "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?q=80&w=1966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Hi Flutter",
          subtitle: "I'm a flutter dev",
          additionalText: "hi bro",
          onMorePressed: () {},
          specialCode: "23456",
        ),
      ),
    );
  }
}
