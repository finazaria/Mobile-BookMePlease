import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/appbar_widget.dart';


void main() {
  runApp(MaterialApp(
    title: "BookMePlease",
    home: InterestForm(),
    theme: ThemeData(
      canvasColor: Color(0xfffff8e5),
      // fontFamily: "Sora",
    ),
  ));
}

// Test
class InterestForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: buildAppBar(context),
          body: Form(
            key: _formKey,
              child : Center(
                child:InterestFormStateful(),
              )
          )
      ),
    );
  }
}

class InterestFormStateful extends StatefulWidget {
  @override
  _InterestFormState createState() => _InterestFormState();
}

const MaterialColor bmpYellow = const MaterialColor(
  0xFFFFB345,
  const <int, Color>{
    50: const Color(0xFFFF8E5),
    100: const Color(0xFFFFB345),
    200: const Color(0xFFFFB345),
    300: const Color(0xFFFFB345),
    400: const Color(0xFFFFB345),
    500: const Color(0xFFFFB345),
    600: const Color(0xFFFFB345),
    700: const Color(0xFFFFB345),
    800: const Color(0xFFFFB345),
    900: const Color(0xFFFFB345),
  },
);

class _InterestFormState extends State {

  Map<String, bool> List = {
    'Fiction' : false,
    'Non-Fiction' : false,
    'Historical' : false,
    'Biography' : false,
    'Self-Development' : false,
    'Business' : false,
  };

  var holder_1 = [];

  getItems(){
    List.forEach((key, value) {
      if(value == true)
      {
        holder_1.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(holder_1);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[
      Expanded(
        child:
        ListView(
          children: List.keys.map((String key) {
            // ignore: unnecessary_new
            return new CheckboxListTile(
              title: new Text(key),
              value: List[key],
              activeColor: Colors.blue,
              checkColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  List[key] = value;
                });
              },
            );
          }).toList(),
        ),
        
      ),
      RaisedButton(
        child: Text("Update"),
        onPressed: getItems,
        color: Colors.blue,
        textColor: Colors.white,
        splashColor: Colors.grey,
      ),
      
      ]);
  }
}