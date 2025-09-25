void main() {
  Map<String, int> itemsPrice = {
    // 품목별 가격표
    '티셔츠': 10000,
    '바지': 8000,
    '모자': 4000,
  };

  List<String> cart = []; // 비어있는 장바구니
  List<String> excludedItems = []; // 비어있는 제외된 상품 리스트
  List<String> itemsToAdd = [
    // 장바구니에 담고자 하는 품목들
    '티셔츠', '바지', '모자', '티셔츠', '바지', "우산",
  ];

  for (var item in itemsToAdd) {
    // 담고자 하는 리스트의 품목들 순회
    if (itemsPrice.containsKey(item)) {
      // 만약 품목별 가격표에 있는 항목이라면
      cart.add(item); // 장바구니에 추가
    } else {
      // 그렇지 않다면, 즉 가격표에 등록되지 않은 품목이라면
      excludedItems.add(item); // 제외된 상품 목록에 추가
    }
  }

  if (excludedItems.isEmpty) {
    // 제외상품 리스트가 비어있다면, 즉 등록제품만 담겼다면
    print('모든 상품이 장바구니에 담겼습니다.'); // 담기 성공 메시지
  } else {
    print('미등록 상품은 장바구니에서 제외됩니다.'); //미등록 상품이 있다면(우산 등)
    print('제외된 상품: $excludedItems'); //제외된 상품 확인 메시지
  }

  print('장바구니에 담긴 상품: $cart'); // 장바구니 품목 확인 메시지

  int cartCost = 0; // 장바구니 가격 초기화
  for (var item in cart) {
    // 장바구니 순회하며 각 품목들의 가격 합산
    cartCost += itemsPrice[item]!; //미등록 상품 체크를 앞에서 했으므로 !사용
  }
  print('장바구니에 $cartCost원 어치를 담으셨네요!'); // 장바구니 가격 확인 메시지

  int discountCost; // 할인금액 선언
  int finalCost; // 최종금액 선언
  if (cartCost >= 20000) {
    // 장바구니 가격이 2만원 이상이면
    discountCost = (cartCost * 0.1).floor(); // 소수점 이하 버리기로 원화단위 int통일
    finalCost = cartCost - discountCost; // 최종금액에 장바구니-할인 금액 대입
  } else {
    discountCost = 0; // 2만원 이상이 아니면 할인금액 빵원 대입
    finalCost = cartCost; // 최종금액은 그대로 장바구니가격 대입
  }

  print('할인금액: $discountCost원'); // 할인금액 확인 메시지
  print('최종적으로 결제하실 금액은 $finalCost원 입니다.'); // 최종금액 확인 메시지
}
