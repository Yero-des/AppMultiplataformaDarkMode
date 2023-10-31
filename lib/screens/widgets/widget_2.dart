import 'package:flutter/material.dart';
import 'package:semana9/theme/theme_data.dart';

class SecondCardWidget extends StatelessWidget {
   
  const SecondCardWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.only(top: 20, right: 10, bottom: 20, left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.car_crash_rounded,
                  color: Color.fromARGB(137, 53, 53, 53),
                  size: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Título de la tarjeta',
                        style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Este es un texto de ejemplo para poder mostrar una mejor disposición del texto en una tarjeta', 
                        maxLines: 3,                      
                        overflow: TextOverflow.ellipsis,                       
                      ),
                    ],
                  )
                ),
                SizedBox(width: 25,)
              ],
            ),
            SizedBox(height: 25,),
            Row(            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Procesar", style: TextStyle(
                  color: AppTheme.primary,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(width: 10),
                Text("Cancelar", style: TextStyle(
                  color: AppTheme.primary,
                  fontWeight: FontWeight.bold
                )),
              ],
            )
          ],
        )
      )
    );
  }
}