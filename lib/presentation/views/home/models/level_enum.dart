enum LevelEnum { easy, intermediary, hard }

extension ParseToString on LevelEnum {
  String toShortString() {
    String ptLabel = "";
    if (this == LevelEnum.easy) {
      ptLabel = "fácil";
    } else if (this == LevelEnum.intermediary) {
      ptLabel = "intermediário";
    } else {
      ptLabel = "difícil";
    }
    return ptLabel;
  }
}

extension ParseFromString on String {
  LevelEnum fromShortString() {
    if (this == "fácil") {
      return LevelEnum.easy;
    } else if (this == "intermediário") {
      return LevelEnum.intermediary;
    } else {
      return LevelEnum.hard;
    }
  }
}
