import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/base_url.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/extensions/radius_extensions.dart';
import '../../../core/extensions/spacing_extensions.dart';
import '../../../core/network/dio_client.dart';
import '../providers/auth_notifier.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

enum _FormKeys {
  @JsonValue('username')
  username,
  @JsonValue('password')
  password,
  @JsonValue('host')
  host,
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _hostFormKey = GlobalKey<FormBuilderState>();

  void _submitForm() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      final values = _formKey.currentState!.value;
      ref.read(authProvider.notifier).login(
            username: values[_FormKeys.username.name],
            password: values[_FormKeys.password.name],
          );
    }
  }

  Future<void> showInputDialog(BuildContext context) async {
    await showDialog(
      context: context,
      routeSettings: const RouteSettings(name: '修改HostDialog'),
      builder: (context) {
        return AlertDialog(
          title: const Text('请输入HOST'),
          content: FormBuilder(
            initialValue: {
              _FormKeys.host.name: BaseUrl.url.value,
            },
            key: _hostFormKey,
            child: FormBuilderTextField(
              name: _FormKeys.host.name,
              decoration: InputDecoration(
                labelText: '请输入HOST',
                prefixIcon: const Icon(Icons.link),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(context.radius.md),
                  ),
                ),
              ),
              validator: FormBuilderValidators.compose(
                [
                  FormBuilderValidators.required(errorText: '请输入HOST'),
                  FormBuilderValidators.url(errorText: '请输入有效的url'),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (_hostFormKey.currentState?.saveAndValidate() ?? false) {
                  final values = _hostFormKey.currentState!.value;
                  DioClient.instance.setHost(values[_FormKeys.host.name]);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('确定'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Container(
            width: getValueForScreenType<double>(
              context: context,
              mobile: context.sw * 0.8,
              tablet: 400,
            ),
            padding: EdgeInsets.all(getValueForScreenType<double>(
              context: context,
              mobile: context.spacing.xl,
              tablet: context.spacing.xl * 2,
            )),
            child: FormBuilder(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: context.spacing.lg,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onDoubleTap: () {
                      showInputDialog(context);
                    },
                    child: Text(
                      '账号登陆',
                      style: context.textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // 账号输入框
                  FormBuilderTextField(
                    name: _FormKeys.username.name,
                    decoration: InputDecoration(
                      labelText: '请输入账号',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(context.radius.md),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.required(errorText: '请输入账号'),
                      ],
                    ),
                  ),
                  // 密码输入框
                  FormBuilderTextField(
                    name: _FormKeys.password.name,
                    decoration: InputDecoration(
                      labelText: '请输入密码',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(context.radius.md),
                        ),
                      ),
                    ),
                    obscureText: true,
                    // 隐藏输入内容
                    textInputAction: TextInputAction.done,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(errorText: '请输入密码'),
                    ]),
                  ),
                  FilledButton(
                    style: FilledButton.styleFrom(
                        minimumSize: const Size(double.infinity, 54),
                        textStyle: context.textTheme.bodyLarge),
                    onPressed: _submitForm,
                    child: const Text('立即登录'),
                  ),
                  const Text('忘记密码', textAlign: TextAlign.end)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
