void main() {
  email(title: '고라니', address: 'kmn400@nate.com', text: '가나다라마바사');
}

void email({String title, String address, String text}) {
  print('$address에 아래의 메일을 송신한다.');
  print('제목 : $title');
  print('본문 : $text');
}
