import 'package:flutter/material.dart';

class BIAtest extends StatefulWidget {
  const BIAtest({Key? key}) : super(key: key);

  @override
  State<BIAtest> createState() => _BIAtestState();
}

class _BIAtestState extends State<BIAtest> {
  int _BIAScore = 0;
  double _biascore=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMR calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText:'Enter your lean body mass',
                            ),
              onChanged: (BIAVal) {
                 _BIAScore= BIAVal as int;
              },
            ),
            SizedBox(height: 20),
            RaisedButton(onPressed: (){

            },
            color: Colors.cyan,
              child: Text('Calculate BMR'),
            )

          ],
        ),
      ),
    );
  }
}


