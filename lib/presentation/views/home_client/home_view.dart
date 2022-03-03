import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup_client/presentation/core/app_colors.dart';
import 'package:vup_client/presentation/core/app_text_styles.dart';
import 'package:vup_client/presentation/local_database_exercise.dart';
import 'package:vup_client/presentation/views/exercise/exercise_view.dart';
import 'package:vup_client/presentation/views/home/widgets/exercise_card.dart';
import 'package:vup_client/presentation/views/pay_debt/pay_debt_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 7.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Text(
              "Treinos",
              style: AppTextStyles.largeTitleStyle.copyWith(
                color: AppColors.purpleMain,
              ),
            ),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                itemCount: LocalDatabase.exercises.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: ExerciseCard(
                      imageUrl: LocalDatabase.exercises[index].imageUrl,
                      name: LocalDatabase.exercises[index].name,
                      frequency: LocalDatabase.exercises[index].frequency,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExerciseView(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
