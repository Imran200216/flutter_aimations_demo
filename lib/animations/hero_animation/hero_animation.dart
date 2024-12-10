import 'package:flutter/material.dart';
import 'package:flutter_aimations_demo/animations/hero_animation/hero_animation_desc_screen.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const HeroAnimationDescScreen();
                },
              ));
            },
            leading: const Hero(
              transitionOnUserGestures: true,
              /// tag == description tag (Work)

              tag: "diviya",
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?q=80&w=1966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),
            ),
            title: const Text("Imran"),
            titleTextStyle: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.black),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                )),
          );
        },
      ),
    );
  }
}
