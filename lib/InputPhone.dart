import 'package:flutter/material.dart';

class InputPhone extends StatefulWidget {
  const InputPhone({Key? key}) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  TextEditingController ctrInputPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Phone"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrInputPhone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone Number",
              ),
            ),
            ElevatedButton(
                onPressed: (){
                Navigator.pop(context, ctrInputPhone.text);
            },
            child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
