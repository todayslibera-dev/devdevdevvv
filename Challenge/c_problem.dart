import 'dart:math';

void main() {
  Set<int> myNumbers = {}; // 발급한 로또 번호 초기화

  while (myNumbers.length < 6) {
    // 로또 번호 갯수 6개 될 때까지 반복
    myNumbers.add(Random().nextInt(45) + 1); // 1~45 중 랜덤으로 넣기
  }

  // 당첨번호와 발급번호를 오름차순 정렬된 리스트로 변환
  List<int> sortedMyNumbers = myNumbers.toList()..sort();
  List<int> winningNumbers = [9, 19, 29, 35, 37, 38];
  print("당첨 번호: $winningNumbers");
  print("발급 번호: $sortedMyNumbers");

  // 교집합 추출 후 오름차순 정렬
  Set<int> matched = myNumbers.intersection(winningNumbers.toSet());
  List<int> matchedNumbers = matched.toList()..sort();
  print("일치 번호: $matchedNumbers");

  // 당첨 등수 결정
  String winningRank;
  if (matchedNumbers.length >= 5) {
    winningRank = '1등';
  } else if (matchedNumbers.length == 4) {
    winningRank = '2등';
  } else if (matchedNumbers.length == 3) {
    winningRank = '3등';
  } else {
    winningRank = '당첨 실패!';
  }

  print('당첨 여부: $winningRank');

  // 번호 초기화
  myNumbers.clear();
  print('현재 발급한 로또 번호: ${myNumbers.toList()}'); 
}
