import 'package:flutter/material.dart';
import 'package:semana9/mode.dart';
import 'package:semana9/screens/screens.dart';
import 'package:provider/provider.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, 'home'), // Agrega la funcionalidad de retroceso
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 20, right: 10, bottom: 10, left: 10,),
        child: Column(
          children: <Widget>[
            FirstCardWidget(), // Primera tarjeta
            SizedBox(height: 10),
            SecondCardWidget(), // Segunda tarjeta
            SizedBox(height: 10),
            ThirdCardWidget(), // Tercera tarjeta
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode),
        onPressed: () => themeProvider.toggleTheme(),
      ),
    );
  }
}