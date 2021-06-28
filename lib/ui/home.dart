import 'package:flutter/material.dart';
import 'package:iqka/LandingPage/LandingPage.dart';
import 'package:iqka/Navbar/Navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  sampleFunction() {
    print('Function on Click Event Called.');
    // Put your code here, which you want to execute on onPress event.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // body: Center(child: SelectionButton()),
        decoration: BoxDecoration(
            // color: Color.w
            // gradient: LinearGradient(
            //     begin: Alignment.centerLeft,
            //     end: Alignment.centerRight,
            //     colors: [
            //       Color.fromRGBO(195, 20, 50, 1.0),
            //       Color.fromRGBO(36, 11, 54, 1.0)
            //     ]),
            ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),

              // SelectionButton(),

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: SelectionButton(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //       vertical: 20.0, horizontal: 40.0),
              //   child: SelectionButton(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Add Product'),
      style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }

  // A method that launches the SelectionScreen and awaits the result from
  // Navigator.pop.
  void _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  final telcoName = TextEditingController();
  final desc = TextEditingController();
  final keyword = TextEditingController();
  final instruction = TextEditingController();
  final discount = TextEditingController();
  final cost = TextEditingController();
  final note = TextEditingController();
  final status = TextEditingController();
  final statusMessage = TextEditingController();
  final tax = TextEditingController();
  final discountType = TextEditingController();
  final connectServer = TextEditingController();
  final serverProduct = TextEditingController();
  final denom = TextEditingController();
  final discCond = TextEditingController();
  final mobileLength = TextEditingController();
  final sort = TextEditingController();
  final noteDesc = TextEditingController();
  final category = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Product'),
      ),

      // body: Container(

      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // gradient: LinearGradient(
          //     begin: Alignment.centerLeft,
          //     end: Alignment.centerRight,
          //     colors: [
          //       // Color.fromRGBO(255, 255, 255, 1.0),
          //       // Color.fromRGBO(15, 194, 239, 1.0)
          //       Color.
          //                 // color: Colors.yellow[100],
          //     ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.file_copy_rounded),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Telco'),
                  controller: telcoName,
                ),
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Description'),
                  controller: desc,
                ),
              ),
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Keyword'),
                  controller: keyword,
                ),
              ),
              ListTile(
                leading: Icon(Icons.integration_instructions),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Instruction'),
                  controller: instruction,
                ),
              ),
              ListTile(
                leading: Icon(Icons.confirmation_number_sharp),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Discount'),
                  controller: discount,
                ),
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Cost'),
                  controller: cost,
                ),
              ),
              ListTile(
                leading: Icon(Icons.note),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Note'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.queue_sharp),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Status'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Status Message'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.money_off_csred_rounded),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Tax'),
                  controller: tax,
                ),
              ),
              ListTile(
                leading: Icon(Icons.attach_money),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Discount Type'),
                  controller: discountType,
                ),
              ),
              ListTile(
                leading: Icon(Icons.data_saver_off_rounded),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Connect Server'),
                  controller: connectServer,
                ),
              ),
              ListTile(
                leading: Icon(Icons.perm_data_setting),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Server Product ID'),
                  controller: serverProduct,
                ),
              ),
              ListTile(
                leading: Icon(Icons.price_change),
                title: TextFormField(
                  decoration:
                      InputDecoration(hintText: 'Denomination To Server'),
                  controller: denom,
                ),
              ),
              ListTile(
                leading: Icon(Icons.price_check),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Discount Condition'),
                  controller: denom,
                ),
              ),
              ListTile(
                leading: Icon(Icons.mobile_friendly_outlined),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Mobile Length'),
                  controller: mobileLength,
                ),
              ),
              ListTile(
                leading: Icon(Icons.sort),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Sorting'),
                  controller: sort,
                ),
              ),
              ListTile(
                leading: Icon(Icons.note_alt),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Note Description'),
                  controller: noteDesc,
                ),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: TextFormField(
                  decoration: InputDecoration(hintText: 'Category'),
                  controller: category,
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      print(telcoName.text.toString());
                      print(desc.text.toString());
                      print(keyword.text.toString());
                      print(instruction.text.toString());
                      print(discount.text.toString());
                      print(cost.text.toString());
                      print(note.text.toString());
                      print(status.text.toString());
                      print(statusMessage.text.toString());
                      print(tax.text.toString());
                      print(discountType.text.toString());
                      print(connectServer.text.toString());
                      print(serverProduct.text.toString());
                      print(denom.text.toString());
                      print(discCond.text.toString());
                      print(mobileLength.text.toString());
                      print(sort.text.toString());
                      print(noteDesc.text.toString());
                      print(category.text.toString());
                    });
                  },
                  child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}




// class SelectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pick an option'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Close the screen and return "Yep!" as the result.
//                   Navigator.pop(context, 'Yep!');
//                 },
//                 child: Text('Yep!'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Close the screen and return "Nope." as the result.
//                   Navigator.pop(context, 'Nope.');
//                 },
//                 child: Text('Nope.'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
