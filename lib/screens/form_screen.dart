import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('เพิ่มข้อมูล')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: new InputDecoration(labelText: "ชื่อรายการ"),
              autofocus: true,
            ),
            TextFormField(
              decoration: new InputDecoration(labelText: "จำนวนเงิน"),
              keyboardType: TextInputType.number,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('บันทึก'),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.green),
            )
          ],
        )),
      ),
    );
  }
}
