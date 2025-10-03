import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title:Text('تطابق الصور'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),

  ) );
}

class ImagePage extends StatefulWidget {
  @override
 _ImagePageState creatState()=> _ImagePageState();
}
 class  _ImagePageState extends State<ImagePage> {


   Widget build(BuildContext context){
     var leftImageNumber=1;
     var  RightImageNumber=2;
     void changImage(){
       leftImageNumber=Random().nextInt(8)+1; //0-8
       RightImageNumber=Random().nextInt(8)+1; //0-8
     }
     return   Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children:[

           Text(
             leftImageNumber==RightImageNumber?'لقد فزت':
             'حاول مره أخرى',
             style:TextStyle(
               fontSize:42.0,
               color:Colors.white,
             ),
           ),
           Row(
               children:[
                 Expanded(


                   child:FlatButton(
                     onPressed:(){
                       setState(() {
                         changImage();
                       });
                     //  print('لقد تم الضغط على الزر اليسار');
                     },
                     child:Image.asset('images/image-$leftImageNumber.png'),
                   ),

                 ),
                 Expanded(

                   child:FlatButton(
                     onPressed:(){
                       setState(() {
                         changImage();
                       });

                     },
                     child:Image.asset('images/image-$RightImageNumber.png'),
                   ),


                 ),
               ]
           )
         ]
     );

   }
}





