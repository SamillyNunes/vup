import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup_client/presentation/views/exercise/exercise_view.dart';

class ExerciseCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String frequency;
  const ExerciseCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.frequency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Column(
            children: [
              Image.asset(
                imageUrl,
                height: 25.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
              const Divider(color: Colors.transparent),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    const Divider(color: Colors.transparent),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Row(
                        children: [const Text('Frequencia: '), Text(frequency)],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
