import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  var result="";
  
  Widget btn(var textt) {
    return ElevatedButton(onPressed: () { setState((){ result = result + textt; });}, 
                          child: Text(textt, style: TextStyle(color: Colors.red), textAlign: TextAlign.center,),
                          style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow,
                                    textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          );
  }

  output(){
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel em = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, em);
    setState(() {
      result = eval.toString();
    });
  }
  
  clear(){
  setState((){ result="";});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                        color: Colors.purple[100],  ),
              child: Center(child: Title(color: Colors.cyan, 
                                  child: Text("CALCULATOR", style: TextStyle(fontSize: 50, 
                                                                             fontWeight: FontWeight.bold,
                                                                             color: Colors.cyan ),))),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [btn("1"), btn("2"), btn("3"), btn("4"),],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [btn("5"), btn("6"), btn("7"), btn("8"),],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [btn("9"), btn("0"), 
                         ElevatedButton(onPressed: output, child: Text("=", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),), 
                                        style: ElevatedButton.styleFrom(primary: Colors.yellow),), 
                         ElevatedButton(onPressed: clear, child: Text("clear", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12),), 
                                        style: ElevatedButton.styleFrom(primary: Colors.yellow),),],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [btn("+"), btn("-"), btn("*"), btn("/"),],
            ),
            SizedBox(height: 10,),
            
            Text("Answer:", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
            
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                        color: Colors.red[100],  ),
              child: Text(result, 
                          style: TextStyle( fontSize: 30, 
                                            fontWeight: FontWeight.bold,),)),
          ], // column children
        ),
      ),
    );
  }
}




