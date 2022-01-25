import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/components/input_text_box_component.dart';
import 'package:vup/components/text_button_component.dart';
import 'package:vup/presentation/core/app_colors.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

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
                    'Login',
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
                  const InputTextBoxComponent(labelText: 'Email'),
                  const Divider(color: Colors.transparent),
                  const InputTextBoxComponent(labelText: 'Senha'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButtonComponent(
                        text: 'Entrar com Google',
                        function: () {},
                      ),
                      TextButtonComponent(
                        text: 'Esqueceu sua senha?',
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
                        'Entrar',
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
