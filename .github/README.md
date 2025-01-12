# EATSSU iOS APP

"숭실대에서 먹자!" 숭실대학교 학식 리뷰 iOS 앱

## Issue Title

``` zsh
[Commit Type] 이슈 제목
```

## Commit Type

> issue탭의 label과 동일

`Setting` 프로젝트 세팅, 라이브러리 설치

`Feat` 새로운 기능 구현 (new feature)

`Add` 파일 추가

`Fix` 버그 수정 (bug fix)

`Docs` 문서 작성, 수정 (documentation)

`Refactor` 코드 리팩토링 (refactoring)

`Test` 테스트 코드, 리팩토링 테스트 코드 추가

`Chore` 빌드 업무 수정, 패키지 매니저 수정, 파일 이동 및 이름 변경 등 (production code 변경이 없는 경우)

## Commit Message Conventions

``` zsh
[#이슈번호] 커밋메시지
### Description
- [#1] Project Setting
- [#2] Add AlermBar
```

## Branch Title Conventions

```zsh
Commit Type / issue number
```

## Code Convention**

### 1. 네이밍

- 함수, 메서드 : **lowerCamelCase** 사용하고, 동사로 시작한다.
- 변수, 상수 : **lowerCamelCase** 사용한다.
- 약어
  - 약어로 시작하는 경우: 소문자로 표기
  - 그 외의 경우에는 약어를 항상 대문자로 표기합니다
- 클래스, 구조체, enum, extension 등 : **UpperCamelCase** 사용한다.
  - enum의 각 case에는 **lowerCamelCase**를 사용

### 2. 띄어쓰기, 들여쓰기, 공백

- MARK 주석 위와 아래에는 공백 필수
- 콜론(`:`)을 쓸 때에는 콜론의 오른쪽에만 공백 두기 (단, 삼항 연산자의 경우 콜론 앞뒤로 띄우기)
- `if let`, `guard let` 구문이 긴 경우에는 줄바꿈하고 한 칸 들여쓰기
- 콤마(`,`) 뒤에 공백 추가
- 연산자 앞뒤로 공백을 추가합니다.
- 화살표(`->`) 양쪽에 가독성을 위해 빈 공백을 추가합니다.
- `@objc`, `블럭 단위` 사이에는 줄바꿈을 추가합니다.

### 3. 주석

- `///` 를 사용해서 문서화에 사용되는 주석 남기기
- `// MARK:` 를 사용해서 연관된 코드를 구분짓기
- 가능한 코드 안에서 문서화를 진행해서 생산성을 올릴 수 있도록 정리하기

## Folder Structure
```
IOS
 ┣ EATSSU_MVC
 ┃  ┣ EATSSU_MVC
 ┃  ┃  ┗ Sources
 ┃  ┃     ┣ Data
 ┃  ┃     ┃  ┣ Firebase
 ┃  ┃     ┃  ┣ LocalDB
 ┃  ┃     ┃  ┗ Network
 ┃  ┃     ┣ Notification
 ┃  ┃     ┣ Presentation
 ┃  ┃     ┃  ┣ Auth
 ┃  ┃     ┃  ┃  ┣ Enum
 ┃  ┃     ┃  ┃  ┣ View
 ┃  ┃     ┃  ┃  ┗ ViewController
 ┃  ┃     ┃  ┣ Home
 ┃  ┃     ┃  ┃  ┣ Enum
 ┃  ┃     ┃  ┃  ┣ Model
 ┃  ┃     ┃  ┃  ┣ Protocol
 ┃  ┃     ┃  ┃  ┣ View
 ┃  ┃     ┃  ┃  ┗ ViewController
 ┃  ┃     ┃  ┣ MyPage
 ┃  ┃     ┃  ┃  ┣ Enum
 ┃  ┃     ┃  ┃  ┣ Model
 ┃  ┃     ┃  ┃  ┣ View
 ┃  ┃     ┃  ┃  ┗ ViewController
 ┃  ┃     ┃  ┗ Review
 ┃  ┃     ┃     ┣ View
 ┃  ┃     ┃     ┗ ViewController
 ┃  ┃     ┗ Utility
 ┃  ┗ UnitTests
 ┣ EATSSU_MVVM
 ┃  ┗ EATSSU_MVVM
 ┃     ┗ Sources
 ┣ EATSSUComponents
 ┃  ┗ EATSSUComponents
 ┃     ┗ Sources
 ┃        ┗ Extension
 ┣ fastlane
 ┣ Tuist
 ┗ 기타 파일들
```
