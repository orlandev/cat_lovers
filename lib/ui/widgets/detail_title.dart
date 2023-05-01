import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.leading,
    required this.data,
  });

  final String leading;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$leading: ",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                data,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
