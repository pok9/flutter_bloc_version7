import 'dart:io';

void main(){
  final boatStream = getBoatStream();

  boatStream.listen((value) {
    print('Received boat $value');
    print('----------------------');
   });
}

Stream<int> getBoatStream() async*{
  final List<int> result = List<int>.empty();

  for (var i=1; i <= 5; i++){
    stdout.write('Send boat $i');
    stdin.readLineSync();
    yield i;
  }


}