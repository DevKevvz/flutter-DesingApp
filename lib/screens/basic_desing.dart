import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Image(image: AssetImage('lib/assets/landscape.jpg')),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const TitleHead(),
          ),
          const ContactInfo(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
              'Tempor aliqua elit elit amet officia ad exercitation excepteur. Dolore voluptate consequat id proident pariatur aliqua aliqua in id mollit. Excepteur veniam aliqua labore aliqua minim. Ad nostrud tempor eiusmod deserunt quis eu esse fugiat excepteur. Voluptate amet quis commodo qui enim.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}

class TitleHead extends StatelessWidget {
  const TitleHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Japan Lake Sunset',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              'Japan, Tokyo',
              style: TextStyle(color: Colors.black45, fontSize: 17),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
        const Icon(
          Icons.star,
          size: 28,
          color: Colors.red,
        ),
        const Text(
          '41',
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    const texStyle = TextStyle(color: Colors.blue, fontSize: 16);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconCustom(
            texStyle: texStyle,
            icon: Icons.phone,
            textInfo: 'CALL',
          ),
          IconCustom(
            texStyle: texStyle,
            icon: Icons.location_on,
            textInfo: 'ROUTE',
          ),
          IconCustom(
            texStyle: texStyle,
            icon: Icons.share,
            textInfo: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class IconCustom extends StatelessWidget {
  const IconCustom({
    Key? key,
    required this.texStyle,
    required this.icon,
    required this.textInfo,
  }) : super(key: key);

  final TextStyle texStyle;
  final IconData icon;
  final String textInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue, size: 35),
        Text(
          textInfo,
          style: texStyle,
        )
      ],
    );
  }
}
