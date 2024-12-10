import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ShimmerAnimation extends StatefulWidget {
  const ShimmerAnimation({super.key});

  @override
  State<ShimmerAnimation> createState() => _ShimmerAnimationState();
}

class _ShimmerAnimationState extends State<ShimmerAnimation> {
  /// loading state
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// duration
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        _isLoading = false;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Shimmer animation"),
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
      body: Skeletonizer(
        enabled: _isLoading,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {},

              /// profile image
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?q=80&w=1966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),

              /// person text
              title: const Text("Imran"),
              titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black),

              /// icon
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                  )),
            );
          },
        ),
      ),
    );
  }
}
