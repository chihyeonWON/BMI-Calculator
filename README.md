# Bmi Calculator

```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-01-05 ~
개발자 : Won Chi Hyeon
```

### 앱 소개
```
앱 이름 : Bmi Calculator
앱 기능 : 키와 몸무게를 입력하고 결과 버튼을 누르면 다른 화면에서 비만도 결과를 문자와 그림으르 보여줍니다.
          마지막에 입력한 키와 몸무게는 자동으로 저장됩니다.
핵심 구성 요소 : TextFormField 입력 양식이 올바른지 검사 기능이 포함된 글자를 입력받는 위젯
                 Form : 회원 가입 폼 같은 입력 양식을 감싸는 위젯, 예외 처리 등이 편리
                 ElevatedButton : 일반 버튼
                 Text : 결과 표시용 위젯
                 Icon : 결과와 함께 보여줄 아이콘
                 Navigator : 화면 전환용 클래스
```

#### 화면 구성
```
화면은 크게 2개로 구성, 키와 몸무게를 입력받는 StatefulWidget으로 작성된 첫 번째 화면과
입력받은 값으로 Bmi를 계산한 후 아이콘과 글자로 결과를 보여주는 StatelessWidget으로 작성된 두 번째 화면
```
![image](https://user-images.githubusercontent.com/58906858/210713779-05867828-5755-47d5-94d1-ac03b607797d.png)

#### 키와 몸무게 입력창 생성
```
키와 몸무게를 입력하는 TextFormField를 Form 안에 작성하였습니다.
키와 몸무게는 숫자만을 입력하는 기능으로 작성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210717458-14d91a8d-0bdb-4baa-9e4e-ced043164f2d.png)

#### 결과 버튼 생성
```
폼에 입력된 키와 몸무게 값을 검증하고 검증한 결과를 바탕으로 화면을 이동시키는 결과 확인 버튼을 생성하였습니다.
아직까지는 검증 로직을 작성하지 않아 아무것도 동작하지 않는 버튼입니다.
```
![image](https://user-images.githubusercontent.com/58906858/210718891-2556dd56-b34b-4ea3-a0f0-8feec589d081.png)
