import 'package:flutter/material.dart';

class Free extends StatefulWidget {
  const Free({Key? key}) : super(key: key);

  @override
  _FreeState createState() => _FreeState();
}

class _FreeState extends State<Free> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                '자유롭게 작성해주세요',
              style: TextStyle(
                fontSize: 30
              ),
            ),
            _buildMultilineTextField(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  print('hi');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(vertical: 20),
                  ),
                ),
                child: Text(
                    '제출'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final _controller = TextEditingController();

  Widget _buildMultilineTextField() {
    return TextField(
      controller: this._controller,
      maxLines: 18,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: '${this._controller.text.split(' ').length} words',
        labelText: '자유롭게 작성하기',
        hintText: '무언가를 작성해보세요...',
        border: const OutlineInputBorder(),
      ),
      onChanged: (text) => setState(() {}),
    );
  }
}
