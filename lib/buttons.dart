import 'package:flutter/material.dart';

class Buttons extends StatelessWidget{
  const Buttons({
    required this.anserText,
    required this.onTap,
    super.key,
  });

final String anserText;
final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 10, 
        horizontal: 40,
        ),
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40))

    ),
         child:  Text(anserText),
        );
  }
} 