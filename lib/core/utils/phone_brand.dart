import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'brand')
enum PhoneBrand {
  huawei('Huawei'),
  honor('Honor'),
  xiaomi('Xiaomi'),
  redmi('Redmi'),
  oppo('Oppo'),
  vivo('Vivo'),
  realme('Realme'),
  oneplus('OnePlus'),
  meizu('Meizu'),
  lenovo('Lenovo'),
  iqoo('iQOO'),
  smartisan('Smartisan'),
  apple('Apple'),
  unknown('Unknown');

  const PhoneBrand(this.brand);

  final String brand;
}

// 扩展方法：把字符串转成枚举
extension PhoneBrandExtension on PhoneBrand {
  static PhoneBrand fromBrand(String brand) {
    return PhoneBrand.values.firstWhere(
      (e) => e.brand.toLowerCase() == brand.toLowerCase(),
      orElse: () => PhoneBrand.unknown,
    );
  }

  String get chineseName {
    switch (this) {
      case PhoneBrand.huawei:
        return '华为';
      case PhoneBrand.honor:
        return '荣耀';
      case PhoneBrand.xiaomi:
        return '小米';
      case PhoneBrand.redmi:
        return '红米';
      case PhoneBrand.oppo:
        return 'OPPO';
      case PhoneBrand.vivo:
        return 'vivo';
      case PhoneBrand.realme:
        return 'realme';
      case PhoneBrand.oneplus:
        return '一加';
      case PhoneBrand.meizu:
        return '魅族';
      case PhoneBrand.lenovo:
        return '联想';
      case PhoneBrand.iqoo:
        return 'iQOO';
      case PhoneBrand.smartisan:
        return '锤子';
      case PhoneBrand.apple:
        return '苹果';
      case PhoneBrand.unknown:
      return '未知';
    }
  }
}
