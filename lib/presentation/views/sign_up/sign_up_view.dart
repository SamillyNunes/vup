import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/input_text_form_field_widget.dart';
import '../../../widgets/text_button_widget.dart';
import '../../core/app_colors.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.purpleMain,
              AppColors.purplew100,
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
                  const Text(
                    'Cadastro',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
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
                        function: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(6)),
                    height: 45,
                    width: 95.w,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: AppColors.purpleMain,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  TextButtonComponent(
                    text: 'Não tem conta? Cadastre-se!',
                    function: () {},
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
