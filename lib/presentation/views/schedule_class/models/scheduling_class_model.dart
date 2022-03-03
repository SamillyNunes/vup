class SchedulingClassModel {
  String exerciseTypeDescription;
  String teacher;
  DateTime scheduleDate;
  String gym;

  SchedulingClassModel({
    required this.exerciseTypeDescription,
    required this.teacher,
    required this.scheduleDate,
    required this.gym,
  });

  set setExercise(String e) => exerciseTypeDescription = e;
  set setETeacher(String e) => teacher = e;
  set setScheduleDate(DateTime e) => scheduleDate = e;
  set setGym(String e) => gym = e;
}
