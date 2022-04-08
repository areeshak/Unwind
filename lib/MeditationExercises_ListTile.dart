import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deep_breathing.dart';
import 'exercise_screen.dart';

class MeditationExercisesListTile extends StatefulWidget {
  const MeditationExercisesListTile({Key? key}) : super(key: key);

  @override
  _MeditationExercisesListTileState createState() => _MeditationExercisesListTileState();
}

class _MeditationExercisesListTileState extends State<MeditationExercisesListTile> {
  //read exercises list from db into this array
  List<String> Exercises = [
    'Deep Breathing',
    'Mindfulness',
    'Simple',
    'Body Scan',
    'Sleep',
    'Grounding',
    'Walking',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.purpleAccent,
                    Colors.pinkAccent,
                    Colors.redAccent,
                  ],
                ),
              ),
              //color: Color(0xFF162A49),
              height: 70,
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: Exercises.length,
          itemBuilder: (context,index) {
            return
              Container(
                height: 50,
                width: 120,
                color: Colors.pinkAccent,
                child: ListTile(
                    title: InkWell(
                        child: Text(Exercises[index].toString()),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                DeepBreathingPage(), //navigate to meditation Exercises page here
                          ),
                        );
                      },
                    ),
                ),
              );
          }
      ),
    );
  }
}
