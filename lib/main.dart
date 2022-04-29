import "package:flutter/material.dart";

void main ()=>runApp(MaterialApp(
 title: 'calculator',
 home: Calculator(),
));

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String num1='',num2='';
  double output=0;

  void _add(){
    setState(() {
      output=double.tryParse(num1)+double.tryParse(num2);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator")
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        
     child:Column(
       children: [
          Text("output:$output"),
         TextFormField(
           keyboardType: TextInputType.number,
           decoration: InputDecoration(
             hintText:'enter 1st number'
           ),
           onChanged:(value)=>{
             num1=value
           },
         ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'enter second number'
          ),
          onChanged: (value)=>{
            num2= value
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               RaisedButton(onPressed: _add,child:Text('+'))
          ],
         
        ),
    
       ],
     
     
     ),
    
    
      ),
      
    );
  }
}