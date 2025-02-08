import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    required this.cardName,
    required this.page,
  });

  final String cardName;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => page)),
      child: SizedBox(
        height: 150,
        width: 150,
        child: Card(
          color: Colors.blue,
          child: Center(
            child: Text(cardName),
          ),
        ),
      ),
    );
  }
}
