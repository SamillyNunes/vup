import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/schedule_class/models/scheduling_class_model.dart';

/// Widget de aula/treino agendado
class ScheduledClass extends StatelessWidget {
  final bool isFirstWidget;
  final SchedulingClassModel schedulingClassModel;
  ScheduledClass({
    Key? key,
    this.isFirstWidget = false,
    required this.schedulingClassModel,
  }) : super(key: key);

  final List<String> months = [
    'jan',
    'fev',
    'mar',
    'abr',
    'mai',
    'jun',
    'jul',
    'ago',
    'set',
    'out',
    'nov',
    'dez'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 2.w,
        left: isFirstWidget ? 2.w : 0,
      ),
      child: Container(
        height: 17.h,
        width: 60.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.purplew200,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 2,
          vertical: 2,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 15.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.horizontal(
                    start: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      schedulingClassModel.scheduleDate.day.toString(),
                      style: AppTextStyles.smallBoldTitleStyle,
                    ),
                    Text(
                      months[schedulingClassModel.scheduleDate.month - 1],
                      style: AppTextStyles.smallThinLabelStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    schedulingClassModel.exerciseTypeDescription,
                    style: AppTextStyles.smallBoldTitleStyle,
                  ),
                  Text(
                    "Academia ${schedulingClassModel.gym}",
                    style: AppTextStyles.smallThinLabelStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${schedulingClassModel.scheduleDate.hour}:${schedulingClassModel.scheduleDate.minute} am",
                    style: AppTextStyles.smallThinLabelStyle,
                  ),
                  Text(
                    "Prof. ${schedulingClassModel.teacher}",
                    style: AppTextStyles.smallThinLabelStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
