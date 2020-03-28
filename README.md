# 스터디에 앞서서

## SDK 환경 설정

* [Dart SDK](https://gekorm.com/dart-windows/) 를 설치합니다.   
**Stable 버전으로 설치하세요~**  
  - 프로그램 설치시 원하는 경로에 설치를 합니다.
  - dart SDK 는 ex) `G:\Development\Dart\dart-sdk\bin` 를 환경변수 Path 에 추가합니다.

* [Flutter SDK](https://flutter.dev/docs/get-started/install/windows) 에서 SDK 압축파일을 받습니다.   
  - flutter_windows_vX.X.X+hotfix.X-stable.zip 와 같은 압축파일이 홈페이지에 있습니다.  
  - flutter SDK 는 원하는 경로에 압축파일을 풀고 ex) `G:\Development\flutter\bin` 의 경로를 환경변수 Path에 추가하세요.

## IDE 설정

* [Android Studio](https://developer.android.com/studio/?gclid=Cj0KCQjw6_vzBRCIARIsAOs54z5NTQLSSV7cn1UYF3sng71D_mE0qo5BY6qo10y-7Tz-XtOnnKYUznYaAtglEALw_wcB) 를 다운받습니다. 
  - 원하는 경로에 설치를 진행합니다.
  - [Android Studio](https://developer.android.com/studio/?gclid=Cj0KCQjw6_vzBRCIARIsAOs54z5NTQLSSV7cn1UYF3sng71D_mE0qo5BY6qo10y-7Tz-XtOnnKYUznYaAtglEALw_wcB) 를 실행하고 Flutter 와 Dart 플러그인을 설치합니다.
  
* [Vscode](https://code.visualstudio.com/) **(권장사항)** 를 설치합니다.
  - 원하는 경로에 설치를 진행합니다.
  - Vscode 를 시작하고 Vscode Extension 탭 (왼쪽 4개의 박스로 구성된 아이콘) 을 눌러서 검색에 다음의 목록을 검색하고 설치한 후 Vscode를 재시작합니다.
  - `ms-ceintl.vscode-language-pack-ko` - 한국어 확장팩,   
    `dart-code.flutter` - 플러터 확장팩,   
    `dart-code.dart-code` - 다트 확장팩,   
    `coenraads.bracket-pair-colorizer` - 코드를 깔끄미하게 볼 수 있도록 하는 확장팩,   
    `oderwat.indent-rainbow` - 코드 들여쓰기 보기 편하게 하는 확장팩
## 마지막 단계~

* 거의 다 왔습니다!  
  - PowerShell 를 실행한 후, `flutter doctor` 명령어를 작성하고 ENTER!
  - `[!] Connected device` 만 빼고 모두 `[√]` 표시가 떴다면 성공~
