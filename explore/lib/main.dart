import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title Section',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Easy Traveling'),
        ),
        body: Column(
          children: [
            Image.asset(
              'imagens/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            buildTitleSection(),
            buildButtonSection(context),
            buildTextSection(),
            // Outros elementos do corpo do aplicativo podem ser adicionados aqui.
          ],
        ),
      ),
    );
  }

  Widget buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Baía de Phang Nga',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Phuket, Thailand',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('42'),
        ],
      ),
    );
  }

  Widget buildButtonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
  }

  Widget buildTextSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'A baía de Phang Nga é uma baía no estreito de Malaca, situada entre a ilha de Phuket e a a parte continental do istmo de Kra, no sul da Tailândia. Desde 1981 que uma grande parte da baía é uma área protegida denominada Parque Nacional de Ao Phang Nga. Na baía há várias escarpas calcárias com cavernas, sistemas de cavernas desmoronadas e sítios arqueológicos. Há cerca de 10 000 anos, quando o nível do mar era mais baixo, era possível caminhar desde Phuket a Krabi.',
        softWrap: true,
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
