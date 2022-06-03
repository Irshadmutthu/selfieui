import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:funds/ui/FundPage.dart';

class GoTo extends StatelessWidget {
  const GoTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('FundApp'),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shadowColor: Colors.grey,
              side: BorderSide(width: 3, color: Colors.grey),
            ),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FundPage())),
            child: Text('Enter Fund Page')),
      ),
    );
  }
}
