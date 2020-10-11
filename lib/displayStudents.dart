import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:providerdemo_flutter_app/datamodel.dart';

class DisplayStudents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Consumer<StudentModel>(
              builder:(context, stud, child){
                return ListView.builder(
                  itemCount: stud.studentList.length==null?0:stud.studentList.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: (ListTile(
                          title: Text(stud.studentList[index].name),
                          subtitle: Text('${stud.studentList[index].rollNo}'),
                          leading: Icon(Icons.person),
                        )
                        ),
                      );
                    });
              }
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Provider.of<StudentModel>(context, listen: false).addToStudentModel(); // add to model
          },
      child: Icon(Icons.add)
      ),
    );
  }
}
