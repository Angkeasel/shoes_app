import 'dart:developer' as devtools show log;

extension DevLogger on Object {
  ///int age = 10;
  ///`
  void log() {
    devtools.log(toString());
  }
}
