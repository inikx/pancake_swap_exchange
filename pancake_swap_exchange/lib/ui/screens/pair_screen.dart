import 'package:flutter/material.dart';
import 'package:pancake_swap_exchange/ui/widgets/app_elevated_button.dart';
import 'package:pancake_swap_exchange/utils/constants/colors.dart';

class PairScreen extends StatelessWidget {
  const PairScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose tokens',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 40),
              AppElevatedButton(
                onPressed: () {},
                backgroundColor: AppColors.black,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Token A',
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Icon(
                  Icons.arrow_downward_rounded,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              AppElevatedButton(
                onPressed: () {},
                backgroundColor: AppColors.black,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColors.white,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Token B',
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              AppElevatedButton(
                onPressed: () {},
                backgroundColor: AppColors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  'Watch',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
