import '../../../../core/extensions/spacing_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChemicalEmpty extends StatelessWidget {
  const ChemicalEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: context.spacing.xs,
      children: [
        SvgPicture.asset(
          'assets/svgs/no_data.svg',
          width: 200,
          height: 200,
        ),
        const Text('先去查询吧～～')
      ],
    );
  }
}
