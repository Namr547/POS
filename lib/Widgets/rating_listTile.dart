// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RatingListTile extends StatelessWidget {
  const RatingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(
            Icons.person_2_rounded,
            size: 35,
          ),
          title: Text(
            'Nammar Khan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: List<Widget>.generate(5, (index) {
              return Icon(
                index < 4 ? Icons.star : Icons.star_border,
                color: Colors.white,
                size: 16,
              );
            }),
          ),
          trailing: Text('05 october 2023'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17,
          ),
          child: Text(
            'Effective verbal and written communication skills, vital for liaising with clients, customers, and colleagues in both accounting and order booking roles.',
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
