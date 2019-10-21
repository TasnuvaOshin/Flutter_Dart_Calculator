import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Calculator',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),

    );
  }
}

class MainPage extends StatefulWidget {



        






  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


     int numberone = 000000;
     int numbertwo = 0000000;
     String display="";
     String res;
     String opt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(

          title: Text("Main Page"),
          backgroundColor: Colors.brown,
          
        ),
        
        body: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,



          children: <Widget>[
            Expanded(
              
              child: Container(
                padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomRight,
              child: Text(
                   "$display",
                   style: TextStyle(
                     fontSize: 20.0,
                     fontWeight: FontWeight.bold,
                     
                   ),


               ),

              ),
            ),

         Row(
          
           children: <Widget>[
               setbutton('1'),
               setbutton('2'),
               setbutton('3'),
               setbutton('4'),
                               
                               
               
                          ],
                        ),
               
                 Row(
                        
                          children: <Widget>[
                               setbutton('5'),
               setbutton('6'),
               setbutton('7'),
               setbutton('8'), 
                              
               
                          ],
                        ),
                          Row(
                        children: <Widget>[
                              setbutton('9'),
               setbutton('0'),
               setbutton("+"),
               setbutton("-"),  
                             
                          ],
                        ),
                          Row(
                          children: <Widget>[
                               
                             setbutton("x"),
               setbutton("/"),
               setbutton('='),
               setbutton('AC'),
               
                          ],
                        ),
               
                         ],
               
               
               
               
                          ),
               
                       ),
                             
                   );
                 }
               
               Widget setbutton(String value){
          return  Expanded(
               child: OutlineButton(
                padding: EdgeInsets.all(25.0),
                
                  onPressed: () => starcal(value),
                                    child: Text(
                                      "$value",
                                    style: TextStyle(
                  
                                      fontSize: 20.0,
                                    ),
                                    ),
                                    
                  
                                 ),
                  
                              
                            );
                              }
                  







                    starcal(String value) {
                 print('button clicked');

                if(value == "+" || value == "-" || value == "x" || value == "/"){
           
                  opt = value;
                     res = numberone.toString() + opt.toString();
                }
                else if (value == "AC"){
                  res = "";
                  opt = "";
                  numberone = 000000;
         
                }

               else if(value == "="){

                  if(opt == "+"){

                    res = (numberone + numbertwo).toString();
                  }else if(opt == "-"){

                     res = (numberone - numbertwo).toString();
                  }else if (opt == "x"){
                    res = (numberone*numbertwo).toString();
                  }
                  else if (opt == "/"){

                    res =  (numberone/numbertwo).toString();
                  }
                }
                else{
                    if(numberone == 000000){
                  
                      numberone = int.parse(value);
                          res = numberone.toString();

                          
                    }else{
                        
                      numbertwo = int.parse(value);
                      res = numberone.toString() + opt.toString() + numbertwo.toString();

                    }

                }
                       setState(() {
                         
                         display = res;
                         


                       });

                 




                    }
}





