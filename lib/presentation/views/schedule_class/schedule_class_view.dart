import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/local_database_customers.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/auth/auth_view.dart';
import 'package:vup/presentation/views/schedule_class/domain_service/scheduling_service.dart';
import 'package:vup/presentation/views/schedule_class/models/scheduling_class_model.dart';

import 'scheduling_class_validation/sheduling_class_result.dart';

class ScheduleClassView extends StatefulWidget {
  const ScheduleClassView({Key? key}) : super(key: key);

  @override
  State<ScheduleClassView> createState() => _ScheduleClassViewState();
}

class _ScheduleClassViewState extends State<ScheduleClassView> {
  DateTime? _dateTimePicked;
  TimeOfDay? timePicked;
  String gymSelected = LocalDatabaseCustomers.availableGyms[0];
  String teacherSelected = LocalDatabaseCustomers.teachers[0];

  SchedulingClassModel schedulingClassModel = SchedulingClassModel(
    exerciseTypeDescription: '',
    teacher: '',
    scheduleDate: DateTime.now(),
    gym: '',
  );

  SchedulingService schedulingService = SchedulingService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Agendar treino",
                style: AppTextStyles.largeTitleStyle.copyWith(
                  color: AppColors.purplew200,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.date_range,
                  color: AppColors.purplew200,
                ),
                onTap: () async {
                  DateTime? dt = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2023),
                  );
                  setState(() {
                    _dateTimePicked = dt ?? DateTime.now();
                    schedulingClassModel.scheduleDate =
                        _dateTimePicked ?? DateTime.now();
                  });
                },
                title: _dateTimePicked != null
                    ? Text(
                        "${_dateTimePicked?.day}/${_dateTimePicked?.month}/${_dateTimePicked?.year}")
                    : Text(
                        "Escolher data",
                        style: AppTextStyles.regularLabelStyle
                            .copyWith(color: AppColors.purpleMain),
                      ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.timer_sharp,
                  color: AppColors.purplew200,
                ),
                onTap: () async {
                  TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  setState(() {
                    timePicked = time ?? TimeOfDay.now();

                    schedulingClassModel.scheduleDate = DateTime(
                      _dateTimePicked?.year ?? 2022,
                      _dateTimePicked?.month ?? 1,
                      _dateTimePicked?.day ?? 1,
                      timePicked?.hour ?? 1,
                      timePicked?.minute ?? 1,
                    );

                    print(
                        "Scheduling date and time: ${schedulingClassModel.scheduleDate}");
                  });
                },
                title: timePicked != null
                    ? Text("${timePicked?.hour}:${timePicked?.minute}")
                    : Text(
                        "Escolher horário",
                        style: AppTextStyles.regularLabelStyle
                            .copyWith(color: AppColors.purpleMain),
                      ),
              ),
              Row(
                children: [
                  Text(
                    "Professor: ",
                    style: AppTextStyles.regularLabelStyle
                        .copyWith(color: AppColors.purpleMain),
                  ),
                  DropdownButton<String>(
                    value: teacherSelected,
                    onChanged: (v) {
                      setState(() {
                        teacherSelected =
                            v ?? LocalDatabaseCustomers.teachers[0];
                        schedulingClassModel.teacher = teacherSelected;
                      });
                    },
                    items: LocalDatabaseCustomers.teachers
                        .map(
                          (teacherName) => DropdownMenuItem<String>(
                            child: Text(
                              teacherName,
                              style: AppTextStyles.regularLabelStyle
                                  .copyWith(color: AppColors.purpleMain),
                            ),
                            value: teacherName,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Academia: ",
                    style: AppTextStyles.regularLabelStyle
                        .copyWith(color: AppColors.purpleMain),
                  ),
                  DropdownButton<String>(
                    value: gymSelected,
                    onChanged: (v) {
                      setState(() {
                        gymSelected =
                            v ?? LocalDatabaseCustomers.availableGyms[0];
                        schedulingClassModel.gym = gymSelected;
                      });
                    },
                    items: LocalDatabaseCustomers.availableGyms
                        .map(
                          (availableGym) => DropdownMenuItem<String>(
                            child: Text(
                              availableGym,
                              style: AppTextStyles.regularLabelStyle
                                  .copyWith(color: AppColors.purpleMain),
                            ),
                            value: availableGym,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              AppButton(
                label: "Agendar",
                onTapped: () {
                  SchedulingClassResult? schedulingClassResult =
                      schedulingService.scheduleClass(
                    schedulingClassModel,
                    params: {
                      'teacher-hours':
                          LocalDatabaseCustomers.teachersHours[teacherSelected],
                      'gym-hours': LocalDatabaseCustomers.gymHours[gymSelected],
                    },
                  );

                  print("Resultado: ${schedulingClassResult?.message}");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
