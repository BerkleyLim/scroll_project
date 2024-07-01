# scroll_project

- Front : React 기반, Back : Spring Boot를 이용하여 데이터를 받고 게시판 내용을 해당 리스트 출력을 해보고, 선택 후 이전 화면으로 돌아갈 시 선택된 데이터에 포커싱을 맞춘다.
- 이 프로젝트는 [board 리포지토리](https://github.com/BerkleyLim/project_board)에서 시작된 기존 게시판 프로젝트를 확장하여 무한 스크롤 기능을 구현한 것입니다. 이전 작업을 완료한 후 이 프로젝트를 진행해주시기 바랍니다.

<br/>

## 작업 환경

| **분야**        | **기술 스택**                                                                                                                                     |
|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| **프론트엔드**  | React, react-intersection-observer, React-Router-Dom, Immutability-helper, Reactstrap, Bootstrap, Axios                                           |
| **백엔드**      | Spring Boot, Spring Boot DevTool, Lombok, MyBatis, JDBC, H2                                                                                       |
| **DB**          | MySQL (로컬 테스트 환경)                                                                                                                          |
| **기타**        | NodeJS 16.10.8, Gradle                                                                                                                            |

<br/>

## Getting Started

JDBC 사전 작업을 먼저 수행 후 진행 바랍니다 (back-end 실행 방법 참조).

### 프론트엔드 실행 방법

1. Node.js와 npm이 설치되어 있어야 합니다.
2. 다음 명령어를 통해 프론트엔드 서버를 실행합니다.

```bash
# repo
cd front
npm install
npm start
```

### 백엔드 실행 방법

1. SQL 데이터베이스 설정:
    - MySQL에 데이터베이스를 생성합니다.
    - 생성한 데이터베이스 정보를 <strong>src/main/resources/application.yml</strong> 파일의 10번째 줄에 설정합니다.

```yaml
jdbc:mysql://localhost:3306/{본인DB명}?useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&allowPublicKeyRetrieval=true&autoReconnect=true
```

2. 데이터베이스 스키마 생성:
    - MySQL에 접속하여 다음 SQL 명령어를 실행하여 `board` 테이블을 생성합니다.

```sql
CREATE TABLE board (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    contents TEXT NOT NULL
);
```

3. Gradle을 사용하여 백엔드 서버를 실행합니다.

```bash
# repo
cd back
gradle bootrun
```

<br/>

## 블로그

- (1) [[무한 스크롤] 게시판 리스트 출력 [1] - 사전 준비](https://berkley.tistory.com/21)
- (2) [[무한 스크롤] 게시판 리스트 출력 [2] - 스크롤 구현 후 포커싱 유지](https://berkley.tistory.com/22)

