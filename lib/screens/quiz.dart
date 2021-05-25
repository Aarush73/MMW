import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  static const routeName = '/quiz';
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _something = false;

  final questions = const [
    {
      'question': 'What type of website do you want to have?',
    },
    {
      'question': 'Do you own a Domain?',
    },
    {
      'question': 'Are you from Australia?',
    }
  ];

  final answers = const [
    {
      'answers': [
        {'text': 'E-Commerce'},
        {'text': 'Buisnesses'},
        {'text': 'Restaurants'},
        {'text': 'Real Estate'},
        {'text': 'Child Care'},
        {'text': 'Electricians'},
        {'text': 'Others'}
      ]
    },
    {
      'answers': [
        {'text': 'Yes'},
        {'text': 'No'}
      ]
    },
    {
      'answers': [
        {'text': 'Yes'},
        {'text': 'No'},
      ]
    }
  ];

  final selectedAnswers = [
    {'Website-Type': ''},
    {'Domain': ''},
    {'Australia': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer these!'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Contact No.',
                  icon: Icon(Icons.phone),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (ctx, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.black,
                        child: Card(
                            color: Colors.black,
                            margin: EdgeInsets.all(20),
                            child: Text(
                              questions[i]['question'],
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 22,
                              ),
                            )),
                      ),
                      for (var j = 0; j < answers[i]['answers'].length; j++)
                        ElevatedButton(
                          onPressed: () {
                            if (answers[i]['answers'][j]['text'] == 'Others')
                              setState(() {
                                _something = !_something;
                              });
                          },
                          child: Text(answers[i]['answers'][j]['text']),
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                        ),
                      if (_something)
                        TextField(
                          decoration:
                              InputDecoration(labelText: 'Please Specify'),
                        ),
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                )),
          ],
        ),
      ),
    );
  }
}
