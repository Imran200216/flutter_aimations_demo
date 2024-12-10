import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class GlowAnimation extends StatelessWidget {
  const GlowAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Glow animation"),
        titleTextStyle: const TextStyle(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: AvatarGlow(
          curve: Curves.easeIn,
          glowColor: Colors.pink.shade200,
          duration: const Duration(
            seconds: 3,
          ),
          child: const Material(
            elevation: 6.0,
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?q=80&w=1966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
          ),
        ),
      ),
    );
  }
}
