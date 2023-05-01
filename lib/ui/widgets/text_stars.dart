import 'package:flutter/material.dart';

class TextStars extends StatelessWidget {
  const TextStars({
    super.key,
    required this.leading,
    required this.stars,
  });

  final String leading;
  final int stars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "$leading: ",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 5; i++)
                if (i < stars)
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )
                else
                  const Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
            ],
          ))
        ],
      ),
    );
  }
}
