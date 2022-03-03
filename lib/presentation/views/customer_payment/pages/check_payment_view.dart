import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';

import '../customer_payment_view.dart';

class CheckPaymentView extends StatefulWidget {
  const CheckPaymentView({Key? key}) : super(key: key);

  @override
  State<CheckPaymentView> createState() => _CheckPaymentViewState();
}

class _CheckPaymentViewState extends State<CheckPaymentView>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        width: 100.w,
        height: 95.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.check, color: AppColors.green, size: 150),
              ),
            ),
            const Text('Pagamento Realizado com sucesso :) '),
            const Divider(color: Colors.transparent),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text('Voltar a tela de Pagamentos'))
          ],
        ),
      ),
    );
  }
}
