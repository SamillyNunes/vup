import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/local_database_customers.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/exercise/exercise_view.dart';

import 'widgets/exercise_card.dart';

class HomeCustomerView extends StatelessWidget {
  const HomeCustomerView({Key? key}) : super(key: key);

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
                itemCount: LocalDatabaseCustomers.exercises.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: ExerciseCard(
                      imageUrl:
                          LocalDatabaseCustomers.exercises[index].imageUrl,
                      name: LocalDatabaseCustomers.exercises[index].name,
                      frequency:
                          LocalDatabaseCustomers.exercises[index].frequency,
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
