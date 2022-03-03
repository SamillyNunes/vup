import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/views/auth/auth_view.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 85.h,
          width: 100.w,
          color: AppColors.purplew100,
          child: Padding(
            padding: EdgeInsets.all(7.w),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Notificar sobre vencimento",
                        style: TextStyle(color: AppColors.white),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 25,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                focusColor: Colors.white,
                                border: UnderlineInputBorder(),
                                hintText: "03",
                                labelStyle: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const Divider(color: Colors.transparent),
                          const Text(
                            "Antes",
                            style: TextStyle(color: AppColors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: AppButton(
                      label: 'Salvar',
                      onTapped: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
