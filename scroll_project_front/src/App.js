import {
  Card,
  CardHeader,
  CardBody,
  CardText,
  Button,
  Row,
  Col,
  Input,
  Modal,
  ModalHeader,
  ModalBody,
  FormGroup,
} from "reactstrap";
import "./App.css";
import { useEffect, useState } from "react";
import axios from "axios";
import update from "immutability-helper";

function App() {
  const [board, setBoard] = useState();

  const [isUpdate, setIsUpdate] = useState(false);

  const [isStateChange, setIsStateChange] = useState(false);

  const [inputCreate, setInputCreate] = useState();

  const [inputUpdate, setInputUpdate] = useState();

  const [isModal, setIsModal] = useState(false);

  const modalViewToggle = () => setIsModal(!isModal);

  // 첫 조회
  useEffect(() => {
    axios
      .get("http://localhost:8080/api/board/select/list")
      .then((res) => {
        setBoard(res.data);
        console.log(res.data);
      })
      .catch((e) => {
        console.error(e);
      });
  }, []);

  // 삽입
  const createOnChange = (e) => {
    const {name, value} = e.target;
    setInputCreate({
      ...inputCreate,
      [name]: value
    })
    console.log(inputCreate)
  }

  const createBoard = () => {
    // front 화면에서 생성하는 것처럼 행동
    setBoard(
      update(board, {
        $push: [inputCreate],
      })
    );

    // 이후 api 호출 후 데이터 삽입
    axios
      .post("http://localhost:8080/api/board/insert/board", inputCreate)
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
        $splice: [[index,1]],
      })
    )
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
  }
  // 삭제 끝

  

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
              {isUpdate ? (
                <Col sm={{ offset: 3, size: "auto" }}>
                  <Input />
                </Col>
              ) : (
                <>
                  <Col sm={{ offset: 1, size: "auto" }}>
                    <Button color="primary">자세히 보기</Button>
                  </Col>
                  <Col sm={{ offset: 3, size: "auto" }}>
                    <Button color="warning">수정</Button>
                  </Col>
                  <Col sm={{ offset: 3, size: "auto" }}>
                    <Button color="danger" onClick={() => deleteBoard(index)}>삭제</Button>
                  </Col>
                </>
              )}
            </Row>
          </CardBody>
        </Card>
      ))}
      <br />
      <br />
      <br />
      <br />
      <Row>
        <Button color="success" onClick={modalViewToggle}>
          추가
        </Button>
      </Row>

      <Modal
        isOpen={isModal}
        toggle={modalViewToggle}
        centered={true}
        fullscreen={true}
      >
        <ModalHeader toggle={modalViewToggle}>
          추가할 게시글을 입력하세요
        </ModalHeader>
        <ModalBody>
          <Card className="my-2" color="primary" outline>
            <CardBody>
              <FormGroup>
                제목
                <Input name="title" onChange={createOnChange}/>
                내용
                <CardText>
                  <Input type="textarea" name="contents" onChange={createOnChange} />
                </CardText>
              </FormGroup>
              <Row>
                <Col sm={{ offset: 3, size: "auto" }}>
                  <Button
                    color="success"
                    onClick={() => {
                      createBoard();
                    }}
                  >
                    추가
                  </Button>
                </Col>
                <Col sm={{ offset: 4, size: "auto" }}>
                  <Button
                    onClick={() => {
                      modalViewToggle()
                    }}
                  >
                    닫기
                  </Button>
                </Col>
              </Row>
            </CardBody>
          </Card>
        </ModalBody>
      </Modal>
    </div>
  );
}

export default App;
