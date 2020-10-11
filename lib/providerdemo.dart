import 'package:flutter/material.dart';
import 'package:providerdemo_flutter_app/datamodel.dart';
import 'package:providerdemo_flutter_app/displayStudents.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context)=>StudentModel(),//der bezogene model
    child: DisplayStudents(),
      )
    );
  }
}
