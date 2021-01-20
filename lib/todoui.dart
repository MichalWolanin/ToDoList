import 'package:flutter/material.dart';

class todoui extends StatefulWidget {
  @override
  _todouiState createState() => _todouiState();
}

class _todouiState extends State<todoui> {

  void showalertdialog(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text(
          "Dodaj Zadanie",
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(),
            Column(
              children: <Widget>[
                RaisedButton(  
                  onPressed: (){},
                  color: Colors.green,
                  child: Text(
                    "Dodaj",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget mycard(String zadanie){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "$zadanie",
            style: TextStyle(fontSize: 18.0, fontFamily: "Ralewa",)
          ),
          onLongPress: (){
            print("Zadanie wykonane?");
          },
        )

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child:  Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        title: Text(
          "Moje zadania",
          style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.bold,
          )
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard('Nagraj film'),
            mycard('zrób kupe'),
            mycard('jedź do sklepu')
           ]
        ),
      ),
    );
  }
}