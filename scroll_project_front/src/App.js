import {
  Card,
  CardHeader,
  CardBody,
  CardText,
  Button,
  Row,
  Col,
  Input,
} from "reactstrap";
import "./App.css";
import { useEffect, useRef, useState } from "react";
import axios from "axios";
import update from "immutability-helper";
import ModalComponent from "./modal/ModalComponent";
import { useInView } from "react-intersection-observer";

function App() {
  const [board, setBoard] = useState([]);

  const [message, setMessage] = useState();

  const [mode, setMode] = useState("create");

  const [updateData, setUpdateData] = useState();
  const [updateIndex, setUpdateIndex] = useState();

  const [isStateChange, setIsStateChange] = useState(false);

  const [isModal, setIsModal] = useState(false);

  const limit = 5;
  const [offset, setOffset] = useState(0);

  const [ref, isScroll] = useInView();

  const modalViewToggle = () => setIsModal(!isModal);

  // 무한 스크롤 로직
  const limitPaging = () => {
    axios
      .get(
        "http://localhost:8080/api/board/select/list?pageNumber=" +
          limit +
          "&startPage=" +
          (offset +
          limit)
      )
      .then((res) => {
        setBoard([...board, ...(res.data)]);
        console.log(res.data);
        setOffset(limit + offset);
      })
      .catch((e) => {
        console.error(e);
      });
  };

  useEffect(() => {
    // isScroll이 true 일때만 실행
    if (isScroll) {
      // 실행할 함수
      limitPaging();
    }
  }, [isScroll]);
  // 무한 스크롤 로직 끝

  // 첫 조회
  // useEffect(() => {
  //   console.log(limit + " " + offset)
  //   axios
  //     .get("http://localhost:8080/api/board/select/list?pageNumber=" + limit + "&startPage=" + offset+limit)
  //     .then((res) => {
  //       setBoard(res.data);
  //       console.log(res.data);
  //       setOffset(limit+offset);
  //     })
  //     .catch((e) => {
  //       console.error(e);
  //     });
  // }, []);

  // 삽입
  const readyChange = () => {
    setMessage("추가");
    setMode("create");
    modalViewToggle();
  };

  const createBoard = (data) => {
    // front 화면에서 생성하는 것처럼 행동
    setBoard(
      update(board, {
        $push: [data],
      })
    );

    // 이후 api 호출 후 데이터 삽입
    axios
      .post("http://localhost:8080/api/board/insert/board", data)
      .then((res) => {
        alert("생성 성공!!");
        console.log(res);
      })
      .catch((e) => {
        console.error(e);
      });
    modalViewToggle();
  };
  // 삽입 끝

  // 삭제 시작
  const deleteBoard = (index) => {
    const deleteData = board[index];
    setBoard(
      update(board, {
        $splice: [[index, 1]],
      })
    );
    // 이후 api 호출 후 데이터 삭제
    axios
      .post("http://localhost:8080/api/board/delete/board", deleteData)
      .then((res) => {
        alert("삭제 성공!!");
        console.log(res);
      })
      .catch((e) => {
        console.error(e);
      });
  };
  // 삭제 끝

  // 수정 시작
  const readyUpdate = (data, index) => {
    setMessage("수정");
    setMode("update");
    modalViewToggle();
    setUpdateData(data);
    setUpdateIndex(index);
  };

  const updateBoard = (data, index) => {
    setBoard(
      update(board, {
        $merge: { [index]: data },
      })
    );
    modalViewToggle();
    setIsStateChange(!isStateChange);
    // 이후 api 호출 후 데이터 수정
    axios
      .post("http://localhost:8080/api/board/update/board", data)
      .then((res) => {
        alert("수정 성공!!");
        console.log(res);
      })
      .catch((e) => {
        console.error(e);
      });
  };
  // 수정 끝



  return (
    <div className="container">
      <br />
      <br />
      <br />
      <h1>무한 스크롤 삽입</h1>
      <br />
      <br />
      <br />
      {board?.map((b, index) => (
        <Card key={index} className="my-2" color="primary" outline>
          <CardHeader>{b?.title}</CardHeader>
          <CardBody>
            <CardText>{b?.contents}</CardText>
            <br />
            <br />
            <Row>
              <Col sm={{ offset: 3, size: "auto" }}>
                <Button
                  color="primary"
                  onClick={() => {
                    readyUpdate(b, index);
                  }}
                >
                  수정
                </Button>
              </Col>
              <Col sm={{ offset: 4, size: "auto" }}>
                <Button color="danger" onClick={() => deleteBoard(index)}>
                  삭제
                </Button>
              </Col>
            </Row>
          </CardBody>
        </Card>
      ))}
      <div ref={ref}>데이터 없음</div>
      <br />
      <br />
      <br />
      <br />
      <Row>
        <Button
          color="success"
          onClick={() => {
            readyChange();
          }}
        >
          추가
        </Button>
      </Row>

      <ModalComponent
        isModal={isModal}
        modalViewToggle={modalViewToggle}
        createBoard={createBoard}
        message={message}
        mode={mode}
        updateData={updateData}
        updateIndex={updateIndex}
        updateBoard={updateBoard}
      />
    </div>
  );
}

export default App;
