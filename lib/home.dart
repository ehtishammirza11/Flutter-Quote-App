import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _index = 0;
  List quotations = [
    "You’re off to great places, today is your day. Your mountain is waiting, so get on your way.",
    "You always pass failure on the way to success.",
    "No one is perfect - that’s why pencils have erasers.",
    "Winning doesn’t always mean being first. Winning means you’re doing better than you’ve done before.",
    "You’re braver than you believe, and stronger than you seem, and smarter than you think.",
    "It always seems impossible until it is done.",
    "Keep your face to the sunshine and you cannot see a shadow.",
    "Once you replace negative thoughts with positive ones, you’ll start having positive results.",
    "Positive thinking will let you do everything better than negative thinking will.",
    "In every day, there are 1,440 minutes. That means we have 1,440 daily opportunities to make a positive impact.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotation App"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          quotations[_index % quotations.length],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1.3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: FlatButton.icon(
                  color: Colors.deepPurple,
                  onPressed: _showQuote,
                  icon: Icon(
                    Icons.wb_sunny,
                    color: Colors.yellow,
                  ),
                  label: Text(
                    "Inspire me!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
