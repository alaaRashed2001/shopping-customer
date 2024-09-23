import 'package:flutter/material.dart';

class RateStars extends StatelessWidget {
  const RateStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          size: 26,
          color: Color.fromARGB(255, 255, 191, 0),
        ),
        Icon(
          Icons.star,
          size: 26,
          color: Color.fromARGB(255, 255, 191, 0),
        ),
        Icon(
          Icons.star,
          size: 26,
          color: Color.fromARGB(255, 255, 191, 0),
        ),
        Icon(
          Icons.star,
          size: 26,
          color: Color.fromARGB(255, 255, 191, 0),
        ),
        Icon(
          Icons.star,
          size: 26,
          color: Color.fromARGB(255, 255, 191, 0),
        ),
      ],
    );
  }
}