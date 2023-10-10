#  🥕당근마켓 클론코딩🥕
> UMC iOS 파트 3주차 과제로 당근마켓의 홈 화면을 클론코딩했습니다.


## 이번프로젝트 핵심
### 1. 테이블 뷰 사용
테이블 뷰를 만들기 위해 Delegate와 DataSource 프로토콜을 이용했습니다.

### 2. Cell 코드로 생성
코드 베이스로 Table view의 cell을 구현해 적용해보았습니다.

### 3. 제약조건 라이브러리 적용
제약조건을 코드로 간편하게 설정하기 위해 SnapKit 라이브러리를 이용했습니다.

➡️ 라이브러리 깃허브: https://github.com/SnapKit/SnapKit

### 4. 이미지 캐싱 라이브러리 적용
테이블 뷰가 셀을 재사용하는 매커니즘 특성상 URL을 통해 이미지를 로드할 때 이전 셀의 이미지가 겹쳐보이는 현상이 발생했습니다.

이를 완화하고자 **Kingfisher** 라이브러리를 이용하여 이미지 캐싱을 적용했습니다.

➡️ 라이브러리 깃허브: https://github.com/onevcat/Kingfisher

적용 전 | 적용 후
--|--
![Oct-10-2023 16-21-27](https://github.com/dodo849/UMC-iOS-Study/assets/71880682/7c5b7495-df0c-4480-8b54-93f03f50621c) | ![Oct-10-2023 16-21-14](https://github.com/dodo849/UMC-iOS-Study/assets/71880682/e098c33c-732b-4825-beb5-150cbc809997)
이미지들이 겹치고 꼬이는 것을 볼 수 있음 | 깔끔


