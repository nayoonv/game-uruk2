# game-uruk

### DB Table 설계

case naming convention - table, column 모두 snake case

## 기획 데이터

기획 데이터 표현 방법 - csv

기획 데이터 저장 방법 - Database Table, Key-Value Memory Cache


## 파일 설명

기획 데이터 테이블 구성 - 전체적인 기획 데이터 테이블 컬럼(설명 포함)

게임 데이터 테이블 구성 - 전체적인 게임 데이터 테이블 컬럼(설명 포함)

기획 데이터 - 임의 데이터

## 일정 진행

22.01.24 - 22.01.26 - 기획 데이터 (기획 데이터 테이블 구성.xlsx, 기획 데이터.xlsx 생성)

22.01.27 - 게임 데이터 (게임 데이터 테이블 구성.xlsx)

## 궁금

insert 할 때 기본적인 데이터를 default로 넣으면 좋겠다고 생각했는데, 혹시라도 기획이 바뀌게 되면 default 값을 변경해줘야 하는데, 그렇다면 insert할 때 select로 기획 데이터를 조회해서 변경되는 기획에 대비하는 게 좋을까 아님 default로 select하지 않고 insert만 하는 게 좋을까.
