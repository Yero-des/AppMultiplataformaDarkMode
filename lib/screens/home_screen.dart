import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:semana9/mode.dart';
import 'package:semana9/theme/theme_data.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home')
      ),
      body: Align(        
        alignment: Alignment.center,      
        child: SizedBox(
          height: 140,
          child: InkWell(
            child: const Card(                  
              child: Padding(
                padding: EdgeInsets.only(top: 20, right: 20, bottom: 20, left: 20),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: AppTheme.primary,
                      size: 50,
                    ),
                    SizedBox(height: 20,),
                    Text('Laboratorio 10', style: TextStyle(
                      fontSize: 15,
                    )),                
                  ],
                ),
              ),
            ),
            onTap: () {            
              Navigator.pushNamed(context, 'card');
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode),
        onPressed: () => themeProvider.toggleTheme(),
      ),
    );
  }
}