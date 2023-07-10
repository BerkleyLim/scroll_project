# scroll_project
Front : React 기반, Back : spring boot를 이용하여 데이터를 받고 게시판 내용을 해당 리스트 출력을 해보고, 선택 후 이전화면으로 돌아갈 시 선택된 데이터에 포커싱을 맞춘다.


# 작업 환경
- React
- Spring boot
- Mysql
- nodeJS 16.10.8
- My-Batis
- Gradle bootrun


# Getting Start
사전 작업을 먼저 수행합니다.
먼저 MySQL을 설치하고, DBeaver를 설치 후 진행하면 용의합니다.
ex 디렉토리 같은 경우는 혹시나 주변에 리액트로 무한 스크롤 연습이 필요하신 분 한정으로 하여 넣었으며,
자세한 참조는 블로그로 활용하시기 바랍니다.

사용방법은 front 폴더, Back 폴더 둘다 모두 가동시켜야 하며,
front는 nodejs 와 npm가 있어야 하며
back은 gradle 이용하여 실행 시킬 수 있습니다.

로컬 환경에서 실행 하는 방법은 아래와 같이 설명합니다.

### scroll_project_front
1) git clone을 하였을 경우 아래와 같이 명령어를 실행합니다.
```
$ npm install
```
<br/><br/><br/>
2) 다음으로는 아래와 같이 개발모드로 실행 가능합니다.
```
$ npm run start
```
<br/><br/><br/>
<br/><br/><br/>

### scroll_project_back
1) spring boot 실행 전 본인 <strong>scroll_project_back</strong> 디렉토리에 있는 sql문 파일을 이용해 DBeaver로 이용하여 MYSQL에 데이터를 삽입합니다.
<br/><br/><br/>
2) SQL에 삽입하였을 경우 <strong>src/main/resources/application.yml</strong>을 열고 아래와 같이 10번째 줄인 본인이 저장한 DB 환경 설정을 변경해줍니다.
```
 jdbc:mysql://localhost:3306/{본인DB명}?useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&allowPublicKeyRetrieval=true&autoReconnect=true
```
<br/><br/><br/>
3) git clone을 하였을 경우 아래와 같이 명령어를 실행합니다.
```
$ gradle
```
<br/><br/><br/>
4) 다음으로는 아래와 같이 Gradle로 spring boot 실행 가능합니다.
```
$ gradle bootrun
```


# 블로그
- (1) [`[무한 스크롤] 게시판 리스트 출력 [1] - 사전 준비`](https://berkley.tistory.com/21)
- (2) [`[무한 스크롤] 게시판 리스트 출력 [2] - 스크롤 구현 후 포커싱 유지`](https://berkley.tistory.com/22)