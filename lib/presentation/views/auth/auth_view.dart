import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/auth/widgets/text_button_widget.dart';
import 'package:vup/presentation/views/main_pages/main_pages_view.dart';

import '../sign_up/sign_up_view.dart';
import 'widgets/input_text_form_field_widget.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.purplew200,
              AppColors.purplew300,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 40.0,
            bottom: 20,
            top: 150,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/png/logo.png',
                    height: 50,
                  ),
                  Text(
                    'Login',
                    style: AppTextStyles.largeTitleStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  const InputTextFormFieldWidget(labelText: 'Email'),
                  const Divider(color: Colors.transparent),
                  const InputTextFormFieldWidget(labelText: 'Senha'),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      'Você é personal?',
                      style: TextStyle(color: AppColors.white),
                    ),
                    value: _checkboxListTile,
                    onChanged: (value) {
                      setState(() {
                        _checkboxListTile = !_checkboxListTile;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButtonComponent(
                        text: 'Entrar com Google',
                        onTapped: () {},
                      ),
                      TextButtonComponent(
                        text: 'Esqueceu sua senha?',
                        onTapped: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  AppButton(
                    label: 'Entrar',
                    onTapped: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPagesView(),
                        ),
                      );
                    },
                  ),
                  TextButtonComponent(
                    text: 'Não tem conta? Cadastre-se!',
                    onTapped: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onTapped;

  const AppButton({
    Key? key,
    required this.label,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(6)),
      height: 45,
      width: 95.w,
      child: TextButton(
        onPressed: onTapped,
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.purpleMain,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
