import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/auth/auth_view.dart';
import 'package:vup/presentation/views/auth/widgets/text_button_widget.dart';
import 'package:vup/presentation/views/main_pages/main_pages_view.dart';

import '../auth/widgets/input_text_form_field_widget.dart';
import '../../core/app_colors.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isPersonal = false;
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
                  Image.asset('assets/images/png/logo.png', height: 50),
                  const Divider(color: Colors.transparent),
                  Text(
                    'Cadastro',
                    style: AppTextStyles.largeTitleStyle,
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text(
                      'Você é personal?',
                      style: TextStyle(color: AppColors.white),
                    ),
                    activeColor: AppColors.white,
                    checkColor: AppColors.white,
                    value: isPersonal,
                    onChanged: (value) {
                      setState(() {
                        isPersonal = !isPersonal;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const InputTextFormFieldWidget(labelText: 'Email'),
                  const Divider(color: Colors.transparent),
                  const InputTextFormFieldWidget(labelText: 'Senha'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButtonComponent(
                        text: 'Entrar com Google',
                        onTapped: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  AppButton(
                    label: 'Cadastrar',
                    onTapped: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MainPagesView(isPersonal: isPersonal),
                        ),
                      );
                    },
                  ),
                  TextButtonComponent(
                    text: 'Já tem conta? Faça o login!',
                    onTapped: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const AuthView(),
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
