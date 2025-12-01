import 'package:flutter/services.dart' as service;

// String 扩展方法
extension StringExtensions on String? {
  /// 如果字符串为null、空字符串或'null'字符串，则返回true
  bool get isEmptyOrNull =>
      this == null || this!.isEmpty || this == 'null';


  /// 检查字符串是否为null，为null则返回指定默认值
  String validate({String value = ''}) {
    if (isEmptyOrNull) {
      return value;
    }
    return this!;
  }

  /// 将字符串的首字母转换为大写
  String capitalizeFirstLetter() => (validate().isNotEmpty)
      ? (this!.substring(0, 1).toUpperCase() + this!.substring(1).toLowerCase())
      : validate();

  /// 获取第一个字符并转大写怎么写
  String get firstCharUpper {
    final str = this ?? '';
    return str.isNotEmpty ? str[0].toUpperCase() : '';
  }

  /// 检查字符串是否仅包含数字
  bool isDigit() {
    if (validate().isEmpty) {
      return false;
    }
    if (validate().length > 1) {
      for (final r in this!.runes) {
        if (r ^ 0x30 > 9) {
          return false;
        }
      }
      return true;
    } else {
      return this!.runes.first ^ 0x30 <= 9;
    }
  }

  /// 检查字符串是否为整数
  bool get isInt => this!.isDigit();

  /// 将字符串复制到剪贴板
  Future<void> copyToClipboard() async {
    await service.Clipboard.setData(service.ClipboardData(text: validate()));
  }

  /// 为数字添加逗号分隔符（例如：将价格格式化）
  String formatNumberWithComma({String seperator = ','}) {
    return validate().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}$seperator',
    );
  }

  /// 将字符串转换为单个字符的列表
  List<String> toList() {
    return validate().trim().split('');
  }

  /// 将字符串转换为整数
  int toInt({int defaultValue = 0}) {
    if (this == null) return defaultValue;

    if (isDigit()) {
      return int.parse(this!);
    } else {
      return defaultValue;
    }
  }

  /// 将字符串转换为双精度浮点数
  double toDouble({double defaultValue = 0.0}) {
    if (this == null) return defaultValue;

    try {
      return double.parse(this!);
    } catch (e) {
      return defaultValue;
    }
  }

  /// 移除字符串中所有的空格
  String removeAllWhiteSpace() =>
      validate().replaceAll(RegExp(r'\s+\b|\b\s'), '');

  /// 为字符串添加前缀
  /// 例如: Text("Dr. ${变量名}"); => Text("变量名.prefixText("Dr.")");
  String prefixText({required String value}) {
    return '$value$this';
  }

  /// 为字符串添加后缀
  /// 例如: Text("${变量名} /-"); => Text("变量名.suffixText("/-")");
  String suffixText({required String value}) {
    return '$this$value';
  }

  /// 将字符串中每个单词的首字母转换为大写
  String capitalizeEachWord() {
    if (validate().isEmpty) {
      return '';
    }

    final capitalizedWords = this!.split(' ').map((word) {
      if (word.isEmpty) {
        return word;
      }
      final firstLetter = word[0].toUpperCase();
      final remainingLetters = word.substring(1).toLowerCase();
      return '$firstLetter$remainingLetters';
    });

    return capitalizedWords.join(' ');
  }

  /// 如果validate()方法返回\'true\'则返回true，否则返回false
  bool toBool() => validate() == 'true';

  /// 如果字符串为\'true\'则返回true，否则返回false
  bool get asBool => this == 'true';

  /// 如果字符串为null、空或仅包含空白字符，则返回true
  bool get isNullOrBlank => this == null || this!.trim().isEmpty;

  /// 比较两个字符串，忽略大小写
  bool equalsIgnoreCase(String? other) =>
      (this == null && other == null) ||
      (this != null &&
          other != null &&
          this!.toLowerCase() == other.toLowerCase());

  /// 从字符串中提取首字母缩写
  /// 示例: "John Doe" 返回 "JD"
  String initials() {
    if (isEmptyOrNull) return '';
    final String value = validate();
    return value
        .trim()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase())
        .join();
  }

  /// 如果字符串不为null且包含至少一个非空白字符，则返回true
  bool get isNotBlank => this != null && this!.trim().isNotEmpty;
}
