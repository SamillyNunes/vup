import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup/presentation/core/app_colors.dart';
import 'package:vup/presentation/core/app_text_styles.dart';
import 'package:vup/presentation/views/pay_debt/widgets/custom_appbar_pay_debt.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    return Scaffold(
      appBar: CustomAppBarPayDebt(context: context),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Rosca Biceps alternada',
                style: AppTextStyles.largeTitleStyle.copyWith(
                  color: AppColors.purpleMain,
                ),
              ),
              const Divider(color: Colors.transparent),
              Image.asset(
                'assets/images/jpg/halter.jpg',
                height: 30.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
              const Divider(color: Colors.transparent),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('SERIES: '),
                  Text(
                    "3x12",
                    style: TextStyle(color: AppColors.purpleMain),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('PESO: '),
                  Text(
                    "8kg cada halter",
                    style: TextStyle(color: AppColors.purpleMain),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('OBSERVAÇÃO: '),
                  Text(
                    "Não movimentar o cotovelo.",
                    style: TextStyle(color: AppColors.purpleMain),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        ),
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: const Color(0xFF000000).withOpacity(0.9),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.block,
                color: AppColors.white,
                size: 50,
              ),
              Text(
                'Conteúdo Bloqueado',
                style: TextStyle(color: AppColors.white, fontSize: 25),
              ),
              Text(
                'Para acesso ao conteúdo é nescessário \nrealizar o pagamento (consulte seu personal).',
                style: TextStyle(color: AppColors.white),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
