void main() {
  num score = 101; // 점수 입력
  String name = '최승호'; // 이름 입력
  String grade; // 등급변수 등록

  if (score > 100 || score < 0) {
    // 점수 한계 설정 및 수정 메시지
    print('점수를 확인 후 다시 입력해 주세요. 현재 입력 값: $score');
    return; // 한계 밖의 값이면 여기서 종료
  }

  if (score >= 90) {
    grade = 'A등급'; //정상범위 A등급 조건
  } else if (score >= 80) {
    grade = 'B등급'; //정상범위 B등급 조건
  } else {
    grade = 'C등급'; //정상범위 나머지는 C등급
  }

  print('이 학생($name)의 점수는 $score점이며, 등급은 $grade입니다!');
} //정상 출력
