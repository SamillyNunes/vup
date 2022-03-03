// ignore_for_file: avoid_renaming_method_parameters

abstract class ValueObject<T> {
  final T value;

  const ValueObject(this.value);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
