// ignore_for_file: camel_case_types

import 'package:earthnergy/views/6.0.answer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class quiz_app extends StatefulWidget {
  @override
  _quiz_appState createState() => _quiz_appState();
}

class _quiz_appState extends State<quiz_app> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswered(bool answerScore) {
    setState(() {
      // answer was selected
      answerWasSelected = true;
      // check if answer was correct
      if (answerScore) {
        _totalScore++;
        correctAnswerSelected = true;
      }
      // adding to the score tracker on top
      _scoreTracker.add(
        answerScore
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : Icon(
                Icons.clear,
                color: Colors.red,
              ),
      );
      //when the quiz ends
      if (_questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });
    // what happens at the end of the quiz
    if (_questionIndex >= _questions.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/BG8.png'), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_scoreTracker.length == 0)
                      SizedBox(
                        height: 10.0,
                      ),
                    if (_scoreTracker.length > 0) ..._scoreTracker
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 130.0,
                  margin:
                      EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      _questions[_questionIndex]['question'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ...(_questions[_questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map(
                  (answer) => Answer(
                    answerText: answer['answerText'],
                    answerColor: answerWasSelected
                        ? answer['score']
                            ? Colors.green
                            : Colors.red
                        : null,
                    answerTap: () {
                      // if answer was already selected then nothing happens onTap
                      if (answerWasSelected) {
                        return;
                      }
                      //answer is being selected
                      _questionAnswered(answer['score']);
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  onPressed: () {
                    if (!answerWasSelected) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            'Jawab dulu baru bisa ke soal selanjutnya ya!'),
                      ));
                      return;
                    }
                    _nextQuestion();
                  },
                  child:
                      Text(endOfQuiz ? 'Ulang Kuis' : 'Pertanyaan Berikutnya!'),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '${_totalScore.toString()}/${_questions.length}',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                if (answerWasSelected && !endOfQuiz)
                  Expanded(
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      color: correctAnswerSelected
                          ? Colors.greenAccent
                          : Colors.redAccent[400],
                      child: Center(
                        child: Text(
                          correctAnswerSelected
                              ? 'Betul Sekali! Wah, Hebat!'
                              : 'Waduh Salah',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (endOfQuiz)
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        _totalScore > 4
                            ? 'Selamat! Skor Akhir Kamu adalah: $_totalScore'
                            : 'Wahh skor akhir kamu: $_totalScore. Ayo coba lagi atau ke menu pembahasan ya!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: _totalScore > 4 ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final _questions = const [
  {
    'question':
        '1. Sumber Daya Alam yang persediannya tidak bisa dikembalikan seperti semula adalah?',
    'answers': [
      {'answerText': 'Non Renewable Resource', 'score': true},
      {'answerText': 'Renewable Resource', 'score': false},
      {'answerText': 'Renewable Product', 'score': false},
      {'answerText': 'Product Resource', 'score': false},
      {'answerText': 'Unrenewable Product', 'score': false},
    ]
  },
  {
    'question': '2. Tujuan pengelolaan Sumber Daya Alam yang utama adalah?',
    'answers': [
      {'answerText': 'Meningkatkan mutu kehidupan', 'score': false},
      {
        'answerText': 'Melestarikan dan meningkatkan mutu kehidupan',
        'score': false
      },
      {
        'answerText': 'Melestarikan dan menjamin resiko ketersediaan',
        'score': true
      },
      {
        'answerText': 'Memusnahkan dan memperluas kawasan reboisasi',
        'score': false
      },
      {
        'answerText': 'Memperbanyak dan mengurangi resiko bencana',
        'score': false
      },
    ]
  },
  {
    'question':
        '3. Sumber Daya Alam bahan galian dapat dikelompokkan menjadi bahan galian golongan A, B dan C, yang merupakan galian golongan C antara lain...',
    'answers': [
      {'answerText': 'Uranium, Minyak dan Gas Alam', 'score': false},
      {'answerText': 'Gas alam, Belerang dan Emas', 'score': false},
      {'answerText': 'Aspal, Besi dan Minyak bumi', 'score': false},
      {'answerText': 'Pasir, Batu dan Gamping', 'score': true},
      {'answerText': 'Batu bara, Besi dan Aspal', 'score': false},
    ]
  },
  {
    'question':
        '4. Manusia dalam pemanfaatan SDA mineral harus bersikap bijaksana dan bertanggung jawab, karena...',
    'answers': [
      {
        'answerText': 'Biaya yang digunakan untuk mengambilnya besar',
        'score': false
      },
      {'answerText': 'Proses terjadinya memakan waktu singkat', 'score': false},
      {'answerText': 'Dibutuhkan manusia generasi mendatang', 'score': false},
      {
        'answerText': 'Seluruhnya tidak dapat diperbaharui setelah dipakai',
        'score': true
      },
      {
        'answerText': 'Jumlahnya terbatas dan proses terbentuknya lama',
        'score': false
      },
    ]
  },
  {
    'question':
        '5. Salah satu upaya yang dapat dilakukan untuk mengurangi SDA unrenewable dari ketersediaan yang terbatas yaitu dengan cara menggunakan kembali dari segi penggunaannya disebut...',
    'answers': [
      {'answerText': 'Replace', 'score': false},
      {'answerText': 'Reduce', 'score': false},
      {'answerText': 'Recycle', 'score': false},
      {'answerText': 'Reuse', 'score': true},
      {'answerText': 'Reklamasi', 'score': false},
    ]
  },
  {
    'question':
        '6. Tujuan yang ingin dicapai dalam pembangunan berkelanjutan ialah...',
    'answers': [
      {'answerText': 'Pemenuhan Kebutuhan Sesaat', 'score': false},
      {
        'answerText': 'Eksploitasi sumber daya secara besar besaran',
        'score': false
      },
      {'answerText': 'Kualitas lingkungan rusak', 'score': false},
      {
        'answerText': 'Terpenuhinya kebutuhan & terjaga kelestarian lingkungan',
        'score': true
      },
      {'answerText': 'Terjadinya degradasi lahan', 'score': false},
    ]
  },
  {
    'question':
        '7. Peran generasi muda dalam menjaga lingkungan seperti dibawah ini, kecuali...',
    'answers': [
      {'answerText': 'Menjadi kader penyelamat lingkungan', 'score': false},
      {'answerText': 'Memupuk rasa disiplin diri ', 'score': false},
      {'answerText': 'Melestarikan nilai-nilai', 'score': false},
      {'answerText': 'Mematuhi undang undang konservasi alam', 'score': false},
      {
        'answerText':
            'Melakukan pembangunan hutan sesuai dengan kebutuhan pribadi',
        'score': true
      },
    ]
  },
  {
    'question':
        '8. Aktifitas pembangunan sering menimbulkan masalah dalam lingkungan disebut sebagai...',
    'answers': [
      {'answerText': 'Daya Dukung Lingkungan', 'score': false},
      {'answerText': 'Kemrosotan Lingkungan', 'score': false},
      {'answerText': 'Manfaat Pembangunan', 'score': false},
      {'answerText': 'Dampak Lingkungan', 'score': false},
      {'answerText': 'Kerusakan Lingkungan', 'score': true},
    ]
  },
  {
    'question':
        '9. Upaya pelestarian lingkungan dengan memperhatikan manfaat yang diperoleh pada saat ini dan tetap mempertahankan keberadaan setiap komponen lingkungan disebut...',
    'answers': [
      {'answerText': 'Rehabilitasi', 'score': false},
      {'answerText': 'Konservasi', 'score': true},
      {'answerText': 'Reklamasi', 'score': false},
      {'answerText': 'Degradasi', 'score': false},
      {'answerText': 'Reboisasi', 'score': false},
    ]
  },
  {
    'question':
        '10. Upaya menghambat punahnya keanekaragaman sumber daya alam di Indonesia dilaksanakan perluasan habitat buatan seperti hal-hal berikut, kecuali...',
    'answers': [
      {'answerText': 'Mengurangi meluasnya terumbu karang', 'score': true},
      {'answerText': 'Memperluas suaka margasatwa', 'score': false},
      {'answerText': 'Memperluas cagar alam ', 'score': false},
      {'answerText': 'Menumbuhkembangkan taman nasional', 'score': false},
      {'answerText': 'Mengadakan kebun binatang', 'score': false},
    ]
  },
  {
    'question':
        '11. Sebuah pabrik yang menawarkan teknologi tinggi harus mengacu pada pembangunan yang berwawasan lingkungan. Adapun ciri pembangunan yang berwawasan lingkungan adalah...',
    'answers': [
      {
        'answerText': 'Mempertimbangkan kerugian lingkungan masyarakat',
        'score': true
      },
      {
        'answerText':
            'Memperhatikan bahan baku di lingkungan untuk jangka pendek',
        'score': false
      },
      {'answerText': 'Melakukan analisis dampak lingkungan', 'score': false},
      {
        'answerText':
            'Memberikan tunjangan hari tua pekerja di sekitar lingkungan',
        'score': false
      },
      {
        'answerText': 'Memperhatikan keselamatan lingkungan para pekerja',
        'score': false
      },
    ]
  },
  {
    'question':
        '12. Agar lingkungan dapat tetap mendukung pembangunan berkelanjutan maka kita harus dapat ...',
    'answers': [
      {
        'answerText': 'Menjaga kondisi lingkungan tetap seimbang',
        'score': true
      },
      {
        'answerText': 'Menemukan sumber daya alam di lingkungan yang baru',
        'score': false
      },
      {
        'answerText': 'Mendaur ulang lingkungan yang sudah dipakai',
        'score': false
      },
      {
        'answerText': 'Memanfaatkan sumber energi atau lingkungan alternatif',
        'score': false
      },
      {
        'answerText': 'Memanfaatkan lingkungan semaksimal mungkin',
        'score': false
      },
    ]
  },
  {
    'question': '13. Salah satu manfaat AMDAL bagi pemerintah adalah...',
    'answers': [
      {
        'answerText':
            'Munculnya pertentangan dalam masyarakat dalam suatu proyek',
        'score': false
      },
      {'answerText': 'Manfaatnya tidak jelas bagi masyarakat', 'score': false},
      {'answerText': 'Menghindarkan perusakan lingkungan hidup', 'score': true},
      {'answerText': 'Sumber daya alam semakin rusak', 'score': false},
      {
        'answerText': 'Bukan alat pengambil keputusan pemerintah',
        'score': false
      },
    ]
  },
  {
    'question':
        '14. Pembangunan nasional Indonesia saat ini masih bertumpu pada sektor pertanian karena...',
    'answers': [
      {
        'answerText': 'Pertanian merupakan suatu landasan pembangunan nasional',
        'score': false
      },
      {
        'answerText':
            'Hasil hasil pertanian menunjang terwujudnya pembangunan nasional',
        'score': true
      },
      {'answerText': 'Makanan pokok masyarakat Indonesia', 'score': false},
      {
        'answerText': 'Bertani sebagai mata pencaharian masyarakat Indonesia',
        'score': false
      },
      {
        'answerText':
            'Sebagian besar masyarakat Indonesia bekerja pada sektor pertanian',
        'score': false
      },
    ]
  },
  {
    'question':
        '15. Proses pembangunan yang dapat memenuhi kebutuhan manusia pada saat ini tanpa mengurangi kemampuan generasi mendatang untuk memenuhi kebutuhan disebut...',
    'answers': [
      {'answerText': 'Pembangunan Lingkungan', 'score': false},
      {'answerText': 'Pembangunan Padat Karya', 'score': false},
      {'answerText': 'Tujuan pembangunan', 'score': false},
      {'answerText': 'Pembangunan Berkelanjutan', 'score': true},
      {'answerText': 'Pembangunan Berwawasan', 'score': false},
    ]
  },
];
