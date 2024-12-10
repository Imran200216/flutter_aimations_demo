import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipAnimation extends StatelessWidget {
  const FlipAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Flip animation"),
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
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          onFlipDone: (isFront) {
            print("hi front is finished");
          },
          front: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/736x/f4/9e/5b/f49e5b463bf9743d1ada39985af4545d.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          back: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/736x/da/64/59/da64599fd96c24d54783ed5a13fe40d9.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
