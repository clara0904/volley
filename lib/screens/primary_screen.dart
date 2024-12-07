import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voley_app/components/components_primary/custom_button.dart';
import 'package:voley_app/components/components_primary/header.dart';
import 'package:voley_app/components/components_primary/times_list.dart';
import 'package:voley_app/screens/second_screen.dart';


class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff00ADC3),
        body: Column(
          children: [
            const Header(),
            const TimesList(),
            CustomButton( 
              nameButton: 'Jogo Casado', 
              backgroundColor: const Color(0xff00ADC3), 
              textSize: 30, 
              onPressed: (){},
            ),
            CustomButton( 
              nameButton: 'Iniciar', 
              backgroundColor: const Color(0xff2B4A8E), 
              textSize: 40, 
              comBorder: true,
              onPressed: () { 
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SecondScreen())
                );
              }
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () {
            // Ação ao clicar
          },
          backgroundColor: const Color(0xff2B4A8E),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            size: 24,
            color: Colors.white
          )
        ),
      ),
    );
  }
}

