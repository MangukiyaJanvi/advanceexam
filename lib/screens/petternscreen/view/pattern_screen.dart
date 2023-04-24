import 'package:advanceexam/screens/petternscreen/provider/pattern_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PatternScreen extends StatefulWidget {
  const PatternScreen({Key? key}) : super(key: key);

  @override
  State<PatternScreen> createState() => _PatternScreenState();
}

class _PatternScreenState extends State<PatternScreen> {
  PatternProvider? providerT;
  PatternProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<PatternProvider>(context, listen: true);
    providerF = Provider.of<PatternProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pettern Screen'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Slider(
                  value: providerT!.SliderValue,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (value) {
                    providerT!.ChangeValue(value);
                    value = providerT!.SliderValue;
                    print("$value=================");
                  }),
            ),
            ElevatedButton(
              onPressed: () {
                providerT!.ChangeRow();
                for (int i = 1; i <= providerT!.rows; i++) {
                  for (int j = 0; j <= i; j++) {
                    providerT!.j = i;
                    print("$i ");
                  }
                  print("\n");
                }
              },
              child: Text("Generate Pattern"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Text('${providerT!.j}'),
                itemCount: providerT!.rows.toInt(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
