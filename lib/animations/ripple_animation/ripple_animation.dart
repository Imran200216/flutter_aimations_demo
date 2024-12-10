import 'package:flutter/material.dart';

class RippleAnimation extends StatelessWidget {
  const RippleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Ripple animation"),
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
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// on tap => Gesture detector, Inkwell

              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 100,
                    top: 30,
                    bottom: 30,
                  ),
                  child: const Text("Hi Ripple,"),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              Ink.image(
                image: const NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
                child: InkWell(
                  highlightColor: Colors.blue.withOpacity(0.4),
                  splashColor: Colors.green.withOpacity(0.5),
                  onTap: () {},
                ),
              ),

              // Ink.image(
              //   image: const NetworkImage(
              //     "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?q=80&w=1966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              //   ),
              //   height: 300,
              //   width: 300,
              //   fit: BoxFit.cover,
              //   child: InkWell(
              //     highlightColor: Colors.blue.withOpacity(0.4),
              //     splashColor: Colors.green.withOpacity(0.5),
              //     onTap: () {},
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
