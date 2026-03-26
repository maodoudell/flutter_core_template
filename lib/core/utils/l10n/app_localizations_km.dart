// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String view(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count អ្នកមើល',
      zero: 'ទទេ',
    );
    return '$_temp0';
  }

  @override
  String areply(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ការឆ្លើយតប',
      zero: 'គ្មានការឆ្លើយតប',
    );
    return '$_temp0';
  }

  @override
  String areLike(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ចូលចិត្ត',
      one: '$count ចូលចិត្ត',
      zero: 'គ្មានការចូលចិត្ត',
    );
    return '$_temp0';
  }

  @override
  String checkStudent(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'សិស្ស $count នាក់',
      zero: '',
    );
    return '$_temp0';
  }

  @override
  String question(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count សំណួរ',
      one: '$count សំណួរ',
      zero: 'គ្មានសំណួរ',
    );
    return '$_temp0';
  }

  @override
  String postcount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count បង្ហោះ',
      one: '$count បង្ហោះ',
      zero: 'គ្មានបង្ហោះ',
    );
    return '$_temp0';
  }

  @override
  String secondCheck(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count វិនាទី',
      one: '$count វិនាទី',
      zero: 'no វិនាទី',
    );
    return '$_temp0';
  }

  @override
  String minuteCheck(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'នាទី',
      one: 'នាទី',
      zero: 'no នាទី',
    );
    return '$_temp0';
  }

  @override
  String scoreCheck(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ពិន្ទុ',
      one: '$count ពិន្ទុ',
      zero: 'គ្មានពិន្ទុ',
    );
    return '$_temp0';
  }

  @override
  String get submitted_at => 'ដាក់ស្នើនៅ';

  @override
  String get assessment => 'កិច្ចការសាលា';

  @override
  String get assessment_link_sms => 'កិច្ចការសាលាត្រូវបានភ្ជាប់ជាមួយSMS។';

  @override
  String get assessment_set_up_not_correct => 'កិច្ចការសាលារៀបចំមិនត្រឹមត្រូវ';

  @override
  String get assessment_expired => 'កិច្ចការសាលាត្រូវបានខកខានដោយសារតែកាលបរិច្ឆេទផុតកំណត់ សូមទាក់ទងលោកគ្រូ/អ្នកគ្រូរបស់អ្នក';

  @override
  String get join_telegram_support_group => 'ចូលរួមគ្រុបតេលេក្រាមជំនួយ';

  @override
  String get your_account_not_link_student_id => 'អ្នកមិនអាចក្នុងថ្នាក់បានទេព្រោះ គណនីរបស់អ្នកមិនទាន់បានភ្ជាប់ទៅលេខសម្គាល់សិស្ស';

  @override
  String get for_support_please_join_telegram_group => 'សម្រាប់ជំនួយ ក្នុងការបញ្ជាក់លេខសម្គាល់សិស្សរបស់អ្នក អ្នកអាចចូលរួមក្រុម Telegram របស់យើងបាន';

  @override
  String get please_select_dob => 'សូមជ្រើសរើសថ្ងៃខែឆ្នាំកំណើត';

  @override
  String get please_input_student_id => 'សូមបញ្ចូល លេខសម្គាល់សិស្ស / Student ID';

  @override
  String get student_id_must_start_with_char => 'លេខសម្គាល់សិស្សត្រូវតែចាប់ផ្តើមដោយអក្សរ';

  @override
  String get student_id_not_found => 'លេខសម្គាល់សិស្ស ឬថ្ងៃខែឆ្នាំកំណើតមិនត្រូវគ្នា។';

  @override
  String get student_name => 'ឈ្មោះសិស្ស';

  @override
  String get permanent_id => 'អត្តសញ្ញាណសិស្ស';

  @override
  String get verify_ur_student_id_now => 'Verify your Student ID now';

  @override
  String get check_id => 'ពិនិត្យID';

  @override
  String get pending => 'កំពុងរង់ចាំ';

  @override
  String get pending_approval => 'រងចាំការយល់ព្រម';

  @override
  String get completed => 'បានបញ្ចប់';

  @override
  String get rejected => 'កិច្ចការផ្ទះរបស់អ្នកត្រូវបានបដិសេដ្ឋ';

  @override
  String get waiting_approval => 'រង់ចាំការយល់ព្រម';

  @override
  String get parent_return => 'អាណាព្យាបាលតម្រូវអោយធ្វើឡើងវិញ';

  @override
  String get anonymous_post => 'បង្ហោះដោយលាក់អត្តសញ្ញាត';

  @override
  String get what_new_in => 'តើមានអ្វីថ្មីនៅក្នុង';

  @override
  String get class_assessment => 'កិច្ចការសាលា';

  @override
  String get ur_sub_pending_ur_parent_approve => 'ការបញ្ជូនកិច្ចការផ្ទះរបស់អ្នកកំពុងរង់ចាំការយល់ព្រមពីអាណាព្យាបាលរបស់អ្នក';

  @override
  String get ur_parent_return_homework_please_resubmit => 'អាណាព្យាបាលរបស់អ្នកបានបញ្ជូនកិច្ចការផ្ទះរបស់អ្នកមកវិញ។ សូមកែប្រែ និងដាក់ស្នើឡើងវិញ';

  @override
  String get parent_feedback => 'មតិរបស់មាតាបិតា';

  @override
  String get expired => 'ផុតកំណត់';

  @override
  String get deadline => 'ថ្ងៃផុតកំណត់';

  @override
  String get hello => 'សួស្តី';

  @override
  String get new_request => 'ការស្នើរសុំថ្មី';

  @override
  String get leaderboard => 'តារាងពិន្ទុ';

  @override
  String get leave_class => 'ចេញពីថ្នាក់';

  @override
  String get leave_class_confirm => 'តើអ្នកប្រាកដថាចង់ចេញពីថ្នាក់នេះទេ?';

  @override
  String get verify_student => 'ផ្ទៀងផ្ទាត់សិស្ស';

  @override
  String get input_student_id_and_dob => 'សូមបញ្ចូលលេខសម្គាល់សិស្ស ហើយជ្រើសរើសថ្ងៃខែឆ្នាំកំណើត ដើម្បីផ្ទៀងផ្ទាត់។';

  @override
  String get by => 'បង្រៀនដោយ';

  @override
  String get s => 'វិនាទី';

  @override
  String get mn => 'នាទី';

  @override
  String get section => 'ផ្នែកទី';

  @override
  String get session_expired => 'ការឡុកចូលផុតកំណត់';

  @override
  String get session_expired_desc => 'ការឡុកចូលរបស់អ្នកបានផុតកំណត់ សូមឡុកចូលម្តងទៀត';

  @override
  String get total_student => 'សិស្សសរុប';

  @override
  String get try_this_quiz_now => 'សាកល្បងធ្វើលំហាត់ឥឡូវនេះ';

  @override
  String get are_you_ais_student => 'តើអ្នកជាសិស្ស AIS មែនទេ?';

  @override
  String get campus => 'សាខា';

  @override
  String get student_id => 'លេខសម្គាល់សិស្ស';

  @override
  String get proceed => 'បន្ត';

  @override
  String get instructions => 'របៀបប្រើប្រាស់';

  @override
  String get connect_with_others => 'ភ្ជាប់ទំនាក់ទំនងជាមួយអ្នកប្រើប្រាស់ផ្សេងទៀត';

  @override
  String get connect_with_mentor => 'ភ្ជាប់ទំនាក់ទំនងជាមួយអ្នកណែនាំផ្សេងទៀត';

  @override
  String get crop_image => 'កាត់រូបភាព';

  @override
  String get student_join => 'សិស្សចូលរួម';

  @override
  String get schedule_post => 'កំណត់ពេលបង្ហោះ';

  @override
  String get joined => 'បានចូលរួម';

  @override
  String get user_join_txt1 => 'និយាយសួស្តីទៅកាន់សមាជិកថ្មី';

  @override
  String get user_join_txt2 => 'សូមស្វាគមន៍សមាជិកថ្មីមកកាន់សហគមន៍របស់យើង!';

  @override
  String get follow_now => 'តាមឥឡូវនេះ';

  @override
  String get time => 'ម៉ោង';

  @override
  String get total_questions => 'ចំនួនសំណួរ';

  @override
  String get score => 'ពិន្ទុ';

  @override
  String get total_schedule_post => 'ការបង្ហោះកំណត់ពេលសរុប';

  @override
  String get download => 'ទាញយក';

  @override
  String get share => 'ចែកចាយ';

  @override
  String get new_user_join => 'អ្នកប្រើប្រាស់ថ្មីចូលរួម';

  @override
  String get swap_right_and_left => 'ទាញទៅស្តាំដើម្បីទៅបន្ទាប់ ហើយទាញទៅឆ្វេងដើម្បីត្រលប់មកវិញ';

  @override
  String mode(String mode) {
    String _temp0 = intl.Intl.selectLogic(
      mode,
      {
        'green': 'បៃតង',
        'pink': 'ពណ៌ផ្កាឈូក',
        'light': 'ពន្លឺ',
        'ais': 'AIS',
        'other': 'ងងឹត',
      },
    );
    return '$_temp0';
  }

  @override
  String get mark_as_completed => 'សម្គាល់ថាបានបញ្ចប់';

  @override
  String get block_user => 'ប្លុក';

  @override
  String get today => 'ថ្ងៃនេះ';

  @override
  String get type => 'ប្រភេទ';

  @override
  String get public => 'សាធារណៈ';

  @override
  String get created_by => 'បង្កើតឡើងដោយ';

  @override
  String get class_management => 'គ្រប់គ្រងថ្នាក់';

  @override
  String get yesterday => 'ម្សិលមិញ';

  @override
  String get online => 'កំពុងអនឡាញ';

  @override
  String get start_course => 'ចាប់ផ្តើមវគ្គសិក្សា';

  @override
  String get start_the_public_quiz_now => 'ចាប់ផ្តើមធ្វើលំហាត់ឥឡូវនេះ';

  @override
  String get learning_with_free_course => 'រៀនជាមួយវគ្គសិក្សាឥតគិតថ្លៃ';

  @override
  String get quiz_history => 'ប្រវត្តិកិច្ចការ';

  @override
  String get quiz_again => 'ធ្វើលំហាត់ម្តងទៀត';

  @override
  String get gif => 'រូបភាពចលនា';

  @override
  String get my_learning => 'ការសិក្សារបស់ខ្ញុំ';

  @override
  String get my_teaching => 'ការបង្រៀនរបស់ខ្ញុំ';

  @override
  String get quizStart1 => 'ការធ្វើតេស្តដោយគ្មានកំណត់ពេលវេលា។ ចុចប៊ូតុងចាប់ផ្តើមការប្រឡងដើម្បីចាប់ផ្តើម។';

  @override
  String get quizStart2 => 'មានអារម្មណ៍ថាមានសេរីភាពក្នុងការសម្គាល់សំណួរសម្រាប់ការពិនិត្យឡើងវិញ ហើយដាក់ស្នើនៅពេលអ្នករួចរាល់។';

  @override
  String get quizStart3 => 'សូមសំណាងល្អ!';

  @override
  String get quiz_overview => 'មើលលម្អិត';

  @override
  String get lesson_content => 'ខ្លឹមសារមេរៀន';

  @override
  String get lesson_detail => 'មេរៀនលម្អិត';

  @override
  String get summaries => 'សង្ខេបការវាយតម្លៃ';

  @override
  String get rating_lists => 'វាយតម្លៃទាំងអស់';

  @override
  String get share_to_other => 'ចែករំលែកទៅអ្នកផ្សេង';

  @override
  String get link => 'តំណភ្ជាប់';

  @override
  String get copied => 'បានចម្លង';

  @override
  String get pin_and_qr_code => 'កូដ & QR Code';

  @override
  String get tap_code_to_copy => 'ចុចលើកូដដើម្បីចម្លង';

  @override
  String get repost_now => 'បង្ហោះឥឡូវនេះ';

  @override
  String get repost => 'បង្ហោះឡើងវិញ';

  @override
  String get userType => 'ប្រភេទអ្នកប្រើប្រាស់';

  @override
  String get date => 'កាលបរិច្ឆេទ';

  @override
  String get done => 'រួចរាល់';

  @override
  String get attachment => 'ឯកសារភ្ជាប់';

  @override
  String get status => 'ស្ថានភាព';

  @override
  String get reason => 'មូលហេតុ';

  @override
  String get plz_open_setting_mircophone => 'សូមបើកការកំណត់ដើម្បីបើកការអនុញ្ញាតមីក្រូហ្វូន';

  @override
  String get plz_open_setting_storage => 'សូមបើកការកំណត់ដើម្បីបើកការអនុញ្ញាតការផ្ទុក';

  @override
  String time_second_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' វិនាទីមុន',
      one: ' វិនាទីមុន',
    );
    return '$_temp0';
  }

  @override
  String time_minute_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' នាទីមុន',
      one: ' នាទីមុន',
    );
    return '$_temp0';
  }

  @override
  String time_hour_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' ម៉ោងមុន',
      one: ' ម៉ោងមុន',
    );
    return '$_temp0';
  }

  @override
  String time_day_ago(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' ថ្ងៃមុន',
      one: ' ថ្ងៃមុន',
    );
    return '$_temp0';
  }

  @override
  String get deleted_message => 'សារបានលុប';

  @override
  String get are_you_sure_u_want_to_delete_this_message => 'តើអ្នកប្រាកដថាចង់លុបសារនេះទេ?';

  @override
  String get are_you_sure_u_want_to_block => 'តើអ្នកប្រាកដក្នុងការប្លុក';

  @override
  String get must_be_between_2_20_characters => 'ត្រូវតែមានចាប់ពី ២ ទៅ ២០ តួអក្សរ';

  @override
  String get must_be_between_5_20_characters => 'ត្រូវតែមានចាប់ពី ៥ ទៅ ២០ តួអក្សរ';

  @override
  String get you_can_use_username_password_to_login => 'អ្នកអាចប្រើ ឈ្មោះគណនី និង ពាក្យសម្ងាត់ ដើម្បីចូលប្រើប្រាស់';

  @override
  String get note => 'ចំណាំ';

  @override
  String get you_can_not_use_function_until_u_got_approve => 'អ្នកមិនអាចប្រើមុខងារនេះបានទេ រហូតដល់អ្នកទទួលបានការអនុម័ត';

  @override
  String get request_become_mentor_info => 'សូមអរគុណចំពោះការចាប់អារម្មណ៍របស់អ្នកក្នុងការក្លាយជាអ្នកណែនាំនៅលើវេទិការបស់យើង! យើងបានទទួលពាក្យសុំរបស់អ្នកហើយ ហើយបច្ចុប្បន្នកំពុងពិនិត្យមើលវា។ សូមរង់ចាំការអនុម័ត។';

  @override
  String get user_likes => 'ចំនួនអ្នកចូលចិត្ត';

  @override
  String get something_went_wrong => 'មានអ្វីមួយមិនប្រក្រតី';

  @override
  String get url_not_found => 'តំណភ្ជាប់មិនត្រឹមត្រូវ';

  @override
  String get check_ur_connection_or_try_refresh => 'ពិនិត្យអ៊ីនធឺណិតរបស់អ្នក ឬសាកល្បងទាញយកម្តងទៀត';

  @override
  String get refresh => 'ទាញយកម្តងទៀត';

  @override
  String get username_is_taken => 'ឈ្មោះគណនីត្រូវបានប្រើប្រាស់';

  @override
  String get no_route_found => 'រកមិនឃើញផ្លូវទេ';

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
  String get like => 'ឆ្លើយតប';

  @override
  String get likes => 'ការឆ្លើយតប';

  @override
  String get reply => 'ឆ្លើយតប';

  @override
  String get replies => 'ការឆ្លើយតប';

  @override
  String get skip => 'រំលង';

  @override
  String get open => 'បើក';

  @override
  String get none => 'មិនមាន';

  @override
  String get file => 'ឯកសារ';

  @override
  String get topic => 'ប្រធានបទ';

  @override
  String get about_us => 'អំពីពួកយើង';

  @override
  String get add_catchy_title_get_attractive => 'បន្ថែមចំណងជើងគួរឱ្យចាប់អារម្មណ៍ដើម្បីទទួលបានភាពទាក់ទាញ';

  @override
  String get follow_mentor_now => 'តាមអ្នកណែនាំឥឡូវនេះ';

  @override
  String get appointment => 'ការណាត់ជួប';

  @override
  String get about_mentor => 'អំពីអ្នកណែនាំ';

  @override
  String get available_time => 'ពេលវេលាដែលអាចប្រើបាន';

  @override
  String get scholarship => 'អាហារូបករណ៍';

  @override
  String get cannot_be_empty => 'មិនអាចទទេបានទេ';

  @override
  String get request_scholarship => 'ស្នើសុំអាហារូបករណ៍';

  @override
  String get attach_file_or_photo => 'ភ្ជាប់ឯកសារឬរូបថត';

  @override
  String get school => 'សាលារៀន';

  @override
  String get location => 'ទីតាំង';

  @override
  String get current_address => 'អាសយដ្ឋានបច្ចុប្បន្ន';

  @override
  String get why_should_we_grant_you_scholarship => 'ហេតុអ្វីបានជាយើងគួរផ្តល់អាហារូបករណ៍ដល់អ្នក';

  @override
  String get start_time => 'ពេលវេលាចាប់ផ្តើម';

  @override
  String get duration => 'រយៈពេល';

  @override
  String get book_appointment => 'កក់ការណាត់ជួប';

  @override
  String get select_duration => 'ជ្រើសរើសរយៈពេល';

  @override
  String get username_can_not_contain_spaces => 'ឈ្មោះគណនី មិនអាចមានដកឃ្លាបានទេ';

  @override
  String get username_can_not_contain_capital_letter => 'ឈ្មោះគណនី មិនអាចមានអក្សរធំទេ';

  @override
  String get username_can_not_contain_special_character => 'ឈ្មោះអ្នកប្រើ មិនអាចមានតួអក្សរពិសេសទេ';

  @override
  String get password_must_be_at_least_6_character => 'ត្រូវតែមានយ៉ាងហោចណាស់ 6 តួអក្សរ';

  @override
  String get agreement => 'កិច្ចព្រមព្រៀង';

  @override
  String get power_by => 'រៀបរៀងឡើងដោយ';

  @override
  String get save_image => 'រក្សាទុករូបភាព';

  @override
  String get favorites => 'ចំណង់ចំណូលចិត្ត';

  @override
  String get view_all => 'មើលទាំងអស់';

  @override
  String get view_profile => 'មើលប្រវត្តិរូប';

  @override
  String get ok => 'យល់ព្រម';

  @override
  String get reply_to => 'ឆ្លើយតបទៅកាន់';

  @override
  String get reply_to_ur_self => 'ឆ្លើយតបទៅកាន់ខ្លួនឯង';

  @override
  String get sticker => 'ស្ទីគ័រ';

  @override
  String get preview => 'មើលជាមុន';

  @override
  String get exceeded_maximum_number_of_selected_items => 'លើសចំនួនអតិបរមានៃរូបភាពដែលបានជ្រើសរើស';

  @override
  String get just_liked_a_post => 'ចូលចិត្តការបង្ហោះនេះ';

  @override
  String get your_over_all_rating => 'ការវាយតម្លៃលើចម្លើយទាំងអស់របស់អ្នក';

  @override
  String get give_feedback => 'ផ្ដល់មតិយោបល់';

  @override
  String get thank_for_using_mentor_app => 'សូមអរគុណចំពោះការប្រើប្រាស់កម្មវិធី Mentor';

  @override
  String get if_you_enjoy_mentor_app_etc => 'ប្រសិនបើអ្នករីករាយនឹងកម្មវិធី Mentor សូមផ្តល់ឱ្យយើងនូវផ្កាយ។ បើមិនដូច្នេះទេ សូមផ្តល់មតិកែលម្អមកយើងអំពីវិធីកែលម្អ!';

  @override
  String get be_the_first_to_reply => 'ឆ្លើយតបមុនគេ';

  @override
  String get subject => 'មុខវិជ្ជា';

  @override
  String get of_point => 'លើ';

  @override
  String get result => 'លទ្ធផល';

  @override
  String get rate_now => 'វាយតម្លៃ';

  @override
  String get app_version => 'កម្មវិធីជំនាន់';

  @override
  String get all_accounts => 'គណនីទាំងអស់';

  @override
  String get switch_account => 'ផ្លាស់ប្តូរគណនី';

  @override
  String get your_choice_and_correct_answer => 'ជម្រើសចម្លើយ និង ចម្លើយត្រឹមត្រូវ';

  @override
  String get your_choice_is_correct => 'ជម្រើសរបស់អ្នកគឺត្រឹមត្រូវ';

  @override
  String get your_choice_is_incorrect => 'ជម្រើសរបស់អ្នកមិនត្រឹមត្រូវទេ';

  @override
  String get selected_class => 'ថ្នាក់ដែលបានជ្រើសរើស';

  @override
  String get selected_subject => 'មុខវិជ្ជាដែលបានជ្រើសរើស';

  @override
  String get selected_lesson => 'មេរៀនដែលបានជ្រើសរើស';

  @override
  String get welcome_text => 'ស្វា​គម​ន៏​ការ​ត្រ​លប់​មក​វិញ';

  @override
  String get user_log_headline1 => 'សូមបញ្ចូលឈ្មោះគណនី';

  @override
  String get user_log_headline2 => 'សូមប្រាកដថាអ្នកបានចុះឈ្មោះពីមុន។';

  @override
  String get phone_email_log_headline1 => 'Please enter your account here';

  @override
  String get phone_email_log_headline2 => 'We\'ll send you a verification code so we\'ll know you\'re real.';

  @override
  String get signin_with_social => 'ឬ';

  @override
  String get invalid_password => 'ពាក្យសម្ងាត់ខុស';

  @override
  String get username_hint => 'អ៊ីម៉ែល ឬ លេខទូរស័ព្ទ';

  @override
  String get name => 'ឈ្មោះ';

  @override
  String get username => 'ឈ្មោះគណនី';

  @override
  String get password_hint => 'ពាក្យសម្ងាត់';

  @override
  String get all_subject => 'មុខវិជ្ជាទាំងអស់';

  @override
  String get quiz => 'លំហាត់';

  @override
  String get homework => 'កិច្ចការផ្ទះ';

  @override
  String get my_class => 'ថ្នាក់របស់ខ្ញុំ';

  @override
  String get quizzes => 'លំហាត់';

  @override
  String get student => 'សិស្ស';

  @override
  String get students => 'សិស្ស';

  @override
  String get all_students => 'សិស្សទាំងអស់';

  @override
  String get quiz_detail => 'លំហាត់លម្អិត';

  @override
  String get history => 'ប្រវត្តិ';

  @override
  String get create_class => 'បង្កើតថ្នាក់';

  @override
  String get create_group => 'បង្កើតក្រុម';

  @override
  String get correct => 'ត្រឹមត្រូវ';

  @override
  String get incorrect => 'មិន​ត្រឹមត្រូវ';

  @override
  String get points => 'ពិន្ទុ';

  @override
  String get confirm_password_hint => 'បញ្ជាក់ពាក្យសម្ងាត់';

  @override
  String get password_suggest => 'ពាក្យសម្ងាត់ ត្រូវតែមានយ៉ាងហោចណាស់ប្រាំមួយតួអក្សរ';

  @override
  String get create_username_password => 'បង្កើតឈ្មោះគណនី និងពាក្យសម្ងាត់';

  @override
  String get become_mentor => 'ធ្វើជាអ្នកណែនាំ';

  @override
  String get confirm => 'បញ្ជាក់';

  @override
  String get search_top => 'ស្វែងរកប្រធានបទ';

  @override
  String get dob => 'ថ្ងៃខែ​ឆ្នាំ​កំណើត';

  @override
  String get pob => 'ទី​កន្លែង​កំណើត';

  @override
  String get finish => 'បញ្ចប់';

  @override
  String get saveTab => 'រក្សាទុក';

  @override
  String get mentionTab => 'រម្លឹក';

  @override
  String get postTab => 'បង្ហោះ';

  @override
  String get verify => 'ផ្ទៀង​ផ្ទាត់';

  @override
  String get edit_personal_title => 'កែប្រែព័ត៌មានផ្ទាល់ខ្លួន';

  @override
  String get personal_title => 'ព័ត៌មានផ្ទាល់ខ្លួន';

  @override
  String get post => 'បង្ហោះ';

  @override
  String get write_your_question => 'សរសេរសំណួររបស់អ្នក...';

  @override
  String get create_post => 'បង្កើតការបង្ហោះ';

  @override
  String get edit_post => 'កែប្រែការបង្ហោះ';

  @override
  String get photo_video => 'រូបថត/វីដេអូ';

  @override
  String get choose_category_before_post => 'សូមជ្រើសរើសប្រភេទមុនពេលបង្ហោះ';

  @override
  String get choose_category => 'ជ្រើសរើសប្រភេទ';

  @override
  String get choose_mentor => 'ជ្រើសរើសអ្នកណែនាំ';

  @override
  String get save_change => 'រក្សាទុក';

  @override
  String get dont_have_code => 'មិនបានទទួលលេខកូដឬ?';

  @override
  String get we_have_send => 'We\'ve send a verification code your phone number';

  @override
  String get we_have_send_email => 'យើងបានផ្ញើលេខកូដផ្ទៀងផ្ទាត់អ៊ីមែលរបស់អ្នក:';

  @override
  String get phone_number => 'លេខទូរស័ព្ទ';

  @override
  String get login_button => 'ចុះ​ឈ្មោះ';

  @override
  String get suggestions_title => 'អ្នកដែលគួរតាម';

  @override
  String get suggestion_mentors => 'អ្នកណែនាំដែលគួរតាម';

  @override
  String get suggestion_mentees => 'អ្នកប្រើប្រាស់ដែលគួរតាម';

  @override
  String get suggestion_to_follow_title => 'ចាប់ផ្តើមតាម អ្នកណែនាំ និង អ្នកប្រើប្រាស់ ផ្សេងទៀតដើម្បីការទទួលបានការចែករំលែក និង ចំណេះដឹងថ្មីបន្ថែម';

  @override
  String get choose_topic_description => 'ជ្រើសរើសប្រធានបទរហូតដល់ 3 ដែលជំរុញឱ្យអ្នកចង់ដឹងចង់ឃើញ។ អ្នកជ្រើសរើសកាន់តែច្រើន នោះយើងអាចរៀបចំអ្វីៗឱ្យស្របតាមចំណាប់អារម្មណ៍របស់អ្នក';

  @override
  String get choose_expertise_description => 'អ្នកអាចជ្រើសរើសជំនាញរបស់អ្នកច្រើនជាងមួយ';

  @override
  String get edit_expertise => 'កែប្រែជំនាញរបស់អ្នក';

  @override
  String get expertise => 'ជំនាញ';

  @override
  String get phone => 'លេខទូរស័ព្ទ';

  @override
  String get email => 'អ៊ីមែល';

  @override
  String get scan => 'ស្កេន';

  @override
  String get code => 'កូដ';

  @override
  String get please_select_topic_at_least_3 => 'សូមជ្រើសរើសប្រធានបទយ៉ាងហោចណាស់ 3';

  @override
  String get post_result => 'បង្ហោះលទ្ធផល';

  @override
  String get view_detail => 'មើលលម្អិត';

  @override
  String get question_number => 'សំណួរទី';

  @override
  String get choose_answer => 'ជ្រើសរើសចម្លើយ';

  @override
  String get choose_class => 'ជ្រើសរើសថ្នាក់';

  @override
  String get choose_subject => 'ជ្រើសរើសមុខវិជ្ជា';

  @override
  String get choose_lesson => 'ជ្រើសរើសមេរៀន';

  @override
  String get create_lesson => 'បង្កើតមេរៀន';

  @override
  String get classX => 'ថ្នាក់';

  @override
  String get all_class => 'ថ្នាក់ទាំងអស់';

  @override
  String get join_class => 'ចូលថ្នាក់';

  @override
  String get join_class_description => 'អ្នកអាចចូលថ្នាក់រៀនដោយប្រើលេខកូដ QR ឬ បញ្ចូលលេខកូដ។';

  @override
  String get join_class_with_qr_code => 'ចូលរួមថ្នាក់ជាមួយលេខកូដ QR';

  @override
  String get join_class_with_code => 'ចូលរួមថ្នាក់ជាមួយលេខកូដ';

  @override
  String get forgot_password_text => 'ភ្លេច​ពាក្យសម្ងាត់​';

  @override
  String get register_text => 'មិនមែនជាសមាជិកទេ? ចុះ​ឈ្មោះ';

  @override
  String get loading => 'កំពុង​ផ្ទុក....';

  @override
  String get retry_again => 'ព្យាយាមម្តងទៀត';

  @override
  String get error_occurred => 'កំហុស​មួយ​បាន​កើត​ឡើង';

  @override
  String get invalid_user_name => 'ឈ្មោះគណនីមិនត្រឹមត្រូវ';

  @override
  String get invalid_mobile_number => 'លេខទូរស័ព្ទ ឬអ៊ីមែលមិនត្រឹមត្រូវ';

  @override
  String get invalid_email => 'អ៊ីមែលមិនត្រឹមត្រូវ';

  @override
  String get register => 'ចុះឈ្មោះ';

  @override
  String get already_have_account => 'មានគណនីរួចហើយ? ចូល';

  @override
  String get home => 'ទំព័រដើម';

  @override
  String get mentors => 'អ្នកណែនាំ';

  @override
  String get mentorsAppBar => 'អ្នកណែនាំ';

  @override
  String get profile => 'ប្រវត្តិរូប';

  @override
  String get notifications => 'ការជូនដំណឹង';

  @override
  String get faq => 'FAQ';

  @override
  String get faqAppBar => 'សំណួរ​ដែលគេ​ច្រើន​សួរ';

  @override
  String get mentorHome => 'ទំព័រដើម';

  @override
  String get mentorRating => 'ការវាយតម្លៃ';

  @override
  String get mentorNotifications => 'ការជូនដំណឹង';

  @override
  String get mentorProfile => 'ប្រវត្តិរូប';

  @override
  String get create_text => 'ចុះ​ឈ្មោះ';

  @override
  String get send_button => 'ផ្ញើ';

  @override
  String get email_hint => 'អ៊ីមែល';

  @override
  String get verification => 'លេខកូដ​ផ្ទៀង​ផ្ទាត់';

  @override
  String get success => 'ជោគជ័យ';

  @override
  String get bad_request_error => 'សំណើមិនល្អ ព្យាយាម​ម្តង​ទៀត​នៅ​ពេលក្រោយ';

  @override
  String get forbidden_error => 'សំណើហាមឃាត់ ព្យាយាម​ម្តង​ទៀត​នៅ​ពេលក្រោយ';

  @override
  String get unauthorized_error => 'ឈ្មោះគណនី ឬពាក្យសម្ងាត់មិនត្រឹមត្រូវ';

  @override
  String get not_found_error => 'រកមិនឃើញ URL សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get conflict_error => 'បានរកឃើញការប៉ះទង្គិច សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get internal_server_error => 'មានអ្វីមួយខុសប្រក្រតី សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get unknown_error => 'មានអ្វីមួយខុសប្រក្រតី សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get timeout_error => 'អស់ពេល សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get default_error => 'មានអ្វីមួយខុសប្រក្រតី សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get cache_error => 'កំហុសក្នុងឃ្លាំងសម្ងាត់ សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get no_internet_error => 'សូមពិនិត្យមើលការតភ្ជាប់អ៊ីនធឺណិតរបស់អ្នក';

  @override
  String get no_content => 'success with not content';

  @override
  String get send_otp => 'ផ្ញើ OTP';

  @override
  String get sign_in_username => 'ចូលដោយប្រើឈ្មោះអ្នកគណនី';

  @override
  String get sign_in_phone_email => 'ចូលដោយប្រើលេខទូរស័ព្ទ ឬអ៊ីមែល';

  @override
  String get sign_in_fb => 'ចូលតាមរយៈ Facebook';

  @override
  String get write_your_caption => 'សរសេរចំណងជើងរបស់អ្នក។';

  @override
  String get caption_ideas => 'ខេបសិន';

  @override
  String get ago => 'មុន';

  @override
  String get just_now => 'ឥឡូវនេះ';

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count នាទី',
      one: '1 នាទី',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ម៉ោង',
      one: '1 ម៉ោង',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ថ្ងៃ',
    );
    return '$_temp0';
  }

  @override
  String week(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count សប្តាហ៍',
      one: '1 សប្តាហ៍',
    );
    return '$_temp0';
  }

  @override
  String month(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ខែ',
      one: '1 ខែ',
    );
    return '$_temp0';
  }

  @override
  String year(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ឆ្នាំ',
      one: '1 ឆ្នាំ',
    );
    return '$_temp0';
  }

  @override
  String get unknow => 'មិនស្គាល់';

  @override
  String get find_favorite_mentor => 'ស្វែងរកអ្នកណែនាំដែលអ្នកចូលចិត្ត...';

  @override
  String get save_post_smg => 'បានរក្សាទុក';

  @override
  String get unsave_post_smg => 'បានលុបចេញ';

  @override
  String get save_post => 'រក្សាទុក';

  @override
  String get unsave_post => 'បានរក្សាទុក';

  @override
  String get anonymous => 'អនាមិក';

  @override
  String get leave_comment => 'បញ្ជូលចម្លើយរបស់អ្នកនៅទីនេះ...';

  @override
  String get uncategory => 'គ្មានប្រភេទ';

  @override
  String get logout_msg_title => 'តើអ្នកប្រាកដថាចង់ចាកចេញឬទេ?';

  @override
  String get logout_btn_txt => 'ចាកចេញ';

  @override
  String get cancel_btn_txt => 'បោះបង់';

  @override
  String lang(String lang) {
    String _temp0 = intl.Intl.selectLogic(
      lang,
      {
        'en': 'អង់គ្លេស',
        'other': 'ខ្មែរ',
      },
    );
    return '$_temp0';
  }

  @override
  String get settings => 'ការកំណត់';

  @override
  String get open_setting => 'បើកការកំណត់';

  @override
  String get account => '​គណនី';

  @override
  String get change_lang => 'ផ្លាស់ប្តូរភាសា';

  @override
  String get acc_info => 'ព័​ត៌​មាន​គណនី';

  @override
  String get change_pass => 'ផ្លាស់ប្តូរពាក្យសម្ងាត់';

  @override
  String get privacy => 'គោលការណ៍​​ឯកជនភាព';

  @override
  String get help_supp => 'ជំនួយនិងការគាំទ្រ';

  @override
  String get email_hint_txt => 'អ៊ីមែល * (ទាមទារ)';

  @override
  String get username_hint_txt => 'ឈ្មោះគណនី * (ទាមទារ)';

  @override
  String get pw_hint_txt => 'ពាក្យសម្ងាត់ * (ទាមទារ)';

  @override
  String get cf_pw_hint_txt => 'បញ្ជាក់ពាក្យសម្ងាត់ * (ទាមទារ)';

  @override
  String get next => 'បន្ទាប់';

  @override
  String get male => 'ប្រុស';

  @override
  String get female => 'ស្រី';

  @override
  String get f_name_hint_txt => 'នាមខ្លួន * (ទាមទារ)';

  @override
  String get s_name_hint_txt => 'គោត្តនាម * (ទាមទារ)';

  @override
  String get occupation_hint_txt => 'មុខរបរ * (ទាមទារ)';

  @override
  String get bio_hint_txt => 'ជីវប្រវត្តិ';

  @override
  String get term => 'លក្ខខណ្ឌ';

  @override
  String get policy => 'Policy';

  @override
  String get loginForgetPassword => 'ភ្លេច​លេខ​សម្ងាត់?';

  @override
  String get loginNoAccount => 'មិន​មាន​គណនី​ទេ?';

  @override
  String get loginSign => 'ចុះ​ឈ្មោះ​';

  @override
  String get loginPassword => 'លេខ​សម្ងាត់';

  @override
  String get loginUsername => 'ឈ្មោះ​អ្នក​ប្រើ / លេខទូរស័ព្ទ';

  @override
  String get loginTitle => 'ចូល​ប្រើប្រាស់';

  @override
  String get loginSend => 'បន្ត';

  @override
  String get signHaveAccount => 'មាន​គណនី​រួច​ហើយ?';

  @override
  String get signLogin => 'ចូល​ប្រើ​ប្រាស់';

  @override
  String get signPassword => 'លេខ​សម្ងាត់';

  @override
  String get signUsername => 'ឈ្មោះ​អ្នក​ប្រើ';

  @override
  String get signTitle => 'ចុះ​ឈ្មោះ';

  @override
  String get signSend => 'បន្ត';

  @override
  String get application => 'កម្មវិធី';

  @override
  String get settingApplication => 'ការកំណត់កម្មវិធី';

  @override
  String get settingAccountInfo => 'ព័ត៌​មាន​គណនី';

  @override
  String get settingTheme => 'រចនាប័ទ្ម';

  @override
  String get settingPolicy => 'គោលនយោបាយ';

  @override
  String get settingOther => 'ផ្សេងទៀត';

  @override
  String get settingFaq => 'សំណួរគេសួរញឹកញាប់';

  @override
  String get settingNotification => 'ការជូនដំណឹង';

  @override
  String get settingDeleteAccount => 'លុប​គណនី';

  @override
  String get settingDeleteAccountConfirm => 'តើអ្នកប្រាកដក្នុងការលុបគណនីរបស់អ្នកជាមួយនឹងកម្មវិធី Mentor មែនទេ?';

  @override
  String get settingAccount => 'ការកំណត់​គណនី';

  @override
  String get settingReviewDelete => 'សំណើលុបគណនីរបស់អ្នកត្រូវបានពិនិត្យ។ យើងនឹងជូនដំណឹងដល់អ្នកបន្ទាប់ពីដំណើរការបានបញ្ចប់';

  @override
  String get deleteAccountWhy => 'ប្រាប់យើងពីមូលហេតុ';

  @override
  String get deleteAccountOpinion => 'យោបល់ដើម្បីកែលម្អ';

  @override
  String get profileCreate => 'បង្កើត';

  @override
  String get profileSkill => 'ជំនាញ';

  @override
  String get profileShortBio => 'ជីវប្រវត្តិខ្លីៗ';

  @override
  String get profilePost => 'បង្ហោះ';

  @override
  String get profileReply => 'ចម្លើយ';

  @override
  String get profileAbout => 'អំពី';

  @override
  String get profileSave => 'រក្សាទុក';

  @override
  String get profileMention => 'និយាយអំពីគាត់';

  @override
  String get profileFollowers => 'អ្នកតាម';

  @override
  String get profileFollowing => 'តាមគេ';

  @override
  String get profileFollowed => 'បានតាម';

  @override
  String get profileUnFollowed => 'មិន​បាន​តាម';

  @override
  String get profileFollow => 'តាម';

  @override
  String get follow => 'តាម';

  @override
  String get following => 'បានតាម';

  @override
  String get unfollow => 'ឈប់តាម';

  @override
  String get account_information => 'ពត៌មានគណនី';

  @override
  String get created_at => 'បង្កើតឡើងនៅ';

  @override
  String get register_by => 'ចុះឈ្មោះដោយ';

  @override
  String get userNotFound => 'មិនឃើញគណនីទេ';

  @override
  String get notFound => 'មិនឃើញ';

  @override
  String get forgotTitle => 'សូមផ្តល់អ៊ីមែលត្រឹមត្រូវ ដែលអ្នកចង់កំណត់ពាក្យសម្ងាត់របស់អ្នកឡើងវិញ';

  @override
  String get emailOtpAfter => 'ផ្ញើលេខកូដឡើងវិញបន្ទាប់ពី៖ ';

  @override
  String get emailOtpNew => 'ផ្ញើលេខកូដថ្មី ';

  @override
  String get resetRePassword => 'វាយបញ្ចូលពាក្យសម្ងាត់ថ្មី';

  @override
  String get resetNewPassword => 'ពាក្យសម្ងាត់ថ្មី';

  @override
  String get resetPassword => 'កំណត់ពាក្យសម្ងាត់ឡើងវិញ';

  @override
  String get anonymousUser => 'អ្នកប្រើប្រាស់អនាមិក';

  @override
  String get changePasswordTitle => 'ពាក្យសម្ងាត់របស់អ្នកត្រូវតែមានយ៉ាងហោចណាស់ 6 តួអក្សរ។';

  @override
  String get changePasswordCurrentPassword => 'លេខសំងាត់​បច្ចុប្បន្ន';

  @override
  String get changeNewPassword => 'ពាក្យសម្ងាត់​ថ្មី';

  @override
  String get emptyPassword => 'ទទេ';

  @override
  String get codeEmpty => 'សូមបំពេញកូត';

  @override
  String get min6Chars => 'យ៉ាងហោចណាស់ 6 តួអក្សរ';

  @override
  String get reqiresSpecChar => 'ពាក្យសម្ងាត់ត្រូវតែមានយ៉ាងហោចណាស់តួអក្សរពិសេសមួយ';

  @override
  String get differentPassword => 'លេខសម្ងាត់ដូចគ្នា';

  @override
  String get agreeAndAccept => 'តាមរយៈការផ្តល់លេខទូរស័ព្ទ ឬអ៊ីមែលរបស់ខ្ញុំ ខ្ញុំយល់ព្រម និងទទួលយកលក្ខខណ្ឌនៃការបម្រើរបស់កម្មវិធី';

  @override
  String get mentor => 'Mentor ។';

  @override
  String get successTitle => 'បានធ្វើបច្ចុប្បន្នភាពពាក្យសម្ងាត់';

  @override
  String get successDesc => 'ពាក្យសម្ងាត់របស់អ្នកត្រូវបានធ្វើបច្ចុប្បន្នភាព!';

  @override
  String get remove => 'លុប';

  @override
  String get deletePost => 'លុបការឆ្លើយតបនេះ';

  @override
  String get delete => 'លុប';

  @override
  String get deleteLabel => 'លុបការឆ្លើយតបនេះ';

  @override
  String get delete_message => 'លុបសារ';

  @override
  String get confirmDelete => 'តើ​អ្នក​ប្រាកដ​ចិត្តក្នុងការ​លុប​ការ​បង្ហោះ​នេះ​ចេញ?';

  @override
  String get edit => 'កែប្រែ';

  @override
  String get editLabel => 'ធ្វើការផ្លាស់ប្តូរនៅក្នុងការឆ្លើយតបរបស់អ្នក។';

  @override
  String get changePost => 'ធ្វើការផ្លាស់ប្តូរនៅក្នុងបង្ហោះនេះ។';

  @override
  String get share_post => 'ចែករំលែកការបង្ហោះ';

  @override
  String get share_profile => 'ចែករំលែកប្រវត្តិរូប';

  @override
  String get shareLabel => 'ចែករំលែកទៅកាន់អ្នកតាមដានរបស់អ្នក។';

  @override
  String get report => 'រាយការណ៍';

  @override
  String get reportLabel => 'ខ្ញុំ​បារម្ភ​អំពី​ការ​បង្ហោះ​នេះ។';

  @override
  String get copy => 'ចម្លង';

  @override
  String get copyText => 'ចម្លង';

  @override
  String get copyLabel => 'ចម្លងតំណភ្ជាប់';

  @override
  String get msgDeleted => 'បានលុបដោយជោគជ័យ';

  @override
  String get msgEdited => 'បានកែសម្រួលដោយជោគជ័យ';

  @override
  String get msgPosted => 'បានបង្ហោះដោយជោគជ័យ';

  @override
  String get invalidEmailAddress => 'អាសយដ្ឋានអ៊ីមែលមិនត្រឹមត្រូវ';

  @override
  String get usernameOrPhonenumberIsRequired => 'សូមបញ្ជូលឈ្មោះគណនី រឺ លេខទូរសព្ទ';

  @override
  String get passwordNotCorrect => 'ពាក្យសម្ងាត់មិនត្រឹមត្រូវ';

  @override
  String get min5Chars => 'យ៉ាងហោចណាស់ 5 តួអក្សរ';

  @override
  String get showMore => 'មើលទាំងអស់';

  @override
  String get more => 'ស្វែង​យល់​បន្ថែម';

  @override
  String get search => 'ស្វែងរក...';

  @override
  String get searchConversation => 'ស្វែងរកការសន្ទនា';

  @override
  String get popular => 'ពេញនិយម';

  @override
  String get recent => 'ថ្មីៗ';

  @override
  String get private => 'ឯកជន';

  @override
  String get quickPost => 'អត្ថបទខ្លី';

  @override
  String get longPost => 'អត្ថបទវែង';

  @override
  String get dearMentor => 'Mentor ជាទីគោរព';

  @override
  String get dearMentee => 'Mentee ជាទីគោរព';

  @override
  String get category => 'ប្រភេទ';

  @override
  String get photo => 'រូបភាព';

  @override
  String get video => 'វីដេអូ';

  @override
  String get camera => 'ម៉ាសីនថត';

  @override
  String get mention => 'និយាយអំពីអ្នក';

  @override
  String get addMentor => 'បន្ថែម mentor';

  @override
  String get shortBio => 'ជីវប្រវត្តិខ្លីៗ';

  @override
  String get article => 'អត្ថបទ';

  @override
  String get voice => 'សំឡេង';

  @override
  String get voiceMessage => 'សារជាសំឡេង';

  @override
  String get noReply => 'គ្មានការ​ឆ្លើយតប';

  @override
  String get title => 'ចំណងជើង';

  @override
  String get ratingQ => 'តើអ្នកយល់យ៉ាងណាចំពោះការឆ្លើយតបនេះ?';

  @override
  String get submit => 'ដាក់ស្នើ';

  @override
  String get rating => 'ការវាយតម្លៃ';

  @override
  String get ratingLabel => 'ផ្តល់ការវាយតម្លៃចំពោះការឆ្លើយតបនេះ។';

  @override
  String get readed => 'សម្គាល់ថាបានអាន';

  @override
  String get chooseLanguage => 'ជ្រើសរើសភាសា';

  @override
  String get chooseTheme => 'ជ្រើសរើសរចនាប័ទ្ម';

  @override
  String get appealTitle => 'ការបង្ហោះ​របស់អ្នក​ប៉ះ​ពាល់​អំពី​ភាពអាក្រាតកាយ ឬ​សកម្មភាព​ផ្លូវភេទដែលខុសនឹងគោលការណ័របស់យើង។';

  @override
  String get appealD1 => 'គ្មាននរណាម្នាក់អាចឃើញការបង្ហោះរបស់អ្នកទេ។';

  @override
  String get appealD2 => 'យើង​មាន​ស្តង់ដារ​សហគមន៍​ដើម្បី​ការពារ និង​រំខាន​ដល់​គ្រោះថ្នាក់​ពេល​គ្មាន​អ៊ីនធឺណិត។';

  @override
  String get appealD3 => 'ការបំពានស្តង់ដារសហគមន៍របស់យើងម្តងហើយម្តងទៀតអាចបណ្តាលឱ្យមានការរឹតបន្តឹងគណនីបន្ថែមទៀត។';

  @override
  String get appealD4 => 'ប្រសិនបើអ្នកគិតថាយើងបានធ្វើខុស អ្នកអាចមិនយល់ស្របនឹងការសម្រេចចិត្តនេះ។';

  @override
  String get appealInstruction => 'ចុចលើការអំពាវនាវដើម្បីផ្លាស់ប្តូរការបង្ហោះរបស់អ្នក ហើយដាក់ស្នើម្តងទៀត ប្រសិនបើអ្នកគិតថាការបង្ហោះរបស់អ្នកមិនបំពានលើស្តង់ដារសហគមន៍ ឬការដាក់កម្រិតរបស់យើងម្តងហើយម្តងទៀតទេ។';

  @override
  String get accept => 'យល់ព្រម';

  @override
  String get description => 'ការពិពណ៌នា';

  @override
  String get appeal => 'បណ្តឹងឧទ្ធរណ៍';

  @override
  String get reportReply => 'រាយការណ៍ការឆ្លើយតប';

  @override
  String get reportPost => 'រាយការណ៍ការបង្ហោះ';

  @override
  String get gender => 'ភេទ';

  @override
  String get firstName => 'នាមខ្លួន';

  @override
  String get secondName => 'នាមត្រកូល';

  @override
  String get occupation => 'មុខរបរ';

  @override
  String get setProfile => 'កំណត់ប្រវត្តិរូប';

  @override
  String get editProfile => 'កែប្រវត្តិរូប';

  @override
  String get shown => 'បង្ហាញតិច';

  @override
  String get showless => 'បង្ហាញច្រើន';

  @override
  String get pickAvator => 'ជ្រើសរើស Avatar';

  @override
  String get openBrowser => 'បើកនៅក្នុងកម្មវិធីរុករក';

  @override
  String get sendToEmail => 'ផ្ញើទៅអ៊ីមែល';

  @override
  String get no_data => 'គ្មាន​ទិន្នន័យ';

  @override
  String get startPost => 'ចាប់ផ្តើមបង្ហោះឥឡូវនេះ';

  @override
  String get start => 'ចាប់ផ្តើម';

  @override
  String get message => 'ផ្ញើសារ';

  @override
  String get startFollow => 'តាមអ្នកណែនាំឥឡូវនេះ';

  @override
  String get startSave => 'ចាប់ផ្តើមរក្សាទុកឥឡូវនេះ';

  @override
  String get chat => 'ការសន្ទនា';

  @override
  String get noMessage => 'មិនទាន់មានសារនៅឡើយទេ';

  @override
  String get noMessageInbox => 'មិនមានសារនៅក្នុងប្រអប់សំបុត្ររបស់អ្នកនៅឡើយទេ! ចាប់ផ្តើមជជែកជាមួយមនុស្សជុំវិញអ្នក។';

  @override
  String get followMentor => 'តាម Mentors';

  @override
  String get followMentee => 'តាម Mentees';

  @override
  String get conversation => 'ការសន្ទនា';

  @override
  String get noConversation => 'មិនទាន់មានការសន្ទនា';

  @override
  String get lastSeen => 'ឃើញចុងក្រោយថ្មីៗនេះ';

  @override
  String get lessonNumber => 'មេរៀនទី';

  @override
  String get upload_lesson_des => 'ជ្រើសរើសថ្នាក់ មុខវិជ្ជា មេរៀន ដើម្បីបង្ហោះមេរៀន';

  @override
  String get upload_lesson => 'បង្ហោះមេរៀន';

  @override
  String get lesson => 'មេរៀន';

  @override
  String get lessons => 'មេរៀន';

  @override
  String get requestSuccess => 'ស្នើសុំជោគជ័យ';

  @override
  String get responseEmail => 'យើងនឹងផ្ញើការឆ្លើយតបទៅកាន់អ៊ីមែលរបស់អ្នក';

  @override
  String get inPeriod => 'ក្នុងរយៈពេល​ដ៏ខ្លី សូមពិនិត្យមើលប្រអប់សារ ឬ spam។';

  @override
  String get backLogin => 'ត្រលប់ទៅការចូលប្រើប្រាស់';

  @override
  String get enter => 'បញ្ចូល';

  @override
  String get enterCode => 'សូមបញ្ចូលកូត';

  @override
  String get enterDate => 'សូមបញ្ចូលកាលបរិច្ឆេទ';

  @override
  String get enterPersonalInfo => 'បញ្ចូលព័ត៌មានផ្ទាល់ខ្លួន';

  @override
  String get enterAccInfo => 'បញ្ជូលព័​ត៌​មាន​គណនី';

  @override
  String get chooseTop => 'ជ្រើសរើសប្រធានបទដែលចូលចិត្ត';

  @override
  String get chooseExp => 'ជ្រើសរើសអ្នកជំនាញរបស់អ្នក';

  @override
  String get mentorNotFound => 'រកមិនឃើញអ្នកណែនាំ';

  @override
  String get returnBack => 'ត្រឡប់ក្រោយ';

  @override
  String get noRating => 'គ្មានការវាយតម្លៃ Mentee';

  @override
  String get update => 'កែប្រែ';

  @override
  String get promotion => 'ការផ្សព្វផ្សាយ';

  @override
  String get atLeast13 => 'បុគ្គលត្រូវមានអាយុយ៉ាងតិច 13 ឆ្នាំ';

  @override
  String get dobRequired => 'តម្រូវអោយបំពេញថ្ងៃខែឆ្នាំកំណើត';

  @override
  String get thankReport => 'សូមអរគុណចំពោះរបាយការណ៍របស់អ្នក';

  @override
  String get term_continue => 'ដើម្បីបន្តបង្កើតគណនី អ្នកត្រូវតែយល់ព្រមជាមួយ';

  @override
  String get term_service => 'លក្ខខណ្ឌនៃសេវាកម្ម';

  @override
  String get term_policy => 'គោលការណ៍ភាពឯកជនរបស់យើង។ ';

  @override
  String get setting_feedback => 'មតិកែលម្អ';

  @override
  String get term_acknowledge => 'របស់យើង ហើយទទួលស្គាល់ថាអ្នកបានអាន';

  @override
  String get library => 'គ្រឹះស្ថានបោះពុម្ពនៃសាកលវិទ្យាល័យ ម៉េងលី ជេ. គួច';

  @override
  String get library_buy => 'ទិញឥឡូវនេះ';

  @override
  String get library_message => 'ផ្ញើរសារ';

  @override
  String get library_confirm => 'បញ្ជាក់ការបញ្ជាទិញ';

  @override
  String get library_order => 'ការបញ្ជាទិញ';

  @override
  String get continuation => 'បន្ត';

  @override
  String get total => 'សរុប';

  @override
  String get thankFeedBack => 'អរគុណសម្រាប់មតិកែលម្អរបស់អ្នក។';

  @override
  String get feedBackLabel => 'សូមជ្រើសរើសប្រភេទមតិកែលម្អ';

  @override
  String get feedBackDescription => 'សូមពណ៌នាអំពីបញ្ហា';

  @override
  String get editSkill => 'កែប្រែជំនាញ';

  @override
  String get homeShowcase => 'អ្នកអាចឃើញការបង្ហោះរបស់អ្នកណែនាំនៅទីនេះ';

  @override
  String get mentorsShowcase => 'អ្នកអាចឃើញអ្នកណែនាំទាំងអស់នៅក្នុងប្រព័ន្ធរបស់យើង';

  @override
  String get postShowcase => 'អ្នកអាចធ្វើការបង្ហោះអ្វីមួយ សួរសំណួរទៅកាន់អ្នកណែនាំ រួមមានទាំងរូបភាព វីដេអូ សំឡេង​និងរំលឹកអ្នកណែនាំដែលអ្នកចូលចិត្ត';

  @override
  String get notificationShowcase => 'អ្នកអាចឃើញសកម្មភាពជូនដំណឹងនៅទីនេះ';

  @override
  String get settingsShowcase => 'អ្នកអាចគ្រប់គ្រងការកំណត់ ឬកែប្រែការកំណត់នៅទីនេះ';

  @override
  String get categoriesShowcase => 'អ្នកអាចធ្វើការជ្រើសរើសដើម្បីមើលការបង្ហោះតាមប្រភេទជាក់លាក់';

  @override
  String get searchShowcase => 'អ្នក​អាច​ស្វែង​ការបង្ហោះ Mentor និង Mentee';

  @override
  String get chatShowcase => 'អ្នកអាចផ្ញើសារទៅកាន់ Mentor ឬ Mentee នៅទីនេះ';

  @override
  String get ratingsShowcase => 'អ្នកអាចមើលការវាយតម្លៃរួមរបស់អ្នកនៅទីនេះ';

  @override
  String get postCategories => 'ប្រភេទនៃការបង្ហោះ';

  @override
  String get searchShowcaseTitle => 'ស្វែងរក';

  @override
  String get chatShowcaseTitle => 'សន្ទនា';

  @override
  String get clipShowcaseTitle => 'ឃ្លីប';

  @override
  String get clipShowcase => 'អ្នកអាចមើលឃ្លីបនៅទីនេះ';

  @override
  String get feed_back_error => 'មតិកែលម្អមិនជោគជ័យទេ។';

  @override
  String get read_more => 'អាន​បន្ថែម';

  @override
  String get show_less => 'បង្ហាញតិច';

  @override
  String get post_draft_title => 'រក្សាទុកមាតិកាជាសេចក្តីព្រាងសម្រាប់ពេលក្រោយ';

  @override
  String get post_draft_subtitle => 'មាតិកានឹងនៅទីនេះនៅពេលអ្នកត្រលប់មកវិញ';

  @override
  String get post_draft_save => 'រក្សាទុកជាសេចក្តីព្រាង';

  @override
  String get post_draft_discard => 'បោះបង់ការប្រកាស';

  @override
  String get post_draft_continue => 'បន្តកែសម្រួល';

  @override
  String get blocked_users => 'អ្នកប្រើប្រាស់ដែលត្រូវបានរារាំង';

  @override
  String get post_now => 'បង្ហោះឥឡូវនេះ';

  @override
  String get all => 'ទាំងអស់';

  @override
  String get mentions => 'ការរំលឹក';

  @override
  String get book => 'សៀវភៅ';

  @override
  String get no_notification => 'មិនទាន់មានការជូនដំណឹងនៅឡើយទេ';

  @override
  String get members => 'សមាជិក';

  @override
  String get updating => 'កំពុងធ្វើបច្ចុប្បន្នភាព...';

  @override
  String get un_select => 'ឈប់ជ្រើសរើស';

  @override
  String get selected => 'បានជ្រើសរើស';

  @override
  String get select => 'ជ្រើសរើស';

  @override
  String get add_member => 'បន្ថែមសមាជិក';

  @override
  String get see_chat_member => 'មើលសមាជិកទាំងអស់';

  @override
  String get choose_member => 'ជ្រើសរើសសមាជិក';

  @override
  String get remove_member => 'ដកសមាជិកចេញ';

  @override
  String get add_group => 'បន្ថែមក្រុម';

  @override
  String get member => 'សមាជិក';

  @override
  String get add => 'បន្ថែម';

  @override
  String get skip_all_steps => 'ចុចទីនេះដើម្បីរំលងជំហានទាំងអស់';

  @override
  String get post_title => 'បញ្ចូលមតិរបស់អ្នក...';
}
