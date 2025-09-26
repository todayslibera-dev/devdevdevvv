import 'dart:math';

void main() {
  Set<int> myNumbers = {}; //발급한 로또 번호 초기화

  while (myNumbers.length < 6) {
    //로또 번호 갯수 6개 될 때까지 반복
    myNumbers.add(Random().nextInt(45) + 1); // 1~45 중 랜덤으로 넣기
  }
  print("발급한 로또번호: $myNumbers"); //발급 메시지

  Set<int> winningNumbers = {9, 19, 29, 35, 37, 38}; // 당첨번호
  //내번호와 당첨번호의 교집합을 일치 번호에 대입
  Set<int> matchedNumebr = winningNumbers.intersection(myNumbers);

  String winningRank; // 당첨 여부 변수 등록
  if (matchedNumebr.length >= 5) {
    //1등 조건
    winningRank = '1등';
  } else if (matchedNumebr.length == 4) {
    //2등 조건
    winningRank = '2등';
  } else if (matchedNumebr.length == 3) {
    //3등 조건
    winningRank = '3등';
  } else {
    winningRank = '당첨 실패!';
  }
  print('일치 번호: $matchedNumebr'); //무슨 번호 맞았는지 명시
  print('당첨 여부: $winningRank'); //당첨 여부 명시
  myNumbers = {}; //발급한 로또 번호 초기화
  print('현재 발급한 로또 번호: $myNumbers'); //내 번호 초기화 명시
}
