import 'package:flutter/material.dart';
import 'package:flutter_core_template/presentation/view/matching/matching_game.dart';
import 'package:flutter_core_template/presentation/view/matching/question.dart';

class MatchingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Question Example')),
      body: MatchingGame(
        questions: [
          Question(text: 'ផ្លែឈើពណ៌លឿង មានរសជាតិផ្អែម', answer: 'ឆ្កែ'),
          Question(text: 'យានយន្តមានកង់ ៤', answer: 'ចេក'),
          Question(text: 'សត្វដែលចេះព្រុស', answer: 'រថយន្ត'),
          Question(text: 'ផ្លែឈើពណ៌ក្រហម ឬបៃតង', answer: 'ផ្លែប៉ោម'),
          Question(text: 'មនុស្សដែលបង្រៀនសិស្ស', answer: 'គ្រូបង្រៀន abcdkfhlaskdfhsklfhsdlkhfsldhflshflshkfshkdlfhslkhs'),
        ],
        primaryColor: Colors.blue,
        questionsPerSet: 5,
        questionTextStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        // answerTextStyle: const TextStyle(
        //   fontSize: 14,
        //   color: Colors.white,
        // ),
      ),
    );
  }
}
