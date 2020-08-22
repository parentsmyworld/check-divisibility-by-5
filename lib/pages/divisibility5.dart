import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  TextEditingController num=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Center(child: Text("DIVISIBLE BY 5?")),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0,),
                TextField(
                  controller: num,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.keyboard),
                    hintText: "Enter a number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: RaisedButton(
                    onPressed: (){
                      var a=int.parse(num.text);
                      if (a%5==0){
                        print("$a is divisible by 5");

                      }
                      else
                        print("$a is not divisible by 5");
                    },
                    color: Colors.blue,
                    child: Text("check its divisibility by 5!"),
                  ),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
