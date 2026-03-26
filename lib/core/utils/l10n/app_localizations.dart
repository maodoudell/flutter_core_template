import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_km.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('km')
  ];

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no reach} =1{1 reach} other{{count} reaches}}'**
  String view(num count);

  /// No description provided for @areply.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no reply} =1{1 reply} other{{count} replies}}'**
  String areply(num count);

  /// No description provided for @areLike.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no like} =1{{count} like} other{{count} likes}}'**
  String areLike(num count);

  /// No description provided for @checkStudent.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{} =1{{count} Student} other{{count} Students}}'**
  String checkStudent(num count);

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no like} =1{{count} Question} other{{count} Questions}}'**
  String question(num count);

  /// No description provided for @postcount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no post} =1{{count} post} other{{count} posts}}'**
  String postcount(num count);

  /// No description provided for @secondCheck.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no second} =1{{count} second} other{{count} seconds}}'**
  String secondCheck(num count);

  /// No description provided for @minuteCheck.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no minute} =1{minute} other{minutes}}'**
  String minuteCheck(num count);

  /// No description provided for @scoreCheck.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no score} =1{{count} point} other{{count} points}}'**
  String scoreCheck(num count);

  /// No description provided for @submitted_at.
  ///
  /// In en, this message translates to:
  /// **'Submitted at'**
  String get submitted_at;

  /// No description provided for @assessment.
  ///
  /// In en, this message translates to:
  /// **'Assessment'**
  String get assessment;

  /// No description provided for @assessment_link_sms.
  ///
  /// In en, this message translates to:
  /// **'Assessments have been linked with SMS'**
  String get assessment_link_sms;

  /// No description provided for @assessment_set_up_not_correct.
  ///
  /// In en, this message translates to:
  /// **'The assessment not setup correctly'**
  String get assessment_set_up_not_correct;

  /// No description provided for @assessment_expired.
  ///
  /// In en, this message translates to:
  /// **'The assessment has been missed because of the deadline, Please contact your teacher'**
  String get assessment_expired;

  /// No description provided for @join_telegram_support_group.
  ///
  /// In en, this message translates to:
  /// **'Join telegram support group'**
  String get join_telegram_support_group;

  /// No description provided for @your_account_not_link_student_id.
  ///
  /// In en, this message translates to:
  /// **'You can not join class because your account does not currently link to student ID'**
  String get your_account_not_link_student_id;

  /// No description provided for @for_support_please_join_telegram_group.
  ///
  /// In en, this message translates to:
  /// **'For support and assistance with verify your student ID, you can join our Telegram support group'**
  String get for_support_please_join_telegram_group;

  /// No description provided for @please_select_dob.
  ///
  /// In en, this message translates to:
  /// **'Please select date of birth'**
  String get please_select_dob;

  /// No description provided for @please_input_student_id.
  ///
  /// In en, this message translates to:
  /// **'Please input Student ID'**
  String get please_input_student_id;

  /// No description provided for @student_id_must_start_with_char.
  ///
  /// In en, this message translates to:
  /// **'Student ID must start with a letter'**
  String get student_id_must_start_with_char;

  /// No description provided for @student_id_not_found.
  ///
  /// In en, this message translates to:
  /// **'Student ID or Date of birth not match'**
  String get student_id_not_found;

  /// No description provided for @student_name.
  ///
  /// In en, this message translates to:
  /// **'Student Name'**
  String get student_name;

  /// No description provided for @permanent_id.
  ///
  /// In en, this message translates to:
  /// **'Permanent ID'**
  String get permanent_id;

  /// No description provided for @verify_ur_student_id_now.
  ///
  /// In en, this message translates to:
  /// **'Verify your Student ID now'**
  String get verify_ur_student_id_now;

  /// No description provided for @check_id.
  ///
  /// In en, this message translates to:
  /// **'Check ID'**
  String get check_id;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @pending_approval.
  ///
  /// In en, this message translates to:
  /// **'Pending Approval'**
  String get pending_approval;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @waiting_approval.
  ///
  /// In en, this message translates to:
  /// **'Waiting Approval'**
  String get waiting_approval;

  /// No description provided for @parent_return.
  ///
  /// In en, this message translates to:
  /// **'Parent Return'**
  String get parent_return;

  /// No description provided for @anonymous_post.
  ///
  /// In en, this message translates to:
  /// **'annonymous post'**
  String get anonymous_post;

  /// No description provided for @what_new_in.
  ///
  /// In en, this message translates to:
  /// **'What\'s new in'**
  String get what_new_in;

  /// No description provided for @class_assessment.
  ///
  /// In en, this message translates to:
  /// **'Class Assessment'**
  String get class_assessment;

  /// No description provided for @ur_sub_pending_ur_parent_approve.
  ///
  /// In en, this message translates to:
  /// **'Your submission is pending your parent\'s approval.'**
  String get ur_sub_pending_ur_parent_approve;

  /// No description provided for @ur_parent_return_homework_please_resubmit.
  ///
  /// In en, this message translates to:
  /// **'Your parent has returned your homework. Please revise and resubmit.'**
  String get ur_parent_return_homework_please_resubmit;

  /// No description provided for @parent_feedback.
  ///
  /// In en, this message translates to:
  /// **'Parent feedback'**
  String get parent_feedback;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @deadline.
  ///
  /// In en, this message translates to:
  /// **'Deadline'**
  String get deadline;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @new_request.
  ///
  /// In en, this message translates to:
  /// **'New Request'**
  String get new_request;

  /// No description provided for @leaderboard.
  ///
  /// In en, this message translates to:
  /// **'Leaderboard'**
  String get leaderboard;

  /// No description provided for @leave_class.
  ///
  /// In en, this message translates to:
  /// **'Leave Class'**
  String get leave_class;

  /// No description provided for @leave_class_confirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to leave this class?'**
  String get leave_class_confirm;

  /// No description provided for @verify_student.
  ///
  /// In en, this message translates to:
  /// **'Verify Student'**
  String get verify_student;

  /// No description provided for @input_student_id_and_dob.
  ///
  /// In en, this message translates to:
  /// **'Please input student Id and select date of birth to verify.'**
  String get input_student_id_and_dob;

  /// No description provided for @by.
  ///
  /// In en, this message translates to:
  /// **'By'**
  String get by;

  /// No description provided for @s.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get s;

  /// No description provided for @mn.
  ///
  /// In en, this message translates to:
  /// **'mn'**
  String get mn;

  /// No description provided for @section.
  ///
  /// In en, this message translates to:
  /// **'Section'**
  String get section;

  /// No description provided for @session_expired.
  ///
  /// In en, this message translates to:
  /// **'Session Expired'**
  String get session_expired;

  /// No description provided for @session_expired_desc.
  ///
  /// In en, this message translates to:
  /// **'Your session has expired. Please log in again.'**
  String get session_expired_desc;

  /// No description provided for @total_student.
  ///
  /// In en, this message translates to:
  /// **'Total Student'**
  String get total_student;

  /// No description provided for @try_this_quiz_now.
  ///
  /// In en, this message translates to:
  /// **'Try this quiz now'**
  String get try_this_quiz_now;

  /// No description provided for @are_you_ais_student.
  ///
  /// In en, this message translates to:
  /// **'Are you an AIS student?'**
  String get are_you_ais_student;

  /// No description provided for @campus.
  ///
  /// In en, this message translates to:
  /// **'Campus'**
  String get campus;

  /// No description provided for @student_id.
  ///
  /// In en, this message translates to:
  /// **'Student ID'**
  String get student_id;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @instructions.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get instructions;

  /// No description provided for @connect_with_others.
  ///
  /// In en, this message translates to:
  /// **'Connect with Others'**
  String get connect_with_others;

  /// No description provided for @connect_with_mentor.
  ///
  /// In en, this message translates to:
  /// **'Connect with mentors'**
  String get connect_with_mentor;

  /// No description provided for @crop_image.
  ///
  /// In en, this message translates to:
  /// **'Crop image'**
  String get crop_image;

  /// No description provided for @student_join.
  ///
  /// In en, this message translates to:
  /// **'Student join'**
  String get student_join;

  /// No description provided for @schedule_post.
  ///
  /// In en, this message translates to:
  /// **'Schedule post'**
  String get schedule_post;

  /// No description provided for @joined.
  ///
  /// In en, this message translates to:
  /// **'Joined'**
  String get joined;

  /// No description provided for @user_join_txt1.
  ///
  /// In en, this message translates to:
  /// **'Say Hi to new members'**
  String get user_join_txt1;

  /// No description provided for @user_join_txt2.
  ///
  /// In en, this message translates to:
  /// **'Welcome the newest member to our community with a friendly greeting!'**
  String get user_join_txt2;

  /// No description provided for @follow_now.
  ///
  /// In en, this message translates to:
  /// **'Follow now'**
  String get follow_now;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @total_questions.
  ///
  /// In en, this message translates to:
  /// **'Total question'**
  String get total_questions;

  /// No description provided for @score.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get score;

  /// No description provided for @total_schedule_post.
  ///
  /// In en, this message translates to:
  /// **'Total schedule post'**
  String get total_schedule_post;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @new_user_join.
  ///
  /// In en, this message translates to:
  /// **'New user join'**
  String get new_user_join;

  /// No description provided for @swap_right_and_left.
  ///
  /// In en, this message translates to:
  /// **'Swap right to go next and swap left to get back'**
  String get swap_right_and_left;

  /// No description provided for @mode.
  ///
  /// In en, this message translates to:
  /// **'{mode, select,green{Green} pink{Pink} light{Light} ais{AIS} other{Dark}}'**
  String mode(String mode);

  /// No description provided for @mark_as_completed.
  ///
  /// In en, this message translates to:
  /// **'Mark as completed'**
  String get mark_as_completed;

  /// No description provided for @block_user.
  ///
  /// In en, this message translates to:
  /// **'Block user'**
  String get block_user;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @public.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get public;

  /// No description provided for @created_by.
  ///
  /// In en, this message translates to:
  /// **'Created by'**
  String get created_by;

  /// No description provided for @class_management.
  ///
  /// In en, this message translates to:
  /// **'Class management'**
  String get class_management;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'online'**
  String get online;

  /// No description provided for @start_course.
  ///
  /// In en, this message translates to:
  /// **'Start course'**
  String get start_course;

  /// No description provided for @start_the_public_quiz_now.
  ///
  /// In en, this message translates to:
  /// **'Start the public quiz now'**
  String get start_the_public_quiz_now;

  /// No description provided for @learning_with_free_course.
  ///
  /// In en, this message translates to:
  /// **'Learning with free course'**
  String get learning_with_free_course;

  /// No description provided for @quiz_history.
  ///
  /// In en, this message translates to:
  /// **'Quiz history'**
  String get quiz_history;

  /// No description provided for @quiz_again.
  ///
  /// In en, this message translates to:
  /// **'ធ្វើលំហាត់ម្តងទៀត'**
  String get quiz_again;

  /// No description provided for @gif.
  ///
  /// In en, this message translates to:
  /// **'GIF'**
  String get gif;

  /// No description provided for @my_learning.
  ///
  /// In en, this message translates to:
  /// **'My Learning'**
  String get my_learning;

  /// No description provided for @my_teaching.
  ///
  /// In en, this message translates to:
  /// **'My Teaching'**
  String get my_teaching;

  /// No description provided for @quizStart1.
  ///
  /// In en, this message translates to:
  /// **'This test consists questions with no time limit. Click the Start Exam button to begin.'**
  String get quizStart1;

  /// No description provided for @quizStart2.
  ///
  /// In en, this message translates to:
  /// **'Feel free to mark questions for review and submit when you\'re done.'**
  String get quizStart2;

  /// No description provided for @quizStart3.
  ///
  /// In en, this message translates to:
  /// **'Best of luck!'**
  String get quizStart3;

  /// No description provided for @quiz_overview.
  ///
  /// In en, this message translates to:
  /// **'Quiz overview'**
  String get quiz_overview;

  /// No description provided for @lesson_content.
  ///
  /// In en, this message translates to:
  /// **'Lesson content'**
  String get lesson_content;

  /// No description provided for @lesson_detail.
  ///
  /// In en, this message translates to:
  /// **'Lesson detail'**
  String get lesson_detail;

  /// No description provided for @summaries.
  ///
  /// In en, this message translates to:
  /// **'Summaries'**
  String get summaries;

  /// No description provided for @rating_lists.
  ///
  /// In en, this message translates to:
  /// **'Rating lists'**
  String get rating_lists;

  /// No description provided for @share_to_other.
  ///
  /// In en, this message translates to:
  /// **'Share to other'**
  String get share_to_other;

  /// No description provided for @link.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get link;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @pin_and_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Pin & QR Code'**
  String get pin_and_qr_code;

  /// No description provided for @tap_code_to_copy.
  ///
  /// In en, this message translates to:
  /// **'Tap code to copy'**
  String get tap_code_to_copy;

  /// No description provided for @repost_now.
  ///
  /// In en, this message translates to:
  /// **'Repost now'**
  String get repost_now;

  /// No description provided for @repost.
  ///
  /// In en, this message translates to:
  /// **'Repost'**
  String get repost;

  /// No description provided for @userType.
  ///
  /// In en, this message translates to:
  /// **'User type'**
  String get userType;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get attachment;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reason;

  /// No description provided for @plz_open_setting_mircophone.
  ///
  /// In en, this message translates to:
  /// **'Please open setting to enable microphone permission'**
  String get plz_open_setting_mircophone;

  /// No description provided for @plz_open_setting_storage.
  ///
  /// In en, this message translates to:
  /// **'Please open setting to enable storage permission'**
  String get plz_open_setting_storage;

  /// No description provided for @time_second_ago.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{ second ago} other{ seconds ago}}'**
  String time_second_ago(num count);

  /// No description provided for @time_minute_ago.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{ minute ago} other{ minutes ago}}'**
  String time_minute_ago(num count);

  /// No description provided for @time_hour_ago.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{ hour ago} other{ hours ago}}'**
  String time_hour_ago(num count);

  /// No description provided for @time_day_ago.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{ day ago} other{ days ago}}'**
  String time_day_ago(num count);

  /// No description provided for @deleted_message.
  ///
  /// In en, this message translates to:
  /// **'Deleted message'**
  String get deleted_message;

  /// No description provided for @are_you_sure_u_want_to_delete_this_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this message?'**
  String get are_you_sure_u_want_to_delete_this_message;

  /// No description provided for @are_you_sure_u_want_to_block.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to block'**
  String get are_you_sure_u_want_to_block;

  /// No description provided for @must_be_between_2_20_characters.
  ///
  /// In en, this message translates to:
  /// **'must be between 2 and 20 characters'**
  String get must_be_between_2_20_characters;

  /// No description provided for @must_be_between_5_20_characters.
  ///
  /// In en, this message translates to:
  /// **'must be between 5 and 20 characters'**
  String get must_be_between_5_20_characters;

  /// No description provided for @you_can_use_username_password_to_login.
  ///
  /// In en, this message translates to:
  /// **'You can use the username and password to log in'**
  String get you_can_use_username_password_to_login;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @you_can_not_use_function_until_u_got_approve.
  ///
  /// In en, this message translates to:
  /// **'You can\'t use this function until you got approved'**
  String get you_can_not_use_function_until_u_got_approve;

  /// No description provided for @request_become_mentor_info.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your interest in becoming a mentor on our platform! We\'ve received your application and are currently reviewing it. Please wait for approval.'**
  String get request_become_mentor_info;

  /// No description provided for @user_likes.
  ///
  /// In en, this message translates to:
  /// **'User likes'**
  String get user_likes;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get something_went_wrong;

  /// No description provided for @url_not_found.
  ///
  /// In en, this message translates to:
  /// **'Url not found'**
  String get url_not_found;

  /// No description provided for @check_ur_connection_or_try_refresh.
  ///
  /// In en, this message translates to:
  /// **'Check your connection or try refresh the page'**
  String get check_ur_connection_or_try_refresh;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @username_is_taken.
  ///
  /// In en, this message translates to:
  /// **'Username is taken'**
  String get username_is_taken;

  /// No description provided for @no_route_found.
  ///
  /// In en, this message translates to:
  /// **'No Route found'**
  String get no_route_found;

  /// No description provided for @on_boarding_title1.
  ///
  /// In en, this message translates to:
  /// **'Unlock Your Mentorship Journey'**
  String get on_boarding_title1;

  /// No description provided for @on_boarding_title2.
  ///
  /// In en, this message translates to:
  /// **'Empower Others, Empower Yourself'**
  String get on_boarding_title2;

  /// No description provided for @on_boarding_title3.
  ///
  /// In en, this message translates to:
  /// **'Connect. Guide. Inspire.'**
  String get on_boarding_title3;

  /// No description provided for @on_boarding_desc1.
  ///
  /// In en, this message translates to:
  /// **'Transform lives by sharing your expertise. Connect with mentees and make a lasting impact.'**
  String get on_boarding_desc1;

  /// No description provided for @on_boarding_desc2.
  ///
  /// In en, this message translates to:
  /// **'Share your wisdom with eager minds. Set preferences, match with mentees, and start your mentorship journey.'**
  String get on_boarding_desc2;

  /// No description provided for @on_boarding_desc3.
  ///
  /// In en, this message translates to:
  /// **'Guide and inspire others on their paths. Join a community of mentors and mentees, and let the mentorship magic begin.'**
  String get on_boarding_desc3;

  /// No description provided for @like.
  ///
  /// In en, this message translates to:
  /// **'like'**
  String get like;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **'likes'**
  String get likes;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @replies.
  ///
  /// In en, this message translates to:
  /// **'Replies'**
  String get replies;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @file.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get file;

  /// No description provided for @topic.
  ///
  /// In en, this message translates to:
  /// **'Topic'**
  String get topic;

  /// No description provided for @about_us.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get about_us;

  /// No description provided for @add_catchy_title_get_attractive.
  ///
  /// In en, this message translates to:
  /// **'Add a catchy title to get attractive'**
  String get add_catchy_title_get_attractive;

  /// No description provided for @follow_mentor_now.
  ///
  /// In en, this message translates to:
  /// **'Follow mentor now'**
  String get follow_mentor_now;

  /// No description provided for @appointment.
  ///
  /// In en, this message translates to:
  /// **'Appointment'**
  String get appointment;

  /// No description provided for @about_mentor.
  ///
  /// In en, this message translates to:
  /// **'About mentor'**
  String get about_mentor;

  /// No description provided for @available_time.
  ///
  /// In en, this message translates to:
  /// **'Available time'**
  String get available_time;

  /// No description provided for @scholarship.
  ///
  /// In en, this message translates to:
  /// **'Scholarship'**
  String get scholarship;

  /// No description provided for @cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'cannot be empty'**
  String get cannot_be_empty;

  /// No description provided for @request_scholarship.
  ///
  /// In en, this message translates to:
  /// **'Request scholarship'**
  String get request_scholarship;

  /// No description provided for @attach_file_or_photo.
  ///
  /// In en, this message translates to:
  /// **'Attach file or photo'**
  String get attach_file_or_photo;

  /// No description provided for @school.
  ///
  /// In en, this message translates to:
  /// **'School'**
  String get school;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @current_address.
  ///
  /// In en, this message translates to:
  /// **'Current address'**
  String get current_address;

  /// No description provided for @why_should_we_grant_you_scholarship.
  ///
  /// In en, this message translates to:
  /// **'Why should we grant you scholarship'**
  String get why_should_we_grant_you_scholarship;

  /// No description provided for @start_time.
  ///
  /// In en, this message translates to:
  /// **'Start time'**
  String get start_time;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @book_appointment.
  ///
  /// In en, this message translates to:
  /// **'Book appointment'**
  String get book_appointment;

  /// No description provided for @select_duration.
  ///
  /// In en, this message translates to:
  /// **'Select duration'**
  String get select_duration;

  /// No description provided for @username_can_not_contain_spaces.
  ///
  /// In en, this message translates to:
  /// **'Username can not contain spaces'**
  String get username_can_not_contain_spaces;

  /// No description provided for @username_can_not_contain_capital_letter.
  ///
  /// In en, this message translates to:
  /// **'Username can not contain capital letter'**
  String get username_can_not_contain_capital_letter;

  /// No description provided for @username_can_not_contain_special_character.
  ///
  /// In en, this message translates to:
  /// **'Username can not contain special character'**
  String get username_can_not_contain_special_character;

  /// No description provided for @password_must_be_at_least_6_character.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 character'**
  String get password_must_be_at_least_6_character;

  /// No description provided for @agreement.
  ///
  /// In en, this message translates to:
  /// **'Agreement'**
  String get agreement;

  /// No description provided for @power_by.
  ///
  /// In en, this message translates to:
  /// **'POWERED BY'**
  String get power_by;

  /// No description provided for @save_image.
  ///
  /// In en, this message translates to:
  /// **'Save image'**
  String get save_image;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View all'**
  String get view_all;

  /// No description provided for @view_profile.
  ///
  /// In en, this message translates to:
  /// **'View profile'**
  String get view_profile;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @reply_to.
  ///
  /// In en, this message translates to:
  /// **'Reply to'**
  String get reply_to;

  /// No description provided for @reply_to_ur_self.
  ///
  /// In en, this message translates to:
  /// **'Reply to yourself'**
  String get reply_to_ur_self;

  /// No description provided for @sticker.
  ///
  /// In en, this message translates to:
  /// **'Sticker'**
  String get sticker;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @exceeded_maximum_number_of_selected_items.
  ///
  /// In en, this message translates to:
  /// **'Exceeded maximum number of selected items'**
  String get exceeded_maximum_number_of_selected_items;

  /// No description provided for @just_liked_a_post.
  ///
  /// In en, this message translates to:
  /// **'just liked a post'**
  String get just_liked_a_post;

  /// No description provided for @your_over_all_rating.
  ///
  /// In en, this message translates to:
  /// **'Your over all rating'**
  String get your_over_all_rating;

  /// No description provided for @give_feedback.
  ///
  /// In en, this message translates to:
  /// **'Give feedback'**
  String get give_feedback;

  /// No description provided for @thank_for_using_mentor_app.
  ///
  /// In en, this message translates to:
  /// **'Thank for using Mentor App'**
  String get thank_for_using_mentor_app;

  /// No description provided for @if_you_enjoy_mentor_app_etc.
  ///
  /// In en, this message translates to:
  /// **'If you enjoy Mentor App, give us a star review.If not, give us feedback on how to improve!'**
  String get if_you_enjoy_mentor_app_etc;

  /// No description provided for @be_the_first_to_reply.
  ///
  /// In en, this message translates to:
  /// **'Be the first to reply'**
  String get be_the_first_to_reply;

  /// No description provided for @subject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get subject;

  /// No description provided for @of_point.
  ///
  /// In en, this message translates to:
  /// **'Of'**
  String get of_point;

  /// No description provided for @result.
  ///
  /// In en, this message translates to:
  /// **'Result'**
  String get result;

  /// No description provided for @rate_now.
  ///
  /// In en, this message translates to:
  /// **'Rate now'**
  String get rate_now;

  /// No description provided for @app_version.
  ///
  /// In en, this message translates to:
  /// **'App version'**
  String get app_version;

  /// No description provided for @all_accounts.
  ///
  /// In en, this message translates to:
  /// **'All accounts'**
  String get all_accounts;

  /// No description provided for @switch_account.
  ///
  /// In en, this message translates to:
  /// **'Switch account'**
  String get switch_account;

  /// No description provided for @your_choice_and_correct_answer.
  ///
  /// In en, this message translates to:
  /// **'Your choice and correct answer'**
  String get your_choice_and_correct_answer;

  /// No description provided for @your_choice_is_correct.
  ///
  /// In en, this message translates to:
  /// **'Your choice is correct'**
  String get your_choice_is_correct;

  /// No description provided for @your_choice_is_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Your choice is incorrect'**
  String get your_choice_is_incorrect;

  /// No description provided for @selected_class.
  ///
  /// In en, this message translates to:
  /// **'Selected class'**
  String get selected_class;

  /// No description provided for @selected_subject.
  ///
  /// In en, this message translates to:
  /// **'Selected subject'**
  String get selected_subject;

  /// No description provided for @selected_lesson.
  ///
  /// In en, this message translates to:
  /// **'Selected lesson'**
  String get selected_lesson;

  /// No description provided for @welcome_text.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcome_text;

  /// No description provided for @user_log_headline1.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get user_log_headline1;

  /// No description provided for @user_log_headline2.
  ///
  /// In en, this message translates to:
  /// **'Please make sure that you have signed up before.'**
  String get user_log_headline2;

  /// No description provided for @phone_email_log_headline1.
  ///
  /// In en, this message translates to:
  /// **'Please enter your account here'**
  String get phone_email_log_headline1;

  /// No description provided for @phone_email_log_headline2.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send you a verification code so we\'ll know you\'re real.'**
  String get phone_email_log_headline2;

  /// No description provided for @signin_with_social.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get signin_with_social;

  /// No description provided for @invalid_password.
  ///
  /// In en, this message translates to:
  /// **'password is wrong'**
  String get invalid_password;

  /// No description provided for @username_hint.
  ///
  /// In en, this message translates to:
  /// **'Email or phone number'**
  String get username_hint;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @password_hint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password_hint;

  /// No description provided for @all_subject.
  ///
  /// In en, this message translates to:
  /// **'All subjects'**
  String get all_subject;

  /// No description provided for @quiz.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get quiz;

  /// No description provided for @homework.
  ///
  /// In en, this message translates to:
  /// **'Homework'**
  String get homework;

  /// No description provided for @my_class.
  ///
  /// In en, this message translates to:
  /// **'My class'**
  String get my_class;

  /// No description provided for @quizzes.
  ///
  /// In en, this message translates to:
  /// **'Quizzes'**
  String get quizzes;

  /// No description provided for @student.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get student;

  /// No description provided for @students.
  ///
  /// In en, this message translates to:
  /// **'Students'**
  String get students;

  /// No description provided for @all_students.
  ///
  /// In en, this message translates to:
  /// **'All students'**
  String get all_students;

  /// No description provided for @quiz_detail.
  ///
  /// In en, this message translates to:
  /// **'Quiz detail'**
  String get quiz_detail;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @create_class.
  ///
  /// In en, this message translates to:
  /// **'Create class'**
  String get create_class;

  /// No description provided for @create_group.
  ///
  /// In en, this message translates to:
  /// **'Create group'**
  String get create_group;

  /// No description provided for @correct.
  ///
  /// In en, this message translates to:
  /// **'Correct'**
  String get correct;

  /// No description provided for @incorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect'**
  String get incorrect;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'points'**
  String get points;

  /// No description provided for @confirm_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password_hint;

  /// No description provided for @password_suggest.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least 6 characters long'**
  String get password_suggest;

  /// No description provided for @create_username_password.
  ///
  /// In en, this message translates to:
  /// **'Create Username and Password'**
  String get create_username_password;

  /// No description provided for @become_mentor.
  ///
  /// In en, this message translates to:
  /// **'Become a mentor'**
  String get become_mentor;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @search_top.
  ///
  /// In en, this message translates to:
  /// **'Search for topic'**
  String get search_top;

  /// No description provided for @dob.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dob;

  /// No description provided for @pob.
  ///
  /// In en, this message translates to:
  /// **'Place of Birth'**
  String get pob;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @saveTab.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveTab;

  /// No description provided for @mentionTab.
  ///
  /// In en, this message translates to:
  /// **'Mention'**
  String get mentionTab;

  /// No description provided for @postTab.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get postTab;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @edit_personal_title.
  ///
  /// In en, this message translates to:
  /// **'Edit Personal Information'**
  String get edit_personal_title;

  /// No description provided for @personal_title.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personal_title;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @write_your_question.
  ///
  /// In en, this message translates to:
  /// **'Write your question...'**
  String get write_your_question;

  /// No description provided for @create_post.
  ///
  /// In en, this message translates to:
  /// **'Create Post'**
  String get create_post;

  /// No description provided for @edit_post.
  ///
  /// In en, this message translates to:
  /// **'Edit Post'**
  String get edit_post;

  /// No description provided for @photo_video.
  ///
  /// In en, this message translates to:
  /// **'Photo/Video'**
  String get photo_video;

  /// No description provided for @choose_category_before_post.
  ///
  /// In en, this message translates to:
  /// **'Please choose category before post'**
  String get choose_category_before_post;

  /// No description provided for @choose_category.
  ///
  /// In en, this message translates to:
  /// **'Choose Category'**
  String get choose_category;

  /// No description provided for @choose_mentor.
  ///
  /// In en, this message translates to:
  /// **'Choose Mentor'**
  String get choose_mentor;

  /// No description provided for @save_change.
  ///
  /// In en, this message translates to:
  /// **'Save Change'**
  String get save_change;

  /// No description provided for @dont_have_code.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive any code?'**
  String get dont_have_code;

  /// No description provided for @we_have_send.
  ///
  /// In en, this message translates to:
  /// **'We\'ve send a verification code your phone number'**
  String get we_have_send;

  /// No description provided for @we_have_send_email.
  ///
  /// In en, this message translates to:
  /// **' We\'ve send a verification code your email:'**
  String get we_have_send_email;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @login_button.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get login_button;

  /// No description provided for @suggestions_title.
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get suggestions_title;

  /// No description provided for @suggestion_mentors.
  ///
  /// In en, this message translates to:
  /// **'Suggestion mentors'**
  String get suggestion_mentors;

  /// No description provided for @suggestion_mentees.
  ///
  /// In en, this message translates to:
  /// **'Suggestion mentees'**
  String get suggestion_mentees;

  /// No description provided for @suggestion_to_follow_title.
  ///
  /// In en, this message translates to:
  /// **'Start following mentors and other users for more sharing and new knowledge'**
  String get suggestion_to_follow_title;

  /// No description provided for @choose_topic_description.
  ///
  /// In en, this message translates to:
  /// **'Choose up to 3 topic that spark your curiosity. The more you select, the better we can tailor things to your interests'**
  String get choose_topic_description;

  /// No description provided for @choose_expertise_description.
  ///
  /// In en, this message translates to:
  /// **'You can choose your expertise more than one'**
  String get choose_expertise_description;

  /// No description provided for @edit_expertise.
  ///
  /// In en, this message translates to:
  /// **'Edit your expertise'**
  String get edit_expertise;

  /// No description provided for @expertise.
  ///
  /// In en, this message translates to:
  /// **'Expertise'**
  String get expertise;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @please_select_topic_at_least_3.
  ///
  /// In en, this message translates to:
  /// **'Please select topic at least 3'**
  String get please_select_topic_at_least_3;

  /// No description provided for @post_result.
  ///
  /// In en, this message translates to:
  /// **'Post result'**
  String get post_result;

  /// No description provided for @view_detail.
  ///
  /// In en, this message translates to:
  /// **'View detail'**
  String get view_detail;

  /// No description provided for @question_number.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question_number;

  /// No description provided for @choose_answer.
  ///
  /// In en, this message translates to:
  /// **'Choose Answer'**
  String get choose_answer;

  /// No description provided for @choose_class.
  ///
  /// In en, this message translates to:
  /// **'Choose class'**
  String get choose_class;

  /// No description provided for @choose_subject.
  ///
  /// In en, this message translates to:
  /// **'Choose subject'**
  String get choose_subject;

  /// No description provided for @choose_lesson.
  ///
  /// In en, this message translates to:
  /// **'Choose lesson'**
  String get choose_lesson;

  /// No description provided for @create_lesson.
  ///
  /// In en, this message translates to:
  /// **'Create lesson'**
  String get create_lesson;

  /// No description provided for @classX.
  ///
  /// In en, this message translates to:
  /// **'Class'**
  String get classX;

  /// No description provided for @all_class.
  ///
  /// In en, this message translates to:
  /// **'All classes'**
  String get all_class;

  /// No description provided for @join_class.
  ///
  /// In en, this message translates to:
  /// **'Join class'**
  String get join_class;

  /// No description provided for @join_class_description.
  ///
  /// In en, this message translates to:
  /// **'You can join a class with QR code or Enter code.'**
  String get join_class_description;

  /// No description provided for @join_class_with_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Join class with QR code'**
  String get join_class_with_qr_code;

  /// No description provided for @join_class_with_code.
  ///
  /// In en, this message translates to:
  /// **'Join class with code'**
  String get join_class_with_code;

  /// No description provided for @forgot_password_text.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgot_password_text;

  /// No description provided for @register_text.
  ///
  /// In en, this message translates to:
  /// **'Not a member? Sign Up'**
  String get register_text;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading....'**
  String get loading;

  /// No description provided for @retry_again.
  ///
  /// In en, this message translates to:
  /// **'Retry again'**
  String get retry_again;

  /// No description provided for @error_occurred.
  ///
  /// In en, this message translates to:
  /// **'An Error Occurred'**
  String get error_occurred;

  /// No description provided for @invalid_user_name.
  ///
  /// In en, this message translates to:
  /// **'Invalid Username'**
  String get invalid_user_name;

  /// No description provided for @invalid_mobile_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid Mobile Number or Email'**
  String get invalid_mobile_number;

  /// No description provided for @invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid Email'**
  String get invalid_email;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @already_have_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? sign in'**
  String get already_have_account;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @mentors.
  ///
  /// In en, this message translates to:
  /// **'Mentors'**
  String get mentors;

  /// No description provided for @mentorsAppBar.
  ///
  /// In en, this message translates to:
  /// **'Acitve Mentors'**
  String get mentorsAppBar;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @faqAppBar.
  ///
  /// In en, this message translates to:
  /// **'Frequently asked questions'**
  String get faqAppBar;

  /// No description provided for @mentorHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get mentorHome;

  /// No description provided for @mentorRating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get mentorRating;

  /// No description provided for @mentorNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get mentorNotifications;

  /// No description provided for @mentorProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get mentorProfile;

  /// No description provided for @create_text.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get create_text;

  /// No description provided for @send_button.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send_button;

  /// No description provided for @email_hint.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email_hint;

  /// No description provided for @verification.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verification;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'success'**
  String get success;

  /// No description provided for @bad_request_error.
  ///
  /// In en, this message translates to:
  /// **'Bad request. try again later'**
  String get bad_request_error;

  /// No description provided for @forbidden_error.
  ///
  /// In en, this message translates to:
  /// **'forbidden request. try again later'**
  String get forbidden_error;

  /// No description provided for @unauthorized_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid username or password'**
  String get unauthorized_error;

  /// No description provided for @not_found_error.
  ///
  /// In en, this message translates to:
  /// **'url not found, try again later'**
  String get not_found_error;

  /// No description provided for @conflict_error.
  ///
  /// In en, this message translates to:
  /// **'Conflict found, try again later'**
  String get conflict_error;

  /// No description provided for @internal_server_error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, try again later'**
  String get internal_server_error;

  /// No description provided for @unknown_error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, try again later'**
  String get unknown_error;

  /// No description provided for @timeout_error.
  ///
  /// In en, this message translates to:
  /// **'Time out, try again late'**
  String get timeout_error;

  /// No description provided for @default_error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, try again later'**
  String get default_error;

  /// No description provided for @cache_error.
  ///
  /// In en, this message translates to:
  /// **'cache error, try again later'**
  String get cache_error;

  /// No description provided for @no_internet_error.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection'**
  String get no_internet_error;

  /// No description provided for @no_content.
  ///
  /// In en, this message translates to:
  /// **'success with not content'**
  String get no_content;

  /// No description provided for @send_otp.
  ///
  /// In en, this message translates to:
  /// **'Send OTP'**
  String get send_otp;

  /// No description provided for @sign_in_username.
  ///
  /// In en, this message translates to:
  /// **'Sign in with username'**
  String get sign_in_username;

  /// No description provided for @sign_in_phone_email.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Phone or Email'**
  String get sign_in_phone_email;

  /// No description provided for @sign_in_fb.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Facebook'**
  String get sign_in_fb;

  /// No description provided for @write_your_caption.
  ///
  /// In en, this message translates to:
  /// **'Write your caption'**
  String get write_your_caption;

  /// No description provided for @caption_ideas.
  ///
  /// In en, this message translates to:
  /// **'Caption ideas'**
  String get caption_ideas;

  /// No description provided for @ago.
  ///
  /// In en, this message translates to:
  /// **' ago'**
  String get ago;

  /// No description provided for @just_now.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get just_now;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute} other{{count} minutes}}'**
  String minute(num count);

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour} other{{count} hours}}'**
  String hour(num count);

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String day(num count);

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 week} other{{count} weeks}}'**
  String week(num count);

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 month} other{{count} months}}'**
  String month(num count);

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 year} other{{count} years}}'**
  String year(num count);

  /// No description provided for @unknow.
  ///
  /// In en, this message translates to:
  /// **' Unknow'**
  String get unknow;

  /// No description provided for @find_favorite_mentor.
  ///
  /// In en, this message translates to:
  /// **'Find your favorite mentor...'**
  String get find_favorite_mentor;

  /// No description provided for @save_post_smg.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get save_post_smg;

  /// No description provided for @unsave_post_smg.
  ///
  /// In en, this message translates to:
  /// **'Unsaved'**
  String get unsave_post_smg;

  /// No description provided for @save_post.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save_post;

  /// No description provided for @unsave_post.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get unsave_post;

  /// No description provided for @anonymous.
  ///
  /// In en, this message translates to:
  /// **'Anonymous'**
  String get anonymous;

  /// No description provided for @leave_comment.
  ///
  /// In en, this message translates to:
  /// **'Leave your reply here...'**
  String get leave_comment;

  /// No description provided for @uncategory.
  ///
  /// In en, this message translates to:
  /// **'Uncategory'**
  String get uncategory;

  /// No description provided for @logout_msg_title.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logout_msg_title;

  /// No description provided for @logout_btn_txt.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout_btn_txt;

  /// No description provided for @cancel_btn_txt.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel_btn_txt;

  /// No description provided for @lang.
  ///
  /// In en, this message translates to:
  /// **'{lang, select,en{English} other{Khmer}}'**
  String lang(String lang);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @open_setting.
  ///
  /// In en, this message translates to:
  /// **'Open setting'**
  String get open_setting;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @change_lang.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get change_lang;

  /// No description provided for @acc_info.
  ///
  /// In en, this message translates to:
  /// **'Account information'**
  String get acc_info;

  /// No description provided for @change_pass.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get change_pass;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy;

  /// No description provided for @help_supp.
  ///
  /// In en, this message translates to:
  /// **'Help and support'**
  String get help_supp;

  /// No description provided for @email_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Email * (required)'**
  String get email_hint_txt;

  /// No description provided for @username_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Username * (required)'**
  String get username_hint_txt;

  /// No description provided for @pw_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Password * (required)'**
  String get pw_hint_txt;

  /// No description provided for @cf_pw_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password * (required)'**
  String get cf_pw_hint_txt;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @f_name_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'First Name * (required)'**
  String get f_name_hint_txt;

  /// No description provided for @s_name_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Second Name * (required)'**
  String get s_name_hint_txt;

  /// No description provided for @occupation_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Occupation * (required)'**
  String get occupation_hint_txt;

  /// No description provided for @bio_hint_txt.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get bio_hint_txt;

  /// No description provided for @term.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get term;

  /// No description provided for @policy.
  ///
  /// In en, this message translates to:
  /// **'Policy'**
  String get policy;

  /// No description provided for @loginForgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password ?'**
  String get loginForgetPassword;

  /// No description provided for @loginNoAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have account yet?'**
  String get loginNoAccount;

  /// No description provided for @loginSign.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get loginSign;

  /// No description provided for @loginPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPassword;

  /// No description provided for @loginUsername.
  ///
  /// In en, this message translates to:
  /// **'Username / Phone number'**
  String get loginUsername;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get loginTitle;

  /// No description provided for @loginSend.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get loginSend;

  /// No description provided for @signHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already had account?'**
  String get signHaveAccount;

  /// No description provided for @signLogin.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signLogin;

  /// No description provided for @signPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signPassword;

  /// No description provided for @signUsername.
  ///
  /// In en, this message translates to:
  /// **'Email / Phone number'**
  String get signUsername;

  /// No description provided for @signTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signTitle;

  /// No description provided for @signSend.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get signSend;

  /// No description provided for @application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get application;

  /// No description provided for @settingApplication.
  ///
  /// In en, this message translates to:
  /// **'Application setting'**
  String get settingApplication;

  /// No description provided for @settingAccountInfo.
  ///
  /// In en, this message translates to:
  /// **'Account information'**
  String get settingAccountInfo;

  /// No description provided for @settingTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme mode'**
  String get settingTheme;

  /// No description provided for @settingPolicy.
  ///
  /// In en, this message translates to:
  /// **'Policies'**
  String get settingPolicy;

  /// No description provided for @settingOther.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get settingOther;

  /// No description provided for @settingFaq.
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions'**
  String get settingFaq;

  /// No description provided for @settingNotification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get settingNotification;

  /// No description provided for @settingDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get settingDeleteAccount;

  /// No description provided for @settingDeleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to delete your account with Mentor App?'**
  String get settingDeleteAccountConfirm;

  /// No description provided for @settingAccount.
  ///
  /// In en, this message translates to:
  /// **'Account Setting'**
  String get settingAccount;

  /// No description provided for @settingReviewDelete.
  ///
  /// In en, this message translates to:
  /// **'Your delete account request has been reviewed. We will notify you after the process complete'**
  String get settingReviewDelete;

  /// No description provided for @deleteAccountWhy.
  ///
  /// In en, this message translates to:
  /// **'Tell us why'**
  String get deleteAccountWhy;

  /// No description provided for @deleteAccountOpinion.
  ///
  /// In en, this message translates to:
  /// **'Opinion to improve'**
  String get deleteAccountOpinion;

  /// No description provided for @profileCreate.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get profileCreate;

  /// No description provided for @profileSkill.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get profileSkill;

  /// No description provided for @profileShortBio.
  ///
  /// In en, this message translates to:
  /// **'Short bio'**
  String get profileShortBio;

  /// No description provided for @profilePost.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get profilePost;

  /// No description provided for @profileReply.
  ///
  /// In en, this message translates to:
  /// **'Replies'**
  String get profileReply;

  /// No description provided for @profileAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get profileAbout;

  /// No description provided for @profileSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get profileSave;

  /// No description provided for @profileMention.
  ///
  /// In en, this message translates to:
  /// **'Mention'**
  String get profileMention;

  /// No description provided for @profileFollowers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get profileFollowers;

  /// No description provided for @profileFollowing.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get profileFollowing;

  /// No description provided for @profileFollowed.
  ///
  /// In en, this message translates to:
  /// **'Followed'**
  String get profileFollowed;

  /// No description provided for @profileUnFollowed.
  ///
  /// In en, this message translates to:
  /// **'Unfollowed'**
  String get profileUnFollowed;

  /// No description provided for @profileFollow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get profileFollow;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @unfollow.
  ///
  /// In en, this message translates to:
  /// **'Unfollow'**
  String get unfollow;

  /// No description provided for @account_information.
  ///
  /// In en, this message translates to:
  /// **'Account information'**
  String get account_information;

  /// No description provided for @created_at.
  ///
  /// In en, this message translates to:
  /// **'Created at'**
  String get created_at;

  /// No description provided for @register_by.
  ///
  /// In en, this message translates to:
  /// **'Register by'**
  String get register_by;

  /// No description provided for @userNotFound.
  ///
  /// In en, this message translates to:
  /// **'User not found'**
  String get userNotFound;

  /// No description provided for @notFound.
  ///
  /// In en, this message translates to:
  /// **'Not found'**
  String get notFound;

  /// No description provided for @forgotTitle.
  ///
  /// In en, this message translates to:
  /// **'Please provide email which you want to reset your password?'**
  String get forgotTitle;

  /// No description provided for @emailOtpAfter.
  ///
  /// In en, this message translates to:
  /// **'Resend code after : '**
  String get emailOtpAfter;

  /// No description provided for @emailOtpNew.
  ///
  /// In en, this message translates to:
  /// **'Resend new code '**
  String get emailOtpNew;

  /// No description provided for @resetRePassword.
  ///
  /// In en, this message translates to:
  /// **'Re-type new password'**
  String get resetRePassword;

  /// No description provided for @resetNewPassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get resetNewPassword;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @anonymousUser.
  ///
  /// In en, this message translates to:
  /// **'Anonymous User'**
  String get anonymousUser;

  /// No description provided for @changePasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Your password must be at least 6 characters.'**
  String get changePasswordTitle;

  /// No description provided for @changePasswordCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get changePasswordCurrentPassword;

  /// No description provided for @changeNewPassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get changeNewPassword;

  /// No description provided for @emptyPassword.
  ///
  /// In en, this message translates to:
  /// **'Empty'**
  String get emptyPassword;

  /// No description provided for @codeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please input code'**
  String get codeEmpty;

  /// No description provided for @min6Chars.
  ///
  /// In en, this message translates to:
  /// **'Min 6 characters'**
  String get min6Chars;

  /// No description provided for @reqiresSpecChar.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least a special character'**
  String get reqiresSpecChar;

  /// No description provided for @differentPassword.
  ///
  /// In en, this message translates to:
  /// **'Password are not the same'**
  String get differentPassword;

  /// No description provided for @agreeAndAccept.
  ///
  /// In en, this message translates to:
  /// **'By providing my phone number or email, I hereby agree and accept the Terms & Conditions of the'**
  String get agreeAndAccept;

  /// No description provided for @mentor.
  ///
  /// In en, this message translates to:
  /// **'Mentor.'**
  String get mentor;

  /// No description provided for @successTitle.
  ///
  /// In en, this message translates to:
  /// **'Password Updated'**
  String get successTitle;

  /// No description provided for @successDesc.
  ///
  /// In en, this message translates to:
  /// **'Your password has been updated!'**
  String get successDesc;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @deletePost.
  ///
  /// In en, this message translates to:
  /// **'Delete this post'**
  String get deletePost;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deleteLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete this reply'**
  String get deleteLabel;

  /// No description provided for @delete_message.
  ///
  /// In en, this message translates to:
  /// **'Delete message'**
  String get delete_message;

  /// No description provided for @confirmDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to remove this post?'**
  String get confirmDelete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editLabel.
  ///
  /// In en, this message translates to:
  /// **'Make some change in your reply'**
  String get editLabel;

  /// No description provided for @changePost.
  ///
  /// In en, this message translates to:
  /// **'Make a change in this post'**
  String get changePost;

  /// No description provided for @share_post.
  ///
  /// In en, this message translates to:
  /// **'Share post'**
  String get share_post;

  /// No description provided for @share_profile.
  ///
  /// In en, this message translates to:
  /// **'Share profile'**
  String get share_profile;

  /// No description provided for @shareLabel.
  ///
  /// In en, this message translates to:
  /// **'Share to your followers.'**
  String get shareLabel;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @reportLabel.
  ///
  /// In en, this message translates to:
  /// **'I\'m concern about this post.'**
  String get reportLabel;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get copy;

  /// No description provided for @copyText.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copyText;

  /// No description provided for @copyLabel.
  ///
  /// In en, this message translates to:
  /// **'Copy link of this post.'**
  String get copyLabel;

  /// No description provided for @msgDeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted successfully'**
  String get msgDeleted;

  /// No description provided for @msgEdited.
  ///
  /// In en, this message translates to:
  /// **'Edited successfully'**
  String get msgEdited;

  /// No description provided for @msgPosted.
  ///
  /// In en, this message translates to:
  /// **'Posted successfully'**
  String get msgPosted;

  /// No description provided for @invalidEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get invalidEmailAddress;

  /// No description provided for @usernameOrPhonenumberIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Username or phone number is required'**
  String get usernameOrPhonenumberIsRequired;

  /// No description provided for @passwordNotCorrect.
  ///
  /// In en, this message translates to:
  /// **'Password not correct'**
  String get passwordNotCorrect;

  /// No description provided for @min5Chars.
  ///
  /// In en, this message translates to:
  /// **'Min 5 characters'**
  String get min5Chars;

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get more;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get search;

  /// No description provided for @searchConversation.
  ///
  /// In en, this message translates to:
  /// **'Search conversation'**
  String get searchConversation;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @recent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// No description provided for @private.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get private;

  /// No description provided for @quickPost.
  ///
  /// In en, this message translates to:
  /// **'Quick Post'**
  String get quickPost;

  /// No description provided for @longPost.
  ///
  /// In en, this message translates to:
  /// **'Long Post'**
  String get longPost;

  /// No description provided for @dearMentor.
  ///
  /// In en, this message translates to:
  /// **'Dear Mentor'**
  String get dearMentor;

  /// No description provided for @dearMentee.
  ///
  /// In en, this message translates to:
  /// **'Dear Mentee'**
  String get dearMentee;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @photo.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo;

  /// No description provided for @video.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get video;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @mention.
  ///
  /// In en, this message translates to:
  /// **'Mention'**
  String get mention;

  /// No description provided for @addMentor.
  ///
  /// In en, this message translates to:
  /// **'Add more mentor'**
  String get addMentor;

  /// No description provided for @shortBio.
  ///
  /// In en, this message translates to:
  /// **'Short bio'**
  String get shortBio;

  /// No description provided for @article.
  ///
  /// In en, this message translates to:
  /// **'Article'**
  String get article;

  /// No description provided for @voice.
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get voice;

  /// No description provided for @voiceMessage.
  ///
  /// In en, this message translates to:
  /// **'Voice Message'**
  String get voiceMessage;

  /// No description provided for @noReply.
  ///
  /// In en, this message translates to:
  /// **'No reply'**
  String get noReply;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @ratingQ.
  ///
  /// In en, this message translates to:
  /// **'What do you think about this reply?'**
  String get ratingQ;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @ratingLabel.
  ///
  /// In en, this message translates to:
  /// **'Give a rating to this reply.'**
  String get ratingLabel;

  /// No description provided for @readed.
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get readed;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get chooseLanguage;

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get chooseTheme;

  /// No description provided for @appealTitle.
  ///
  /// In en, this message translates to:
  /// **'Your post goes againts our community on nudity or sexual activity.'**
  String get appealTitle;

  /// No description provided for @appealD1.
  ///
  /// In en, this message translates to:
  /// **'No one else can see your post.'**
  String get appealD1;

  /// No description provided for @appealD2.
  ///
  /// In en, this message translates to:
  /// **'We have these comnunity standard to prevent and disrupt offline harm.'**
  String get appealD2;

  /// No description provided for @appealD3.
  ///
  /// In en, this message translates to:
  /// **'Repeatedly violating our community standards can cause further acccount restrictions.'**
  String get appealD3;

  /// No description provided for @appealD4.
  ///
  /// In en, this message translates to:
  /// **'If you think we\'ve made a mistake you can disagree with the decision.'**
  String get appealD4;

  /// No description provided for @appealInstruction.
  ///
  /// In en, this message translates to:
  /// **'Click on appeal to change your post and submit again if you think your post is not repeatedly violating our community standards or restrictions.'**
  String get appealInstruction;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @appeal.
  ///
  /// In en, this message translates to:
  /// **'Appeal'**
  String get appeal;

  /// No description provided for @reportReply.
  ///
  /// In en, this message translates to:
  /// **'Report reply'**
  String get reportReply;

  /// No description provided for @reportPost.
  ///
  /// In en, this message translates to:
  /// **'Report post'**
  String get reportPost;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @secondName.
  ///
  /// In en, this message translates to:
  /// **'Second Name'**
  String get secondName;

  /// No description provided for @occupation.
  ///
  /// In en, this message translates to:
  /// **'Occupation'**
  String get occupation;

  /// No description provided for @setProfile.
  ///
  /// In en, this message translates to:
  /// **'Set Profile'**
  String get setProfile;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @shown.
  ///
  /// In en, this message translates to:
  /// **'show less'**
  String get shown;

  /// No description provided for @showless.
  ///
  /// In en, this message translates to:
  /// **'show more'**
  String get showless;

  /// No description provided for @pickAvator.
  ///
  /// In en, this message translates to:
  /// **'Pick Avatar'**
  String get pickAvator;

  /// No description provided for @openBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in Browser'**
  String get openBrowser;

  /// No description provided for @sendToEmail.
  ///
  /// In en, this message translates to:
  /// **'Send to email'**
  String get sendToEmail;

  /// No description provided for @no_data.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get no_data;

  /// No description provided for @startPost.
  ///
  /// In en, this message translates to:
  /// **'Start Post now'**
  String get startPost;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @startFollow.
  ///
  /// In en, this message translates to:
  /// **'Follow Mentor now'**
  String get startFollow;

  /// No description provided for @startSave.
  ///
  /// In en, this message translates to:
  /// **'Start Save now'**
  String get startSave;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chats'**
  String get chat;

  /// No description provided for @noMessage.
  ///
  /// In en, this message translates to:
  /// **'No Message, yet'**
  String get noMessage;

  /// No description provided for @noMessageInbox.
  ///
  /// In en, this message translates to:
  /// **'No message in your inbox, yet! Start chatting with people around you.'**
  String get noMessageInbox;

  /// No description provided for @followMentor.
  ///
  /// In en, this message translates to:
  /// **'Follow Mentors'**
  String get followMentor;

  /// No description provided for @followMentee.
  ///
  /// In en, this message translates to:
  /// **'Follow Mentees'**
  String get followMentee;

  /// No description provided for @conversation.
  ///
  /// In en, this message translates to:
  /// **'Conversation'**
  String get conversation;

  /// No description provided for @noConversation.
  ///
  /// In en, this message translates to:
  /// **'No Conversation'**
  String get noConversation;

  /// No description provided for @lastSeen.
  ///
  /// In en, this message translates to:
  /// **'Last seen recently'**
  String get lastSeen;

  /// No description provided for @lessonNumber.
  ///
  /// In en, this message translates to:
  /// **'Lesson'**
  String get lessonNumber;

  /// No description provided for @upload_lesson_des.
  ///
  /// In en, this message translates to:
  /// **'Select class, subject, lesson to upload lesson'**
  String get upload_lesson_des;

  /// No description provided for @upload_lesson.
  ///
  /// In en, this message translates to:
  /// **'Upload lesson'**
  String get upload_lesson;

  /// No description provided for @lesson.
  ///
  /// In en, this message translates to:
  /// **'Lesson'**
  String get lesson;

  /// No description provided for @lessons.
  ///
  /// In en, this message translates to:
  /// **'Lessons'**
  String get lessons;

  /// No description provided for @requestSuccess.
  ///
  /// In en, this message translates to:
  /// **'Request Success'**
  String get requestSuccess;

  /// No description provided for @responseEmail.
  ///
  /// In en, this message translates to:
  /// **'We will send the respond to your email'**
  String get responseEmail;

  /// No description provided for @inPeriod.
  ///
  /// In en, this message translates to:
  /// **'in a very short time, please keep an eye to your inbox or spam.'**
  String get inPeriod;

  /// No description provided for @backLogin.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get backLogin;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get enter;

  /// No description provided for @enterCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter code'**
  String get enterCode;

  /// No description provided for @enterDate.
  ///
  /// In en, this message translates to:
  /// **'Please enter date'**
  String get enterDate;

  /// No description provided for @enterPersonalInfo.
  ///
  /// In en, this message translates to:
  /// **'Enter personal information'**
  String get enterPersonalInfo;

  /// No description provided for @enterAccInfo.
  ///
  /// In en, this message translates to:
  /// **'Enter account information'**
  String get enterAccInfo;

  /// No description provided for @chooseTop.
  ///
  /// In en, this message translates to:
  /// **'Choose Favorite Topic'**
  String get chooseTop;

  /// No description provided for @chooseExp.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Expertise'**
  String get chooseExp;

  /// No description provided for @mentorNotFound.
  ///
  /// In en, this message translates to:
  /// **'Mentor not found'**
  String get mentorNotFound;

  /// No description provided for @returnBack.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get returnBack;

  /// No description provided for @noRating.
  ///
  /// In en, this message translates to:
  /// **'No Mentee Rating'**
  String get noRating;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get promotion;

  /// No description provided for @atLeast13.
  ///
  /// In en, this message translates to:
  /// **'Person must be at least 13 years old.'**
  String get atLeast13;

  /// No description provided for @dobRequired.
  ///
  /// In en, this message translates to:
  /// **'Date of birth is required.'**
  String get dobRequired;

  /// No description provided for @thankReport.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your report'**
  String get thankReport;

  /// No description provided for @term_continue.
  ///
  /// In en, this message translates to:
  /// **'To proceed with creating an account, you must agree to our '**
  String get term_continue;

  /// No description provided for @term_service.
  ///
  /// In en, this message translates to:
  /// **' Terms of Service '**
  String get term_service;

  /// No description provided for @term_policy.
  ///
  /// In en, this message translates to:
  /// **' Privacy Policy '**
  String get term_policy;

  /// No description provided for @setting_feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get setting_feedback;

  /// No description provided for @term_acknowledge.
  ///
  /// In en, this message translates to:
  /// **'and acknowledge that you have read our'**
  String get term_acknowledge;

  /// No description provided for @library.
  ///
  /// In en, this message translates to:
  /// **'Mengly J. Quach University Press'**
  String get library;

  /// No description provided for @library_buy.
  ///
  /// In en, this message translates to:
  /// **'Buy now'**
  String get library_buy;

  /// No description provided for @library_message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get library_message;

  /// No description provided for @library_confirm.
  ///
  /// In en, this message translates to:
  /// **'Order Confirmation'**
  String get library_confirm;

  /// No description provided for @library_order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get library_order;

  /// No description provided for @continuation.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuation;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @thankFeedBack.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your feedback'**
  String get thankFeedBack;

  /// No description provided for @feedBackLabel.
  ///
  /// In en, this message translates to:
  /// **'Please select a feedback type'**
  String get feedBackLabel;

  /// No description provided for @feedBackDescription.
  ///
  /// In en, this message translates to:
  /// **'Please describe the issue'**
  String get feedBackDescription;

  /// No description provided for @editSkill.
  ///
  /// In en, this message translates to:
  /// **'Edit Skills'**
  String get editSkill;

  /// No description provided for @homeShowcase.
  ///
  /// In en, this message translates to:
  /// **'Home screen, you can see any posts from either mentees or mentors'**
  String get homeShowcase;

  /// No description provided for @mentorsShowcase.
  ///
  /// In en, this message translates to:
  /// **'Mentors screen , you can see all mentors in our systems'**
  String get mentorsShowcase;

  /// No description provided for @postShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can post anything, questions to mentor, including image, video, voice and mention any favorite mentor'**
  String get postShowcase;

  /// No description provided for @notificationShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can see notifications activities here'**
  String get notificationShowcase;

  /// No description provided for @settingsShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can manage settings or modify configuration here'**
  String get settingsShowcase;

  /// No description provided for @categoriesShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can filter to see the specific post category'**
  String get categoriesShowcase;

  /// No description provided for @searchShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can search for post , mentees and mentors'**
  String get searchShowcase;

  /// No description provided for @chatShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can messages to mentees or mentors here'**
  String get chatShowcase;

  /// No description provided for @ratingsShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can see your overall ratings here'**
  String get ratingsShowcase;

  /// No description provided for @postCategories.
  ///
  /// In en, this message translates to:
  /// **'Post Categories'**
  String get postCategories;

  /// No description provided for @searchShowcaseTitle.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchShowcaseTitle;

  /// No description provided for @chatShowcaseTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chatShowcaseTitle;

  /// No description provided for @clipShowcaseTitle.
  ///
  /// In en, this message translates to:
  /// **'Clip'**
  String get clipShowcaseTitle;

  /// No description provided for @clipShowcase.
  ///
  /// In en, this message translates to:
  /// **'You can see clip here'**
  String get clipShowcase;

  /// No description provided for @feed_back_error.
  ///
  /// In en, this message translates to:
  /// **'Feedback is not successful'**
  String get feed_back_error;

  /// No description provided for @read_more.
  ///
  /// In en, this message translates to:
  /// **'read more'**
  String get read_more;

  /// No description provided for @show_less.
  ///
  /// In en, this message translates to:
  /// **'show less'**
  String get show_less;

  /// No description provided for @post_draft_title.
  ///
  /// In en, this message translates to:
  /// **'Save this content as a draft for later'**
  String get post_draft_title;

  /// No description provided for @post_draft_subtitle.
  ///
  /// In en, this message translates to:
  /// **'The content will be here when you return'**
  String get post_draft_subtitle;

  /// No description provided for @post_draft_save.
  ///
  /// In en, this message translates to:
  /// **'Save as draft'**
  String get post_draft_save;

  /// No description provided for @post_draft_discard.
  ///
  /// In en, this message translates to:
  /// **'Discard post'**
  String get post_draft_discard;

  /// No description provided for @post_draft_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue editing'**
  String get post_draft_continue;

  /// No description provided for @blocked_users.
  ///
  /// In en, this message translates to:
  /// **'Blocked users'**
  String get blocked_users;

  /// No description provided for @post_now.
  ///
  /// In en, this message translates to:
  /// **'Post Now'**
  String get post_now;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @mentions.
  ///
  /// In en, this message translates to:
  /// **'Mentions'**
  String get mentions;

  /// No description provided for @book.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book;

  /// No description provided for @no_notification.
  ///
  /// In en, this message translates to:
  /// **'No notification yet'**
  String get no_notification;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'members'**
  String get members;

  /// No description provided for @updating.
  ///
  /// In en, this message translates to:
  /// **'Updating...'**
  String get updating;

  /// No description provided for @un_select.
  ///
  /// In en, this message translates to:
  /// **'Unselect'**
  String get un_select;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @add_member.
  ///
  /// In en, this message translates to:
  /// **'Add member'**
  String get add_member;

  /// No description provided for @see_chat_member.
  ///
  /// In en, this message translates to:
  /// **'See chat member'**
  String get see_chat_member;

  /// No description provided for @choose_member.
  ///
  /// In en, this message translates to:
  /// **'Choose member'**
  String get choose_member;

  /// No description provided for @remove_member.
  ///
  /// In en, this message translates to:
  /// **'Remove member'**
  String get remove_member;

  /// No description provided for @add_group.
  ///
  /// In en, this message translates to:
  /// **'Add group'**
  String get add_group;

  /// No description provided for @member.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get member;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @skip_all_steps.
  ///
  /// In en, this message translates to:
  /// **'Click here to skip all steps'**
  String get skip_all_steps;

  /// No description provided for @post_title.
  ///
  /// In en, this message translates to:
  /// **'Enter your thoughts...'**
  String get post_title;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'km'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'km': return AppLocalizationsKm();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
