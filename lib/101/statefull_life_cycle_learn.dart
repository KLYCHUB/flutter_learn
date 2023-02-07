import 'package:flutter/material.dart';

class LifecycleLearn extends StatefulWidget {
  const LifecycleLearn({super.key, required this.message});
  final String message;
  @override
  State<LifecycleLearn> createState() => _LifecycleLearnState();
}

class _LifecycleLearnState extends State<LifecycleLearn> {
  late String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant LifecycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  //Başka sayfaya geçildiği anda çalışır
  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
