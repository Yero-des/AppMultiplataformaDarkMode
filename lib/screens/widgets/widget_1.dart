import 'package:flutter/material.dart';
import 'package:semana9/theme/theme_data.dart';

class FirstCardWidget extends StatelessWidget {
   
  const FirstCardWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.only(top: 5, right: 15, bottom: 10, left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.car_crash_rounded,
                  color: Color.fromARGB(137, 53, 53, 53),
                ),
                SizedBox(width: 30),
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
                      Text(
                        'Este es un subtitulo de la tarjeta clreada para poder probarla en Flutter', 
                        maxLines: 2,                      
                        overflow: TextOverflow.ellipsis,                       
                      ),
                    ],
                  )
                ),
                SizedBox(width: 25,)
              ],
            ),
            SizedBox(height: 20,),
            Row(            
              mainAxisAlignment: MainAxisAlignment.end,
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
      ),
      // child: 
    );
  }
}

