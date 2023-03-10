# Bmi Calculator

```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-01-05 ~ 2023-01-07
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
![image](https://user-images.githubusercontent.com/58906858/211132423-7b05fe0b-70fd-470b-96f5-a86bd6c1dbb3.png)
![image](https://user-images.githubusercontent.com/58906858/211132450-f01152a9-c483-4547-9113-4aa06618172c.png)
          



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

### 결과 화면 작성
```
결과 화면을 보여준 후에 변경되지 않으므로 StatelessWidget 클래스로 작성
bmi 계산 결과 값에 따라 각각 다른 아이콘과 글자를 출력하도록 작성
```

#### bmi 값에 따른 결과값 (글자) 작성
```
bmi 계산 결과 값에 따라 고도 비만, 2단계 비만, 1단계 비만, 과체중, 정상, 저체중 
6가지의 글자가 들어갈 Text 위젯을 작성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210721287-6815d4f0-ffd1-4dbc-9de3-de60c493ee66.png)

#### bmi 값에 따른 결과값 (아이콘) 작성
```
bmi 계산 결과 값에 따라 정상, 저체중, 과체중 
3가지의 아이콘이 들어갈 Icon 위젯을 작성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210721887-9c215730-779e-40b1-93df-b80d966f492e.png)

#### 입력한 키와 몸무게 값을 얻는 컨트롤러 작성
```
TextFormField 위젯에 입력된 값을 가져오기 위해 TextEditingController 클래스를 사용합니다.
키와 몸무게 컨트롤러를 각각 생성합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210928546-0ad14b3e-4d31-4b1b-a86a-d87e56479dc8.png)

#### TextFormField 위젯과 컨트롤러 연결
```
앞에서 생성한 컨트롤러를 키와 몸무게 입력필드 위젯에 각각 연결합니다.
validator 프로퍼티에 입력값을 검증하고 에러 메시지를 반환하도록 작성할 수 있습니다.
키나 몸무게 둘 중에 입력이 안된 필드가 있다면 입력을 요구하는 문구가 발생합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210936000-80600183-872a-49ac-8375-4dd9675325ba.png)

#### 결과 버튼 클릭 시 화면 이동과 값 전달
```
결과 버튼 클릭 시 키와 몸무게가 입력되었는 지 검증한 후 이상이 없을 경우
키, 몸무게 값과 함께 2번째 화면으로 이동합니다.
```
![image](https://user-images.githubusercontent.com/58906858/210936140-1afb3633-cc6c-41ad-a818-e87504e90bc6.png)

#### Bmi 값 계산
```
Bmi는 몸무게(weight)를 키(height)의 제곱으로 나눈 값입니다. 키의 단위가 미터이기 때문에 100으로 나눈 값을 사용하였습니다.
print() 함수로 입력한 키와 몸무게로 계산된 bmi를 미리 확인할 수 있습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210936774-932bae4c-66bb-4b8b-b487-317ae719e21b.png)
       
#### Bmi 값에 따라 결과 문자열을 표시하는 메서드 추가
```
bmi 값에 따라 결과 문자를 표시하는 _calcBmi 메서드 생성하였습니다. 
bmi 값에 따라 과체중, 저체중, 정상, 1단계, 2단계, 고도 비만으로 결과를 표시합니다.
```
![image](https://user-images.githubusercontent.com/58906858/211131656-839e6507-2ed0-45f0-af44-44394828df64.png)

#### bmi 계산 결과에 따른 결과 문자열 출력
```
앞서 생성한 _calcBmi 메서드를 Text 위젯에 추가하여 bmi 계산 결과에 따라 문자열이 달리 출릭되도록 하였습니다.
키 : 173cm 몸무게 100 을 기입하고 결과버튼을 눌렀을 때의 bmi 계산 결과는 33.4~ 이고 이는 
2단계 비만에 해당하므로 이 문자열을 출력하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211131946-fd113255-c662-40cc-9e51-ac63fdcad655.png)

#### Bmi 값에 따라 결과 아이콘을 표시하는 메서드 추가
```
bmi 값에 따라 결과 아이콘을 표시하는 _buildIcon 메서드를 생성하였습니다.
bmi 값에 따라 아이콘의 모양과 색깔이 달라집니다. 
저체중 - 오렌지색, 정상 - 초록색, 과체중 - 빨강색
```
![image](https://user-images.githubusercontent.com/58906858/211132117-5b915cce-07a7-45a7-b9e7-a8cabc58f3c1.png)

#### bmi 계산 결과에 따른 결과 아이콘 출력
```
앞서 생성한 _BuildIcon 메서드를 사용하여 bmi 계산 결과에 따라 아이콘이 달리 출릭되도록 하였습니다.
키 : 173cm 몸무게 100 을 기입하고 결과버튼을 눌렀을 때의 bmi 계산 결과는 33.4~ 이고 이는 
2단계 비만에 해당하고 빨간색의 매우 실망한 아이콘이므로 이 아이콘을 출력하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/211132332-4c2f6128-a52d-4181-b000-5310775b3383.png)
