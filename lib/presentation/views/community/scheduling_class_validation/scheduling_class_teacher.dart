import 'package:vup/presentation/views/community/models/scheduling_class_model.dart';
import 'package:vup/presentation/views/community/scheduling_class_validation/sheduling_class.dart';
import 'package:vup/presentation/views/community/scheduling_class_validation/sheduling_class_result.dart';

class SchedulingClassTeacher extends SchedulingClass {
  @override
  SchedulingClassResult? check(SchedulingClassModel schedulingClassModel,
      {Map<String, dynamic>? params}) {
    List<DateTime> availableHours = params?['teacher-hours'];

    if (!availableHours.contains(schedulingClassModel.scheduleDate)) {
      return SchedulingClassResult(
        finalResult: false,
        message: 'Data indisponível para o professor.',
      );
    }

    return checkNext(schedulingClassModel, params: params);
  }
}
