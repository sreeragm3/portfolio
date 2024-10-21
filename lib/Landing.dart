import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}


class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double first_h = screenHeight*0.95;
    double first_w =screenWidth*0.045 ;
    double second_h = screenHeight;
    double second_w =screenWidth*0.3 ;
    double third_h = screenHeight;
    double third_w =screenWidth*0.63 ;
    double port;
    double port_h;
    double port_h2;
    double name_s;
    double ico_len;
    print("width");
    print(screenWidth);
    print("img width and height");
    print(third_h*0.4);
    print(third_w*0.6);
    Timer? _timer;

    String name_img = '';
    if (screenWidth < 600){
      port = third_w*0.12;
      port_h = third_h*0.04;
      port_h2 =0;
      name_s = second_w*0.1;
      ico_len = third_w*0.5;
      name_img = 'https://i.imgur.com/ZTqEUAa.png';
      return  Scaffold(body: Column(children: [
        Container(height: screenHeight*0.1,width:screenWidth,color: Colors.white,),
        Container(height: screenHeight*0.2,width: screenWidth,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.imgur.com/Xhtr9N6.png'),),color: Color(0xFF8184D3),)),
        Container(height: screenHeight*0.2,width: screenWidth,color:Color(0xFF8184D3) ,child: Padding(padding: EdgeInsets.fromLTRB(0, 0, screenWidth*0.3, 0),child: Image.network('https://i.imgur.com/ZTqEUAa.png'),),),
        Container(height: screenHeight*0.4,width: screenWidth,color: Colors.purple,child:
                Row(children: [
                      SizedBox(width: screenWidth*0.02,) ,
                      Column(children: [SizedBox(height: screenHeight*0.01,),Container(width: screenWidth*0.45,height: screenHeight*0.25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Colors.black,),),SizedBox(height: screenHeight*0.01,),Container(width: screenWidth*0.45,height: screenHeight*0.12,decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Colors.deepPurple,),),SizedBox(height: screenHeight*0.01,),],),
                      SizedBox(width: screenWidth*0.05,),
                      Column(children:[SizedBox(height: screenHeight*0.01,),Container(width: screenWidth*0.45,height: screenHeight*0.1,decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Colors.amberAccent,)),SizedBox(height: screenHeight*0.01,),Container(width: screenWidth*0.45,height: screenHeight*0.27,decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Colors.green,))],),SizedBox(height: screenHeight*0.01,),],),),
                      SizedBox(width: screenWidth*0.02,),
        Container(height: screenHeight*0.1,width: screenWidth,color: Colors.lightGreen)],),);


          }
    else{
      // int x=0;
      // var Names = ['NAMASTE','BONJOUR','NAMASKARAM','WELCOME','VANAKAM'];
      // String hello = '';
      // Timer.periodic(const Duration(seconds: 4), (timer) {
      //   setState(() {
      //     hello = Names[timer.tick%5];
      //     print(hello);
      //   });
      //
      //   });
      port = third_w*0.12;
      port_h = 0;
      port_h2 = third_h*0.0;
      name_s = second_w*0.085;
      ico_len = third_w*0.12;
      name_img = 'https://i.imgur.com/qqo05T5.png';
      return  Scaffold(
        body: Center(child: Container(decoration: BoxDecoration(color: Colors.white),height: screenHeight,width: screenWidth,child: Row(children: [SizedBox(width: first_w*0.2,),Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [IconButton(onPressed: (){}, icon: ImageIcon(size:ico_len,NetworkImage('https://i.imgur.com/FMpfczI.png'))),IconButton(onPressed: (){}, icon: ImageIcon(size: ico_len,NetworkImage('https://i.imgur.com/6blp2xi.png'))),IconButton(onPressed: (){}, icon: ImageIcon(size: ico_len,NetworkImage('https://i.imgur.com/DpCEiF7.png'))),IconButton(onPressed: (){}, icon: ImageIcon(size: ico_len,NetworkImage('https://i.imgur.com/brUmZcd.png'))),IconButton(onPressed: (){}, icon: ImageIcon(size: ico_len,NetworkImage('https://i.imgur.com/zHaaGLg.png')))],),height: first_h ,width:first_w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.white,boxShadow:[ BoxShadow(color: Colors.black)]),),SizedBox(width: first_w*0.2,),Container(height: second_h,width:second_w,color: Colors.white,child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 20, 2, 20),
          child: Container(child: Column(
            children: [Padding(
              padding:  EdgeInsets.fromLTRB(second_w*0.2, second_h*0.02, 0,second_h*0.01),
              child:  Image(width: second_w*0.7,height: second_h*0.5,image: NetworkImage('https://i.imgur.com/Xhtr9N6.png'),),
            )
              ,Padding(padding: EdgeInsets.fromLTRB(0, 0, second_w*0.1, second_h*0.05),child: Container(height: second_h*0.36,width: second_w,color:Color(0xFF8184D3),child: Image.network(name_img),),)
            ],
          ),decoration: BoxDecoration(color: const Color(0xFF8184D3),borderRadius: BorderRadius.circular(32)),),
        ),),Container(child:Column(children: [Container(child:  Padding(
          padding:  EdgeInsets.fromLTRB(0, port_h, third_w*0.015, port_h2),
          child: Text(" PORTFOLIO",style: TextStyle(color: Colors.black,fontSize:port, fontFamily: 'SPARTEN',fontWeight: FontWeight.w900,letterSpacing: 30),),
        ),height: third_h*0.25,width:third_w ,decoration: BoxDecoration(color: Colors.white),),
          Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.imgur.com/3QmEQhJ.png'),fit: BoxFit.cover),color: Colors.black,borderRadius: BorderRadius.circular(32)),height: third_h*0.4,width: third_w*0.6,),SizedBox(height: third_h*0.05,width: third_w*0.05),Container(child: Column(children: [Padding(
            padding:  EdgeInsets.fromLTRB(0, third_h*0.005, 0, third_h*0.015),
            child: Container(child: Center(child: Text('PROJECTS',style: TextStyle(color: Colors.white,fontFamily: 'SPARTEN',fontSize: third_w*0.05),)),height: third_h*0.19,width: third_w*0.3,decoration: BoxDecoration(color: Color(0xFFA9DAD7),borderRadius: BorderRadius.circular(32)),),
          ),Container(child: Center(child: Text('ABOUT',style: TextStyle(fontFamily: 'SPARTEN',fontSize: third_w*0.05,color: Colors.white))),decoration: BoxDecoration(color: Color(0xFF8e6fbd),borderRadius: BorderRadius.circular(32)),height: third_h*0.185,width: third_w*0.3),],),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(32)),height: third_h*0.4,width: third_w*0.3)],),height: 290,width:screenWidth*40,decoration: BoxDecoration(color: Colors.white),),
          Container(child: Padding(
            padding:  EdgeInsets.fromLTRB(0, third_h*0.05, 0, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Container(height: third_h*0.3,width: third_w*0.25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color:Color(0xFF595959) ),),SizedBox(width: third_w*0.045,),Container(height: third_h*0.3,width: third_w*0.65,decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color:Color(0xFFffc367) ),)],),
          ),height: third_h*0.315,width:screenWidth*40,decoration: BoxDecoration(color: Colors.white),)],),height: third_h,width:third_w,color: Colors.white)],),),),
      );
    }


  }
}

