import 'package:vup/presentation/views/schedule_class/models/scheduling_class_model.dart';

import 'sheduling_class.dart';
import 'sheduling_class_result.dart';

class SchedulingClassTeacher extends SchedulingClass {
  @override
  SchedulingClassResult? check(SchedulingClassModel schedulingClassModel,
      {Map<String, dynamic>? params}) {
    List<DateTime> availableHours = params?['gym-hours'];

    if (!availableHours.contains(schedulingClassModel.scheduleDate)) {
      return SchedulingClassResult(
        finalResult: false,
        message: 'Data indisponível para a academia',
      );
    }

    return checkNext(schedulingClassModel, params: params);
  }
}
