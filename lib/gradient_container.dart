import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';

class GradientContainer extends StatelessWidget{
  GradientContainer({super.key, required this.colors});
  final List<Color> colors;
  var activeDice = 'assests/dice_images/dice-1.png';
  void rollDice(){
    activeDice = 'assests/dice_images/dice-2.png';
  }

  @override
  Widget build(context){
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
              colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset(
              activeDice, 
              width: 200
              ),
              TextButton(
                onPressed: rollDice ,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.only(top: 20),
                  textStyle: const TextStyle(fontSize: 28),              
                  ),
                child: const Text('Roll Dice'))
          ],), 
          ),
      );
  }
}

// class GradientContainer extends StatelessWidget{
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(context){
//     return Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors:
//               colors,
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             )
//         ),
//         child:const Center(
//           child: StyleText('Heyy'),
//           ),
//       );
//   }
// }