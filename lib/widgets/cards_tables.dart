import 'dart:ui';

import 'package:flutter/material.dart';

class CardTables extends StatelessWidget {
  const CardTables({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'basic_desing'),
            child: const _SingleCard(
              color: Colors.blueAccent,
              icon: Icons.window,
              text: 'General',
            ),
          ),
          GestureDetector(
            onTap: (() => Navigator.pushNamed(context, 'scroll_screen')),
            child: const _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.directions_bus,
              text: 'Trasport',
            ),
          ),
        ]),
        const TableRow(children: [
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.business_center,
            text: 'Bussines',
          ),
          _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.contact_page_rounded,
            text: 'Resume',
          ),
        ]),
        const TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.movie,
            text: 'Entertaiment',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.fastfood,
            text: 'Grocery',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 67, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: _CardColum(color: color, icon: icon, text: text),
          ),
        ),
      ),
    );
  }
}

class _CardColum extends StatelessWidget {
  const _CardColum({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    );
  }
}
