import 'package:vup/presentation/views/community/models/scheduling_class_model.dart';
import 'package:vup/presentation/views/community/scheduling_class_validation/sheduling_class_result.dart';

abstract class SchedulingClass {
  SchedulingClass? next;

  SchedulingClass linkWith(SchedulingClass next) {
    this.next = next;

    return next;
  }

  SchedulingClassResult? check(SchedulingClassModel schedulingClassModel,
      {Map<String, dynamic>? params});

  SchedulingClassResult? checkNext(SchedulingClassModel schedulingClassModel,
      {Map<String, dynamic>? params}) {
    if (next == null) {
      return SchedulingClassResult(
        finalResult: true,
        message: 'Aula agendada com sucesso!',
      );
    }

    return next?.check(schedulingClassModel, params: params);
  }
}
