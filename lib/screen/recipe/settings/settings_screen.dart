import 'package:flutter/material.dart';
import 'package:scratch/screen/widget/custom_divider.dart';
import 'package:scratch/theme/custom_color.dart';

import 'widget/change_password.dart';
import 'widget/followers_see_profiles_switch.dart';
import 'widget/followers_see_saved_recipes_switch.dart';
import 'widget/live_cooking_switch.dart';
import 'widget/logout_alert_dialog.dart';
import 'widget/logout_button.dart';
import 'widget/message_switch.dart';
import 'widget/notify_me_for_followers_switch.dart';
import 'widget/privacy_settings_text.dart';
import 'widget/push_notifications_text.dart';
import 'widget/saved_recipes_notification_info_text.dart';
import 'widget/settings_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isNotifyForFollowers = false;
  bool _isSendMeMessage = true;
  bool _isLiveCooking = true;
  bool _isSeeSavedRecipes = true;
  bool _isSeeProfiles = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          LogoutButton(onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return LogoutAlertDialog(
                  onCancelPressed: () => Navigator.of(context).pop(),
                  onYesPressed: () => Navigator.of(context).pop(),
                );
              },
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SettingsText(),
            const SizedBox(height: 20),
            const PushNotificationsText(),
            const SizedBox(height: 10),
            NotifyMeForFollowersSwitch(
              value: _isNotifyForFollowers,
              onChanged: (bool value) {
                setState(() {
                  _isNotifyForFollowers = value;
                });
              },
            ),
            MessageSwitch(
              value: _isSendMeMessage,
              onChanged: (bool value) {
                setState(() {
                  _isSendMeMessage = value;
                });
              },
            ),
            LiveCookingSwitch(
              value: _isLiveCooking,
              onChanged: (bool value) {
                setState(() {
                  _isLiveCooking = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const CustomDivider(
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: CustomColor.dividerColor,
            ),
            const SizedBox(height: 20),
            const PrivacySettingsText(),
            const SizedBox(height: 10),
            FollowersSeeSavedRecipesSwitch(
              value: _isSeeSavedRecipes,
              onChanged: (bool value) {
                setState(() {
                  _isSeeSavedRecipes = value;
                });
              },
            ),
            SavedRecipesNotificationInfoText(onTap: () {}),
            FollowersSeeProfilesSwitch(
              value: _isSeeProfiles,
              onChanged: (bool value) {
                setState(() {
                  _isSeeProfiles = value;
                });
              },
            ),
            const SizedBox(height: 10),
            const CustomDivider(
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: CustomColor.dividerColor,
            ),
            const SizedBox(height: 10),
            ChangePassword(onPressed: () {}),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
