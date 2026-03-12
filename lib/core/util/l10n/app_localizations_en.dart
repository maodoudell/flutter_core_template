// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String view(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reaches',
      one: '1 reach',
      zero: 'no reach',
    );
    return '$_temp0';
  }

  @override
  String areply(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count replies',
      one: '1 reply',
      zero: 'no reply',
    );
    return '$_temp0';
  }

  @override
  String areLike(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count likes',
      one: '$count like',
      zero: 'no like',
    );
    return '$_temp0';
  }

  @override
  String checkStudent(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Students',
      one: '$count Student',
      zero: '',
    );
    return '$_temp0';
  }

  @override
  String question(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Questions',
      one: '$count Question',
      zero: 'no like',
    );
    return '$_temp0';
  }

  @override
  String postcount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count posts',
      one: '$count post',
      zero: 'no post',
    );
    return '$_temp0';
  }

  @override
  String secondCheck(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seconds',
      one: '$count second',
      zero: 'no second',
    );
    return '$_temp0';
  }

  @override
  String minuteCheck(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'minutes',
      one: 'minute',
      zero: 'no minute',
    );
    return '$_temp0';
  }

  @override
  String scoreCheck(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count points',
      one: '$count point',
      zero: 'no score',
    );
    return '$_temp0';
  }

  @override
  String get submitted_at => 'Submitted at';

  @override
  String get assessment => 'Assessment';

  @override
  String get assessment_link_sms => 'Assessments have been linked with SMS';

  @override
  String get assessment_set_up_not_correct => 'The assessment not setup correctly';

  @override
  String get assessment_expired => 'The assessment has been missed because of the deadline, Please contact your teacher';

  @override
  String get join_telegram_support_group => 'Join telegram support group';

  @override
  String get your_account_not_link_student_id => 'You can not join class because your account does not currently link to student ID';

  @override
  String get for_support_please_join_telegram_group => 'For support and assistance with verify your student ID, you can join our Telegram support group';

  @override
  String get please_select_dob => 'Please select date of birth';

  @override
  String get please_input_student_id => 'Please input Student ID';

  @override
  String get student_id_must_start_with_char => 'Student ID must start with a letter';

  @override
  String get student_id_not_found => 'Student ID or Date of birth not match';

  @override
  String get student_name => 'Student Name';

  @override
  String get permanent_id => 'Permanent ID';

  @override
  String get verify_ur_student_id_now => 'Verify your Student ID now';

  @override
  String get check_id => 'Check ID';

  @override
  String get pending => 'Pending';

  @override
  String get pending_approval => 'Pending Approval';

  @override
  String get completed => 'Completed';

  @override
  String get rejected => 'Rejected';

  @override
  String get waiting_approval => 'Waiting Approval';

  @override
  String get parent_return => 'Parent Return';

  @override
  String get anonymous_post => 'annonymous post';

  @override
  String get what_new_in => 'What\'s new in';

  @override
  String get class_assessment => 'Class Assessment';

  @override
  String get ur_sub_pending_ur_parent_approve => 'Your submission is pending your parent\'s approval.';

  @override
  String get ur_parent_return_homework_please_resubmit => 'Your parent has returned your homework. Please revise and resubmit.';

  @override
  String get parent_feedback => 'Parent feedback';

  @override
  String get expired => 'Expired';

  @override
  String get deadline => 'Deadline';

  @override
  String get hello => 'Hello';

  @override
  String get new_request => 'New Request';

  @override
  String get leaderboard => 'Leaderboard';

  @override
  String get leave_class => 'Leave Class';

  @override
  String get leave_class_confirm => 'Are you sure you want to leave this class?';

  @override
  String get verify_student => 'Verify Student';

  @override
  String get input_student_id_and_dob => 'Please input student Id and select date of birth to verify.';

  @override
  String get by => 'By';

  @override
  String get s => 's';

  @override
  String get mn => 'mn';

  @override
  String get section => 'Section';

  @override
  String get session_expired => 'Session Expired';

  @override
  String get session_expired_desc => 'Your session has expired. Please log in again.';

  @override
  String get total_student => 'Total Student';

  @override
  String get try_this_quiz_now => 'Try this quiz now';

  @override
  String get are_you_ais_student => 'Are you an AIS student?';

  @override
  String get campus => 'Campus';

  @override
  String get student_id => 'Student ID';

  @override
  String get proceed => 'Proceed';

  @override
  String get instructions => 'Instructions';

  @override
  String get connect_with_others => 'Connect with Others';

  @override
  String get connect_with_mentor => 'Connect with mentors';

  @override
  String get crop_image => 'Crop image';

  @override
  String get student_join => 'Student join';

  @override
  String get schedule_post => 'Schedule post';

  @override
  String get joined => 'Joined';

  @override
  String get user_join_txt1 => 'Say Hi to new members';

  @override
  String get user_join_txt2 => 'Welcome the newest member to our community with a friendly greeting!';

  @override
  String get follow_now => 'Follow now';

  @override
  String get time => 'Time';

  @override
  String get total_questions => 'Total question';

  @override
  String get score => 'Score';

  @override
  String get total_schedule_post => 'Total schedule post';

  @override
  String get download => 'Download';

  @override
  String get share => 'Share';

  @override
  String get new_user_join => 'New user join';

  @override
  String get swap_right_and_left => 'Swap right to go next and swap left to get back';

  @override
  String mode(String mode) {
    String _temp0 = intl.Intl.selectLogic(
      mode,
      {
        'green': 'Green',
        'pink': 'Pink',
        'light': 'Light',
        'ais': 'AIS',
        'other': 'Dark',
      },
    );
    return '$_temp0';
  }

  @override
  String get mark_as_completed => 'Mark as completed';

  @override
  String get block_user => 'Block user';

  @override
  String get today => 'Today';

  @override
  String get type => 'Type';

  @override
  String get public => 'Public';

  @override
  String get created_by => 'Created by';

  @override
  String get class_management => 'Class management';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get online => 'online';

  @override
  String get start_course => 'Start course';

  @override
  String get start_the_public_quiz_now => 'Start the public quiz now';

  @override
  String get learning_with_free_course => 'Learning with free course';

  @override
  String get quiz_history => 'Quiz history';

  @override
  String get quiz_again => 'ធ្វើលំហាត់ម្តងទៀត';

  @override
  String get gif => 'GIF';

  @override
  String get my_learning => 'My Learning';

  @override
  String get my_teaching => 'My Teaching';

  @override
  String get quizStart1 => 'This test consists questions with no time limit. Click the Start Exam button to begin.';

  @override
  String get quizStart2 => 'Feel free to mark questions for review and submit when you\'re done.';

  @override
  String get quizStart3 => 'Best of luck!';

  @override
  String get quiz_overview => 'Quiz overview';

  @override
  String get lesson_content => 'Lesson content';

  @override
  String get lesson_detail => 'Lesson detail';

  @override
  String get summaries => 'Summaries';

  @override
  String get rating_lists => 'Rating lists';

  @override
  String get share_to_other => 'Share to other';

  @override
  String get link => 'Link';

  @override
  String get copied => 'Copied';

  @override
  String get pin_and_qr_code => 'Pin & QR Code';

  @override
  String get tap_code_to_copy => 'Tap code to copy';

  @override
  String get repost_now => 'Repost now';

  @override
  String get repost => 'Repost';

  @override
  String get userType => 'User type';

  @override
  String get date => 'Date';

  @override
  String get done => 'Done';

  @override
  String get attachment => 'Attachment';

  @override
  String get status => 'Status';

  @override
  String get reason => 'Reason';

  @override
  String get plz_open_setting_mircophone => 'Please open setting to enable microphone permission';

  @override
  String get plz_open_setting_storage => 'Please open setting to enable storage permission';

  @override
  String time_second_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' seconds ago',
      one: ' second ago',
    );
    return '$_temp0';
  }

  @override
  String time_minute_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' minutes ago',
      one: ' minute ago',
    );
    return '$_temp0';
  }

  @override
  String time_hour_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' hours ago',
      one: ' hour ago',
    );
    return '$_temp0';
  }

  @override
  String time_day_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' days ago',
      one: ' day ago',
    );
    return '$_temp0';
  }

  @override
  String get deleted_message => 'Deleted message';

  @override
  String get are_you_sure_u_want_to_delete_this_message => 'Are you sure you want to delete this message?';

  @override
  String get are_you_sure_u_want_to_block => 'Are you sure you want to block';

  @override
  String get must_be_between_2_20_characters => 'must be between 2 and 20 characters';

  @override
  String get must_be_between_5_20_characters => 'must be between 5 and 20 characters';

  @override
  String get you_can_use_username_password_to_login => 'You can use the username and password to log in';

  @override
  String get note => 'Note';

  @override
  String get you_can_not_use_function_until_u_got_approve => 'You can\'t use this function until you got approved';

  @override
  String get request_become_mentor_info => 'Thank you for your interest in becoming a mentor on our platform! We\'ve received your application and are currently reviewing it. Please wait for approval.';

  @override
  String get user_likes => 'User likes';

  @override
  String get something_went_wrong => 'Something went wrong';

  @override
  String get url_not_found => 'Url not found';

  @override
  String get check_ur_connection_or_try_refresh => 'Check your connection or try refresh the page';

  @override
  String get refresh => 'Refresh';

  @override
  String get username_is_taken => 'Username is taken';

  @override
  String get no_route_found => 'No Route found';

  @override
  String get on_boarding_title1 => 'Unlock Your Mentorship Journey';

  @override
  String get on_boarding_title2 => 'Empower Others, Empower Yourself';

  @override
  String get on_boarding_title3 => 'Connect. Guide. Inspire.';

  @override
  String get on_boarding_desc1 => 'Transform lives by sharing your expertise. Connect with mentees and make a lasting impact.';

  @override
  String get on_boarding_desc2 => 'Share your wisdom with eager minds. Set preferences, match with mentees, and start your mentorship journey.';

  @override
  String get on_boarding_desc3 => 'Guide and inspire others on their paths. Join a community of mentors and mentees, and let the mentorship magic begin.';

  @override
  String get like => 'like';

  @override
  String get likes => 'likes';

  @override
  String get reply => 'Reply';

  @override
  String get replies => 'Replies';

  @override
  String get skip => 'Skip';

  @override
  String get open => 'Open';

  @override
  String get none => 'None';

  @override
  String get file => 'File';

  @override
  String get topic => 'Topic';

  @override
  String get about_us => 'About us';

  @override
  String get add_catchy_title_get_attractive => 'Add a catchy title to get attractive';

  @override
  String get follow_mentor_now => 'Follow mentor now';

  @override
  String get appointment => 'Appointment';

  @override
  String get about_mentor => 'About mentor';

  @override
  String get available_time => 'Available time';

  @override
  String get scholarship => 'Scholarship';

  @override
  String get cannot_be_empty => 'cannot be empty';

  @override
  String get request_scholarship => 'Request scholarship';

  @override
  String get attach_file_or_photo => 'Attach file or photo';

  @override
  String get school => 'School';

  @override
  String get location => 'Location';

  @override
  String get current_address => 'Current address';

  @override
  String get why_should_we_grant_you_scholarship => 'Why should we grant you scholarship';

  @override
  String get start_time => 'Start time';

  @override
  String get duration => 'Duration';

  @override
  String get book_appointment => 'Book appointment';

  @override
  String get select_duration => 'Select duration';

  @override
  String get username_can_not_contain_spaces => 'Username can not contain spaces';

  @override
  String get username_can_not_contain_capital_letter => 'Username can not contain capital letter';

  @override
  String get username_can_not_contain_special_character => 'Username can not contain special character';

  @override
  String get password_must_be_at_least_6_character => 'Password must be at least 6 character';

  @override
  String get agreement => 'Agreement';

  @override
  String get power_by => 'POWERED BY';

  @override
  String get save_image => 'Save image';

  @override
  String get favorites => 'Favorites';

  @override
  String get view_all => 'View all';

  @override
  String get view_profile => 'View profile';

  @override
  String get ok => 'Ok';

  @override
  String get reply_to => 'Reply to';

  @override
  String get reply_to_ur_self => 'Reply to yourself';

  @override
  String get sticker => 'Sticker';

  @override
  String get preview => 'Preview';

  @override
  String get exceeded_maximum_number_of_selected_items => 'Exceeded maximum number of selected items';

  @override
  String get just_liked_a_post => 'just liked a post';

  @override
  String get your_over_all_rating => 'Your over all rating';

  @override
  String get give_feedback => 'Give feedback';

  @override
  String get thank_for_using_mentor_app => 'Thank for using Mentor App';

  @override
  String get if_you_enjoy_mentor_app_etc => 'If you enjoy Mentor App, give us a star review.If not, give us feedback on how to improve!';

  @override
  String get be_the_first_to_reply => 'Be the first to reply';

  @override
  String get subject => 'Subject';

  @override
  String get of_point => 'Of';

  @override
  String get result => 'Result';

  @override
  String get rate_now => 'Rate now';

  @override
  String get app_version => 'App version';

  @override
  String get all_accounts => 'All accounts';

  @override
  String get switch_account => 'Switch account';

  @override
  String get your_choice_and_correct_answer => 'Your choice and correct answer';

  @override
  String get your_choice_is_correct => 'Your choice is correct';

  @override
  String get your_choice_is_incorrect => 'Your choice is incorrect';

  @override
  String get selected_class => 'Selected class';

  @override
  String get selected_subject => 'Selected subject';

  @override
  String get selected_lesson => 'Selected lesson';

  @override
  String get welcome_text => 'Welcome Back';

  @override
  String get user_log_headline1 => 'Please enter username';

  @override
  String get user_log_headline2 => 'Please make sure that you have signed up before.';

  @override
  String get phone_email_log_headline1 => 'Please enter your account here';

  @override
  String get phone_email_log_headline2 => 'We\'ll send you a verification code so we\'ll know you\'re real.';

  @override
  String get signin_with_social => 'OR';

  @override
  String get invalid_password => 'password is wrong';

  @override
  String get username_hint => 'Email or phone number';

  @override
  String get name => 'Name';

  @override
  String get username => 'Username';

  @override
  String get password_hint => 'Password';

  @override
  String get all_subject => 'All subjects';

  @override
  String get quiz => 'Quiz';

  @override
  String get homework => 'Homework';

  @override
  String get my_class => 'My class';

  @override
  String get quizzes => 'Quizzes';

  @override
  String get student => 'Student';

  @override
  String get students => 'Students';

  @override
  String get all_students => 'All students';

  @override
  String get quiz_detail => 'Quiz detail';

  @override
  String get history => 'History';

  @override
  String get create_class => 'Create class';

  @override
  String get create_group => 'Create group';

  @override
  String get correct => 'Correct';

  @override
  String get incorrect => 'Incorrect';

  @override
  String get points => 'points';

  @override
  String get confirm_password_hint => 'Confirm Password';

  @override
  String get password_suggest => 'Password must contain at least 6 characters long';

  @override
  String get create_username_password => 'Create Username and Password';

  @override
  String get become_mentor => 'Become a mentor';

  @override
  String get confirm => 'Confirm';

  @override
  String get search_top => 'Search for topic';

  @override
  String get dob => 'Date of Birth';

  @override
  String get pob => 'Place of Birth';

  @override
  String get finish => 'Finish';

  @override
  String get saveTab => 'Save';

  @override
  String get mentionTab => 'Mention';

  @override
  String get postTab => 'Post';

  @override
  String get verify => 'Verify';

  @override
  String get edit_personal_title => 'Edit Personal Information';

  @override
  String get personal_title => 'Personal Information';

  @override
  String get post => 'Post';

  @override
  String get write_your_question => 'Write your question...';

  @override
  String get create_post => 'Create Post';

  @override
  String get edit_post => 'Edit Post';

  @override
  String get photo_video => 'Photo/Video';

  @override
  String get choose_category_before_post => 'Please choose category before post';

  @override
  String get choose_category => 'Choose Category';

  @override
  String get choose_mentor => 'Choose Mentor';

  @override
  String get save_change => 'Save Change';

  @override
  String get dont_have_code => 'Didn\'t receive any code?';

  @override
  String get we_have_send => 'We\'ve send a verification code your phone number';

  @override
  String get we_have_send_email => ' We\'ve send a verification code your email:';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get login_button => 'Sign In';

  @override
  String get suggestions_title => 'Suggestions';

  @override
  String get suggestion_mentors => 'Suggestion mentors';

  @override
  String get suggestion_mentees => 'Suggestion mentees';

  @override
  String get suggestion_to_follow_title => 'Start following mentors and other users for more sharing and new knowledge';

  @override
  String get choose_topic_description => 'Choose up to 3 topic that spark your curiosity. The more you select, the better we can tailor things to your interests';

  @override
  String get choose_expertise_description => 'You can choose your expertise more than one';

  @override
  String get edit_expertise => 'Edit your expertise';

  @override
  String get expertise => 'Expertise';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get scan => 'Scan';

  @override
  String get code => 'Code';

  @override
  String get please_select_topic_at_least_3 => 'Please select topic at least 3';

  @override
  String get post_result => 'Post result';

  @override
  String get view_detail => 'View detail';

  @override
  String get question_number => 'Question';

  @override
  String get choose_answer => 'Choose Answer';

  @override
  String get choose_class => 'Choose class';

  @override
  String get choose_subject => 'Choose subject';

  @override
  String get choose_lesson => 'Choose lesson';

  @override
  String get create_lesson => 'Create lesson';

  @override
  String get classX => 'Class';

  @override
  String get all_class => 'All classes';

  @override
  String get join_class => 'Join class';

  @override
  String get join_class_description => 'You can join a class with QR code or Enter code.';

  @override
  String get join_class_with_qr_code => 'Join class with QR code';

  @override
  String get join_class_with_code => 'Join class with code';

  @override
  String get forgot_password_text => 'Forgot Password';

  @override
  String get register_text => 'Not a member? Sign Up';

  @override
  String get loading => 'Loading....';

  @override
  String get retry_again => 'Retry again';

  @override
  String get error_occurred => 'An Error Occurred';

  @override
  String get invalid_user_name => 'Invalid Username';

  @override
  String get invalid_mobile_number => 'Invalid Mobile Number or Email';

  @override
  String get invalid_email => 'Invalid Email';

  @override
  String get register => 'Register';

  @override
  String get already_have_account => 'Already have an account? sign in';

  @override
  String get home => 'Home';

  @override
  String get mentors => 'Mentors';

  @override
  String get mentorsAppBar => 'Acitve Mentors';

  @override
  String get profile => 'Profile';

  @override
  String get notifications => 'Notifications';

  @override
  String get faq => 'FAQ';

  @override
  String get faqAppBar => 'Frequently asked questions';

  @override
  String get mentorHome => 'Home';

  @override
  String get mentorRating => 'Rating';

  @override
  String get mentorNotifications => 'Notifications';

  @override
  String get mentorProfile => 'Profile';

  @override
  String get create_text => 'Sign Up';

  @override
  String get send_button => 'Send';

  @override
  String get email_hint => 'Email';

  @override
  String get verification => 'Verification Code';

  @override
  String get success => 'success';

  @override
  String get bad_request_error => 'Bad request. try again later';

  @override
  String get forbidden_error => 'forbidden request. try again later';

  @override
  String get unauthorized_error => 'Invalid username or password';

  @override
  String get not_found_error => 'url not found, try again later';

  @override
  String get conflict_error => 'Conflict found, try again later';

  @override
  String get internal_server_error => 'Something went wrong, try again later';

  @override
  String get unknown_error => 'Something went wrong, try again later';

  @override
  String get timeout_error => 'Time out, try again late';

  @override
  String get default_error => 'Something went wrong, try again later';

  @override
  String get cache_error => 'cache error, try again later';

  @override
  String get no_internet_error => 'Please check your internet connection';

  @override
  String get no_content => 'success with not content';

  @override
  String get send_otp => 'Send OTP';

  @override
  String get sign_in_username => 'Sign in with username';

  @override
  String get sign_in_phone_email => 'Sign in with Phone or Email';

  @override
  String get sign_in_fb => 'Sign in with Facebook';

  @override
  String get write_your_caption => 'Write your caption';

  @override
  String get caption_ideas => 'Caption ideas';

  @override
  String get ago => ' ago';

  @override
  String get just_now => 'Just now';

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours',
      one: '1 hour',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String week(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count weeks',
      one: '1 week',
    );
    return '$_temp0';
  }

  @override
  String month(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months',
      one: '1 month',
    );
    return '$_temp0';
  }

  @override
  String year(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String get unknow => ' Unknow';

  @override
  String get find_favorite_mentor => 'Find your favorite mentor...';

  @override
  String get save_post_smg => 'Saved';

  @override
  String get unsave_post_smg => 'Unsaved';

  @override
  String get save_post => 'Save';

  @override
  String get unsave_post => 'Saved';

  @override
  String get anonymous => 'Anonymous';

  @override
  String get leave_comment => 'Leave your reply here...';

  @override
  String get uncategory => 'Uncategory';

  @override
  String get logout_msg_title => 'Are you sure you want to logout?';

  @override
  String get logout_btn_txt => 'Log out';

  @override
  String get cancel_btn_txt => 'Cancel';

  @override
  String lang(String lang) {
    String _temp0 = intl.Intl.selectLogic(
      lang,
      {
        'en': 'English',
        'other': 'Khmer',
      },
    );
    return '$_temp0';
  }

  @override
  String get settings => 'Settings';

  @override
  String get open_setting => 'Open setting';

  @override
  String get account => 'Account';

  @override
  String get change_lang => 'Change language';

  @override
  String get acc_info => 'Account information';

  @override
  String get change_pass => 'Change password';

  @override
  String get privacy => 'Privacy Policy';

  @override
  String get help_supp => 'Help and support';

  @override
  String get email_hint_txt => 'Email * (required)';

  @override
  String get username_hint_txt => 'Username * (required)';

  @override
  String get pw_hint_txt => 'Password * (required)';

  @override
  String get cf_pw_hint_txt => 'Confirm Password * (required)';

  @override
  String get next => 'Next';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get f_name_hint_txt => 'First Name * (required)';

  @override
  String get s_name_hint_txt => 'Second Name * (required)';

  @override
  String get occupation_hint_txt => 'Occupation * (required)';

  @override
  String get bio_hint_txt => 'Bio';

  @override
  String get term => 'Terms and Conditions';

  @override
  String get policy => 'Policy';

  @override
  String get loginForgetPassword => 'Forgot password ?';

  @override
  String get loginNoAccount => 'Don\'t have account yet?';

  @override
  String get loginSign => 'Sign Up';

  @override
  String get loginPassword => 'Password';

  @override
  String get loginUsername => 'Username / Phone number';

  @override
  String get loginTitle => 'Sign In';

  @override
  String get loginSend => 'Continue';

  @override
  String get signHaveAccount => 'Already had account?';

  @override
  String get signLogin => 'Sign In';

  @override
  String get signPassword => 'Password';

  @override
  String get signUsername => 'Email / Phone number';

  @override
  String get signTitle => 'Sign Up';

  @override
  String get signSend => 'Continue';

  @override
  String get application => 'Application';

  @override
  String get settingApplication => 'Application setting';

  @override
  String get settingAccountInfo => 'Account information';

  @override
  String get settingTheme => 'Theme mode';

  @override
  String get settingPolicy => 'Policies';

  @override
  String get settingOther => 'Others';

  @override
  String get settingFaq => 'Frequently Asked Questions';

  @override
  String get settingNotification => 'Notification';

  @override
  String get settingDeleteAccount => 'Delete Account';

  @override
  String get settingDeleteAccountConfirm => 'Are you sure to delete your account with Mentor App?';

  @override
  String get settingAccount => 'Account Setting';

  @override
  String get settingReviewDelete => 'Your delete account request has been reviewed. We will notify you after the process complete';

  @override
  String get deleteAccountWhy => 'Tell us why';

  @override
  String get deleteAccountOpinion => 'Opinion to improve';

  @override
  String get profileCreate => 'Create';

  @override
  String get profileSkill => 'Skills';

  @override
  String get profileShortBio => 'Short bio';

  @override
  String get profilePost => 'Post';

  @override
  String get profileReply => 'Replies';

  @override
  String get profileAbout => 'About';

  @override
  String get profileSave => 'Save';

  @override
  String get profileMention => 'Mention';

  @override
  String get profileFollowers => 'Followers';

  @override
  String get profileFollowing => 'Following';

  @override
  String get profileFollowed => 'Followed';

  @override
  String get profileUnFollowed => 'Unfollowed';

  @override
  String get profileFollow => 'Follow';

  @override
  String get follow => 'Follow';

  @override
  String get following => 'Following';

  @override
  String get unfollow => 'Unfollow';

  @override
  String get account_information => 'Account information';

  @override
  String get created_at => 'Created at';

  @override
  String get register_by => 'Register by';

  @override
  String get userNotFound => 'User not found';

  @override
  String get notFound => 'Not found';

  @override
  String get forgotTitle => 'Please provide email which you want to reset your password?';

  @override
  String get emailOtpAfter => 'Resend code after : ';

  @override
  String get emailOtpNew => 'Resend new code ';

  @override
  String get resetRePassword => 'Re-type new password';

  @override
  String get resetNewPassword => 'New password';

  @override
  String get resetPassword => 'Reset password';

  @override
  String get anonymousUser => 'Anonymous User';

  @override
  String get changePasswordTitle => 'Your password must be at least 6 characters.';

  @override
  String get changePasswordCurrentPassword => 'Current Password';

  @override
  String get changeNewPassword => 'New password';

  @override
  String get emptyPassword => 'Empty';

  @override
  String get codeEmpty => 'Please input code';

  @override
  String get min6Chars => 'Min 6 characters';

  @override
  String get reqiresSpecChar => 'Password must contain at least a special character';

  @override
  String get differentPassword => 'Password are not the same';

  @override
  String get agreeAndAccept => 'By providing my phone number or email, I hereby agree and accept the Terms & Conditions of the';

  @override
  String get mentor => 'Mentor.';

  @override
  String get successTitle => 'Password Updated';

  @override
  String get successDesc => 'Your password has been updated!';

  @override
  String get remove => 'Remove';

  @override
  String get deletePost => 'Delete this post';

  @override
  String get delete => 'Delete';

  @override
  String get deleteLabel => 'Delete this reply';

  @override
  String get delete_message => 'Delete message';

  @override
  String get confirmDelete => 'Are you sure to remove this post?';

  @override
  String get edit => 'Edit';

  @override
  String get editLabel => 'Make some change in your reply';

  @override
  String get changePost => 'Make a change in this post';

  @override
  String get share_post => 'Share post';

  @override
  String get share_profile => 'Share profile';

  @override
  String get shareLabel => 'Share to your followers.';

  @override
  String get report => 'Report';

  @override
  String get reportLabel => 'I\'m concern about this post.';

  @override
  String get copy => 'Copy link';

  @override
  String get copyText => 'Copy';

  @override
  String get copyLabel => 'Copy link of this post.';

  @override
  String get msgDeleted => 'Deleted successfully';

  @override
  String get msgEdited => 'Edited successfully';

  @override
  String get msgPosted => 'Posted successfully';

  @override
  String get invalidEmailAddress => 'Invalid email address';

  @override
  String get usernameOrPhonenumberIsRequired => 'Username or phone number is required';

  @override
  String get passwordNotCorrect => 'Password not correct';

  @override
  String get min5Chars => 'Min 5 characters';

  @override
  String get showMore => 'Show more';

  @override
  String get more => 'Learn more';

  @override
  String get search => 'Search...';

  @override
  String get searchConversation => 'Search conversation';

  @override
  String get popular => 'Popular';

  @override
  String get recent => 'Recent';

  @override
  String get private => 'Private';

  @override
  String get quickPost => 'Quick Post';

  @override
  String get longPost => 'Long Post';

  @override
  String get dearMentor => 'Dear Mentor';

  @override
  String get dearMentee => 'Dear Mentee';

  @override
  String get category => 'Category';

  @override
  String get photo => 'Photo';

  @override
  String get video => 'Video';

  @override
  String get camera => 'Camera';

  @override
  String get mention => 'Mention';

  @override
  String get addMentor => 'Add more mentor';

  @override
  String get shortBio => 'Short bio';

  @override
  String get article => 'Article';

  @override
  String get voice => 'Voice';

  @override
  String get voiceMessage => 'Voice Message';

  @override
  String get noReply => 'No reply';

  @override
  String get title => 'Title';

  @override
  String get ratingQ => 'What do you think about this reply?';

  @override
  String get submit => 'Submit';

  @override
  String get rating => 'Rating';

  @override
  String get ratingLabel => 'Give a rating to this reply.';

  @override
  String get readed => 'Mark as read';

  @override
  String get chooseLanguage => 'Choose Language';

  @override
  String get chooseTheme => 'Choose Theme';

  @override
  String get appealTitle => 'Your post goes againts our community on nudity or sexual activity.';

  @override
  String get appealD1 => 'No one else can see your post.';

  @override
  String get appealD2 => 'We have these comnunity standard to prevent and disrupt offline harm.';

  @override
  String get appealD3 => 'Repeatedly violating our community standards can cause further acccount restrictions.';

  @override
  String get appealD4 => 'If you think we\'ve made a mistake you can disagree with the decision.';

  @override
  String get appealInstruction => 'Click on appeal to change your post and submit again if you think your post is not repeatedly violating our community standards or restrictions.';

  @override
  String get accept => 'Accept';

  @override
  String get description => 'Description';

  @override
  String get appeal => 'Appeal';

  @override
  String get reportReply => 'Report reply';

  @override
  String get reportPost => 'Report post';

  @override
  String get gender => 'Gender';

  @override
  String get firstName => 'First name';

  @override
  String get secondName => 'Second Name';

  @override
  String get occupation => 'Occupation';

  @override
  String get setProfile => 'Set Profile';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get shown => 'show less';

  @override
  String get showless => 'show more';

  @override
  String get pickAvator => 'Pick Avatar';

  @override
  String get openBrowser => 'Open in Browser';

  @override
  String get sendToEmail => 'Send to email';

  @override
  String get no_data => 'No data';

  @override
  String get startPost => 'Start Post now';

  @override
  String get start => 'Start';

  @override
  String get message => 'Message';

  @override
  String get startFollow => 'Follow Mentor now';

  @override
  String get startSave => 'Start Save now';

  @override
  String get chat => 'Chats';

  @override
  String get noMessage => 'No Message, yet';

  @override
  String get noMessageInbox => 'No message in your inbox, yet! Start chatting with people around you.';

  @override
  String get followMentor => 'Follow Mentors';

  @override
  String get followMentee => 'Follow Mentees';

  @override
  String get conversation => 'Conversation';

  @override
  String get noConversation => 'No Conversation';

  @override
  String get lastSeen => 'Last seen recently';

  @override
  String get lessonNumber => 'Lesson';

  @override
  String get upload_lesson_des => 'Select class, subject, lesson to upload lesson';

  @override
  String get upload_lesson => 'Upload lesson';

  @override
  String get lesson => 'Lesson';

  @override
  String get lessons => 'Lessons';

  @override
  String get requestSuccess => 'Request Success';

  @override
  String get responseEmail => 'We will send the respond to your email';

  @override
  String get inPeriod => 'in a very short time, please keep an eye to your inbox or spam.';

  @override
  String get backLogin => 'Back to sign in';

  @override
  String get enter => 'Enter';

  @override
  String get enterCode => 'Please enter code';

  @override
  String get enterDate => 'Please enter date';

  @override
  String get enterPersonalInfo => 'Enter personal information';

  @override
  String get enterAccInfo => 'Enter account information';

  @override
  String get chooseTop => 'Choose Favorite Topic';

  @override
  String get chooseExp => 'Choose Your Expertise';

  @override
  String get mentorNotFound => 'Mentor not found';

  @override
  String get returnBack => 'Return';

  @override
  String get noRating => 'No Mentee Rating';

  @override
  String get update => 'Update';

  @override
  String get promotion => 'Promotion';

  @override
  String get atLeast13 => 'Person must be at least 13 years old.';

  @override
  String get dobRequired => 'Date of birth is required.';

  @override
  String get thankReport => 'Thank you for your report';

  @override
  String get term_continue => 'To proceed with creating an account, you must agree to our ';

  @override
  String get term_service => ' Terms of Service ';

  @override
  String get term_policy => ' Privacy Policy ';

  @override
  String get setting_feedback => 'Feedback';

  @override
  String get term_acknowledge => 'and acknowledge that you have read our';

  @override
  String get library => 'Mengly J. Quach University Press';

  @override
  String get library_buy => 'Buy now';

  @override
  String get library_message => 'Message';

  @override
  String get library_confirm => 'Order Confirmation';

  @override
  String get library_order => 'Order';

  @override
  String get continuation => 'Continue';

  @override
  String get total => 'Total';

  @override
  String get thankFeedBack => 'Thank you for your feedback';

  @override
  String get feedBackLabel => 'Please select a feedback type';

  @override
  String get feedBackDescription => 'Please describe the issue';

  @override
  String get editSkill => 'Edit Skills';

  @override
  String get homeShowcase => 'Home screen, you can see any posts from either mentees or mentors';

  @override
  String get mentorsShowcase => 'Mentors screen , you can see all mentors in our systems';

  @override
  String get postShowcase => 'You can post anything, questions to mentor, including image, video, voice and mention any favorite mentor';

  @override
  String get notificationShowcase => 'You can see notifications activities here';

  @override
  String get settingsShowcase => 'You can manage settings or modify configuration here';

  @override
  String get categoriesShowcase => 'You can filter to see the specific post category';

  @override
  String get searchShowcase => 'You can search for post , mentees and mentors';

  @override
  String get chatShowcase => 'You can messages to mentees or mentors here';

  @override
  String get ratingsShowcase => 'You can see your overall ratings here';

  @override
  String get postCategories => 'Post Categories';

  @override
  String get searchShowcaseTitle => 'Search';

  @override
  String get chatShowcaseTitle => 'Chat';

  @override
  String get clipShowcaseTitle => 'Clip';

  @override
  String get clipShowcase => 'You can see clip here';

  @override
  String get feed_back_error => 'Feedback is not successful';

  @override
  String get read_more => 'read more';

  @override
  String get show_less => 'show less';

  @override
  String get post_draft_title => 'Save this content as a draft for later';

  @override
  String get post_draft_subtitle => 'The content will be here when you return';

  @override
  String get post_draft_save => 'Save as draft';

  @override
  String get post_draft_discard => 'Discard post';

  @override
  String get post_draft_continue => 'Continue editing';

  @override
  String get blocked_users => 'Blocked users';

  @override
  String get post_now => 'Post Now';

  @override
  String get all => 'All';

  @override
  String get mentions => 'Mentions';

  @override
  String get book => 'Book';

  @override
  String get no_notification => 'No notification yet';

  @override
  String get members => 'members';

  @override
  String get updating => 'Updating...';

  @override
  String get un_select => 'Unselect';

  @override
  String get selected => 'Selected';

  @override
  String get select => 'Select';

  @override
  String get add_member => 'Add member';

  @override
  String get see_chat_member => 'See chat member';

  @override
  String get choose_member => 'Choose member';

  @override
  String get remove_member => 'Remove member';

  @override
  String get add_group => 'Add group';

  @override
  String get member => 'Member';

  @override
  String get add => 'Add';

  @override
  String get skip_all_steps => 'Click here to skip all steps';

  @override
  String get post_title => 'Enter your thoughts...';
}
