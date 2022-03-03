import 'package:vup/presentation/views/schedule_class/models/scheduling_class_model.dart';
import 'package:vup/presentation/views/schedule_class/scheduling_class_validation/scheduling_class_gym.dart';
import 'package:vup/presentation/views/schedule_class/scheduling_class_validation/scheduling_class_teacher.dart';
import 'package:vup/presentation/views/schedule_class/scheduling_class_validation/sheduling_class.dart';
import 'package:vup/presentation/views/schedule_class/scheduling_class_validation/sheduling_class_result.dart';

class SchedulingService {
  SchedulingClassResult? scheduleClass(
      SchedulingClassModel schedulingClassModel,
      {Map<String, dynamic>? params}) {
    SchedulingClass schedulingClass = SchedulingClassTeacher();
    schedulingClass.linkWith(SchedulingClassGym());

    return schedulingClass.check(schedulingClassModel, params: params);
  }
}
