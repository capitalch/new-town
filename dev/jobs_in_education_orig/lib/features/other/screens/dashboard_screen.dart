import 'package:flutter/material.dart';
import 'package:jobs_in_education/features/profile/job_preference/services/job_preferences_provider.dart';
import 'package:provider/provider.dart';

import '/local_storage/token_storage.dart';
import '/routes/route_names.dart';
import '/utils/loading_indicator.dart';
import '/utils/snack_bar_message.dart';
import '../../authentication/services/auth_service.dart';
import '../widgets/primary_button.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({
    Key? key,
  }) : super(key: key);

  final TokenStorage tokenStorage = TokenStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Dashboard'),
              SizedBox(height: 28),
              PrimaryButton(
                onPressed: () => _onTapLogout(context),
                text: 'Log Out',
              ),
              SizedBox(height: 16),
              PrimaryButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.profileOnSignUp);
                },
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onTapLogout(BuildContext context) async {
    LoadingIndicator.show(context);

    final token = await tokenStorage.getToken();
    final response = await MobileOTPAuth().logout(token);

    if (response.success) {
      await tokenStorage.removeToken();
      context.read<JobPreferenceProvider>().clearPreferences();

      LoadingIndicator.close(context);
      SnackBarMessage.show(context, 'Logged out successfully!',
          color: Colors.green);
      Navigator.pushNamedAndRemoveUntil(
          context, RouteNames.onBoarding, (_) => false);
    } else {
      LoadingIndicator.close(context);
      SnackBarMessage.show(context, response.error.msg);
    }
  }
}
