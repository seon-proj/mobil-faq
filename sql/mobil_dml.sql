INSERT INTO faq_items (faq_category, faq_question, faq_answer)
VALUES ('예약', '예약 취소는 어떻게 하나요?', '마이페이지의 예약 내역에서 취소할 수 있습니다. 취소 수수료 정책을 확인해주세요.');

-- 예시 3: faq_link에 값을 명시적으로 NULL로 지정하여 삽입
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('결제', '결제 수단에는 어떤 것들이 있나요?', '신용카드, 계좌이체, 휴대폰 소액결제를 지원합니다.', NULL);

-- HTML에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('안심번호', '안심번호 연락을 받고 싶지 않아요, 어떻게 하나요?', '모빌에서 부여한 안심번호는 회원의 주차 문제로 민원인의 불만을 해결하기 위해 만들어 놓은 서비스로, 모빌을 운행중이실 때에만 이용중인 회원에게 연결이 됩니다. 개인 연락처를 대신하는 안심번호 서비스는 모빌 이용이 종료된 후에는 더이상 연락이 가지않으니 안심하고 모빌을 이용해주세요.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('안심번호', '모빌에서 부여한 안심번호로 연락이 왔어요, 어떻게 하나요?', '이동주차를 요청 하는 전화 입니다. 빠른 이동주차로 주차민원을 해결해주세요. ※ 불법 주정차 또는 주차 관련 민원으로 인해 차량이 견인될 경우 그에 따른 탁송, 견인비 등의 제반 비용이 고객님께 청구됩니다.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/반납', '[부름서비스 반납지변경] 지정한 반납위치를 변경하고 싶어요.', '예약이 완료된 후에는 차량 반납위치 변경은 불가합니다. 기존 예약 취소 후 재예약을 진행해 주세요. 단, 예약 취소 시 수수료가 발생될 수 있으며, 부름 서비스의 경우 예약 시작 2시간 이내 취소 시 패널티 10,000원과 탁송∙견인비가 발생됩니다. 취소 수수료 관련 자세한 내용은 아래의 링크를 통해 확인해주세요. 운행 중 지정장소에 반납이 어렵거나 피치못할사정으로 반납장소 변경이 필요한경우 반드시 고객센터(1661-3315, 24시간) 또는 실시간 모바일 채팅상담 모빌톡(09시~21시)으로 연락 주신 후 상담사의 안내에 따라 반납 부탁드립니다.(반납장소에 따라 추가 변경요금이 발생할 수 있습니다.)', 'https://m.socar.kr/cs/notice/1096');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/반납', '[부름서비스 반납지변경] 부름서비스편도로 예약 했어요. 원래 부른 위치에 반납해도 되나요?', '예약 상태인 경우 모빌 앱을 통해 기존 예약 취소 후 재예약을 해주셔야 합니다. 단, 예약 취소 시 수수료가 발생될 수 있으며, 부름서비스의 경우 예약 시작 2시간 이내 취소 시 패널티 10,000원과 탁송∙견인비가 발생됩니다. 취소 수수료 관련 자세한 내용은 아래의 링크를 통해 확인해주세요. 운행 중 지정장소에 반납이 어렵거나 피치못할사정으로 반납장소 변경이 필요한경우 반드시 고객센터(1661-3315, 24시간) 또는 실시간 모바일 채팅상담 모빌톡(09시~21시)으로 연락 주신 후 상담사의 안내에 따라 반납 부탁드립니다.(반납장소에 따라 추가 변경요금이 발생할 수 있습니다.)', 'https://m.socar.kr/cs/notice/1096');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '투싼 이용방법이 궁금해요', '투싼 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/9213#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'i30 이용방법이 궁금해요', 'i30 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/5907#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '레이 이용방법이 궁금해요', '레이 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/253#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '모닝 이용방법이 궁금해요', '모닝 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/518#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '스타렉스 이용방법이 궁금해요', '스타렉스 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/1392#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '올란도 이용방법이 궁금해요', '올란도 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/1631#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '미니쿠퍼 이용방법이 궁금해요', '미니쿠퍼 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/1767#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'QM3 이용방법이 궁금해요', 'QM3 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/1830#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '비틀 이용방법이 궁금해요', '비틀 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/2409#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'K5(LPG) 이용방법이 궁금해요', 'K5(LPG) 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4095#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '트랙스 이용방법이 궁금해요', '트랙스 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4119#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '티볼리 이용방법이 궁금해요', '티볼리 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4108#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '스포티지 이용방법이 궁금해요', '스포티지 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4126#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '미니5도어 이용방법이 궁금해요', '미니5도어 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/2443#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'SM5 이용방법이 궁금해요', 'SM5 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4784#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '그랜저HG(LPG) 이용방법이 궁금해요', '그랜저HG(LPG) 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4382#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'LF쏘나타 이용방법이 궁금해요', 'LF쏘나타 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4236#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'LF쏘나타(LPG) 이용방법이 궁금해요', 'LF쏘나타(LPG) 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/3068#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '넥스트스파크 이용방법이 궁금해요', '넥스트스파크 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/3340#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '아반떼AD 이용방법이 궁금해요', '아반떼AD 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/3409#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'K5 이용방법이 궁금해요', 'K5 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/5349#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'BMW X3 이용방법이 궁금해요', 'BMW X3 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/3876#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', 'BMW 520D 이용방법이 궁금해요', 'BMW 520D 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/3861#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '말리부 이용방법이 궁금해요', '말리부 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/4956#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 이용방법', '볼트 이용방법이 궁금해요', '볼트 차량 이용방법은 아래 링크에서 확인하세요!', 'https://blog.socar.kr/5487#windowopen');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 조작', '풋브레이크 사용방법이 알고싶어요', '사이드브레이크 대신 운전선 하단 왼쪽에 주차브레이크가 있는 차량이 있습니다. 주행하기 전에 발로 살짝 눌러서 위로 눌러주시면 주차브레이크가 해제됩니다. 주차 후에는 깊게 밟아 주차브레이크를 걸어주세요.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 조작', '핸들이 움직이지 않아요', '핸들이 돌아가지 않을 경우, 브레이크를 밟은 상태에서 핸들을 좌우로 돌리면서 차 키를 돌려주시면 시동이 걸립니다.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 조작', '시동은 어떻게 거나요?', '기어가 P에 있는지 확인 후 브레이크를 밟은 상태에서 시동을 걸어주세요.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 조작', '차량 문은 어떻게 열 수 있나요?', '모빌앱을 통해 차량을 이용하실 수 있습니다. 예약하신 모빌 차량 앞에서, 스마트키를 통해 차량 문을 열고 닫으실 수 있습니다.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('차량 조작', '차키는 어디에있나요? 차 키가 없어요.', '모빌는 무인시스템으로 운영되어 별도의 차키 없이 ''모빌앱>스마트키''를 통해 차량 문을 열고 닫으실 수 있습니다. 열쇠 시동 차량의 경우, 핸들 뒤쪽에 와이어로 차량의 열쇠가 연결되어있습니다. 차키 대신에 버튼 시동 차량의 경우, START 버튼을 눌러 시동을 걸 수 있습니다.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('반납', '반납 체크 사항을 모두 처리하였는데도, "바로 반납"이 되지 않아요.', '지정된 반납 장소에 반납했는데도 바로 반납이 되지 않을 경우, 실시간 모바일 채팅상담 모빌톡(09~21시) 또는 고객센터(1661-3315, 24시간)로 문의해주세요.', 'https://goo.gl/1iLEii');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/반납', '[부름서비스] 이용 후 바로 반납이 되질 않습니다.', '우선 차량 시동 OFF, 문 잠금 상태인지 확인 및 차량 위치가 처음 대여 요청한 곳 인근 지역인지 다시금 확인해주세요. 부름서비스예약의 경우 반납한 곳의 차량 위치에 대한 정보 및 사진을 기입을 해야만 반납하기가 가능합니다. (반납 시 입력한 위치 정보 및 사진은 차량을 다시 복귀하기 위해 찾는 정보로 활용됩니다) 간혹, 지하 주차장인 경우나 인근 빌딩 밀집 지역인 경우 위치 정보 확인이 어려울 수 있습니다. 반납이 원할하지 않는 경우 고객센터(1661-3315, 24시간 운영) 또는 실시간 모바일 채팅상담 모빌톡(09~21시)으로 문의해주세요.', 'https://goo.gl/1iLEii');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/반납', '[부름서비스] 이용을 마친 후 차량 반납은 어떻게 하나요?', '부름서비스로 예약한 차량을 이용 후 차량 반납은 처음 예약 시 요청하셨던 곳에 주차해주세요. 주차 후 모빌 앱에서 반납하기를 해주시면 됩니다. 처음 출발한 곳에 주차가 원활하지 못한 경우 고객센터(1661-3315, 24시간 운영) 또는 실시간 모바일 채팅상담 모빌톡(09~21시)으로 문의해주세요. 단, 특정지역은 처음 대여 지역과 반납 지역이 다를 수 있습니다. 예약 후 고객님의 원활한 반납을 위해 메시지를 발송하고 있으니 참고 부탁드립니다.', 'https://goo.gl/1iLEii');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/예약', '[부름서비스] 예약을 취소하고 싶어요.', '부름서비스예약 취소는 모빌앱에서 취소가 가능합니다. 단, 예약 취소시 수수료가 발생될 수 있으며, 부름서비스의 경우 예약 시작 2시간 이내 취소시 패널티 10,000원과 탁송∙견인비가 발생됩니다. 취소 수수료 관련 자세한 내용은 아래의 링크를 통해 확인 부탁드립니다.', 'https://m.socar.kr/cs/notice/1096');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/예약', '[부름서비스] 주차 장소를 변경하고 싶어요.', '예약이 완료된 후에는 주차장소 변경은 불가합니다. 기존 예약 취소 후 재예약을 진행해 주세요. 단, 예약 취소 시 수수료가 발생될 수 있으며, 부름서비스의 경우 예약 시작 2시간 이내 취소 시 패널티 10,000원과 탁송∙견인비가 발생됩니다. 취소 수수료 관련 자세한 내용은 아래의 링크를 통해 확인해주세요.', 'https://m.socar.kr/cs/notice/1096');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('부름/예약', '[부름서비스] 예약한 차량을 변경하고 싶어요.', '예약이 완료된 이후 차량 변경은 불가합니다. 기존 예약 취소 후 재예약을 진행해 주세요. 단, 예약 취소 시 수수료가 발생될 수 있으며, 부름서비스의 경우 예약 시작 2시간 이내 취소 시 패널티 10,000원과 탁송∙견인비가 발생됩니다. 취소 수수료 관련 자세한 내용은 아래의 링크를 통해 확인해주세요.', 'https://m.socar.kr/cs/notice/1096');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('사고/고장', '차량 이용 중 사고가 나거나 긴급 출동이 필요할 때는 어떻게 해야 하나요?', '차량 이용 중 고장이나 사고 발생 시 고객센터(1661-3315)로 즉시 연락해 신고해야 하며 모빌의 안내를 준수해야 합니다. 사고 후 신고하지 않은 경우에는 보험 혜택을 적용받을 수 없으며 미신고 페널티 요금이 발생합니다.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('이용규칙', '차량 내부를 지저분한 상태로 반납하면 어떻게 되나요?', '자동차 내부가 불량한 상태로 차량을 반납한 경우, 페널티 10,000원과 실내 세차 비용(승용 10만 원, SUV∙승합 20만원) 이 발생되며, 3회 누적 발생 시 회원자격 재심사가 진행됩니다. 모빌 차량은 모두가 공유하는 차량으로 이용 후 깨끗한 상태로 반납해 주세요.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('이용규칙', '교통위반 고지서를 받으면 어떻게 해야하죠?', '벌금, 과태료 등은 당시 예약한 쏘친님께서 지불 하셔야합니다. 모빌 명의로 고지서 발부 → 위반 당시 운행자 확인 후 발급기관에 명의 변경 요청 → 임차인 명의로 고지서가 발송 되기 때문에 모빌를 이용 하신후 약 한 달 정도 소요 될수도 있습니다.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('이용규칙', '반려동물도 함께 탈 수 있나요?', '시각장애인을 위한 안내견을 제외한 모든 반려동물은 캐리어를 이용해주셔야 합니다. ※ 캐리어 미사용으로 인해 내부 청결 상태 불량으로 민원이 발생한 경우 - 페널티 10,000원과 실내 세차비용(승용 10만 원, SUV∙승합 20만 원) 발생 - 3회 누적 발생 시 회원자격 재심사 진행. 모빌 차량은 모두가 공유하는 차량으로 이용 후 깨끗한 상태로 반납해 주세요.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('이용준비', '차량 운전을 위해 휴대해야 하는 것이 있나요?', '모빌 이용 시, 차량 문을 열고 잠그기 위해 모빌앱이 설치된 스마트폰과 운전면허증을 소지해주세요.', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('반납', '자동차 반납을 지정된 모빌존이 아닌 다른곳에 해도 되나요?', '예약 시 지정된 반납 모빌존이 아닌 다른 곳에 반납을 할 경우 다음 이용자에게 불편을 주게 되므로 반드시 반납 모빌존에 반납하여 주시기 바랍니다. 지정되지 않은 장소로 차량을 반납할 경우 10,000원의 페널티 요금 및 탁송∙견인비(주차비, 과태료, 견인비 발생시 추가 청구) 가 부과됩니다. 지정된 모빌존에 다른 차량이 주차되어있어 반납이 어려운 경우, 반드시 고객센터(1661-3315, 24시간) 또는 실시간 모바일 채팅상담 모빌톡(09시~21시)으로 연락 주신 후 상담사의 안내에 따라 반납 부탁드립니다.', 'https://goo.gl/1iLEii');

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('이용규칙', '차 안에서 흡연이 가능한가요?', '모빌 차량은 모두 금연 차량입니다. 차량 내 흡연이 적발될 경우, 페널티 요금 10,000원과 실내 세차 비용(승용 10만 원, SUV∙승합 20만 원) 이 발생되며 3회 누적 발생 시 회원자격 재심사가 진행됩니다. 회원님 모두의 쾌적한 차량 이용을 위하여 차량 내 흡연은 반드시 삼가주세요!', NULL);

INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('이용규칙', '차 안에서 흡연이 가능한가요?', '모빌 차량은 모두 금연 차량입니다. 차량 내 흡연이 적발될 경우, 페널티 요금 10,000원과 실내 세차 비용(승용 10만 원, SUV∙승합 20만 원) 이 발생되며 3회 누적 발생 시 회원자격 재심사가 진행됩니다. 회원님 모두의 쾌적한 차량 이용을 위하여 차량 내 흡연은 반드시 삼가주세요!', NULL);
-- HTML에서 추출한 FAQ 데이터 삽입 종료 --

-- socar_signin.html 에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(Android) 휴대폰 정보에 등록된 번호가 없다고 나오면서 인증이 안돼요.', '내장된 USIM에 휴대폰번호가 정상적으로 인식 되지 않은 경우 그러한 오류를 확인할 수 있습니다. 문제 해결을 위해 가입한 통신사 측으로 문의해 주세요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(iOS) 인증 도중에 앱이 종료되었어요.', '인증 도중 모빌 앱이 종료된 경우 인증을 처음부터 다시 진행해주세요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(iOS) 문자를 보냈는데 인증이 안돼요.', '아래 세 가지 내용을 확인해주세요. ① 문자 내용을 수정한 경우 띄어쓰기 등 조금이라도 수정을 했을 경우 인증이 불가하므로, 자동 입력되는 sms 문자 내용을 일체의 수정없이 그대로 발송해주세요. ② 사용 중인 요금제 특성 상 sms 문자 발송이 포함되어 있지 않은 경우 MO 인증은 기본적으로 sms 문자 발송을 이용한 인증 방법으로, sms 문자 발송을 하지 못하면 인증이 불가하여 서비스를 이용할 수 없습니다. 회원님께서 사용하시는 요금제를 확인 해주세요. ※ sms 건당 이용료를 지불하고 있는 회원의 경우 MO인증을 위한 sms 전송으로 본인 부담 비용이 발생할 수 있습니다. ③ 위 두 가지 사항에 해당하지 않는 문제일 경우 Wi-Fi 연결을 해제한 후 재시도 해주시기 바라며, 이후 동일 증상 발생 시 화면 캡쳐 등을 사용하여 조금 더 상세한 내용을 전달해주세요. 담당부서 측으로 확인 후 연락 드리겠습니다. ☞ 모빌 고객센터 : 1661-3315(24시간, 연중무휴)', 'https://goo.gl/1iLEii');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(Android) 하나의 휴대폰에 2개의 USIM을 사용 중인 경우에도 인증 가능한가요?', '2개의 USIM 중 본인의 정보가 저장되어 있는 USIM이 있다면 인증 가능합니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(Android) 기기접근 권한을 거절 해버렸어요. 다시 승인하려면 어떻게 해야하나요?', '사용 중인 휴대전화에서 `설정 → 어플리케이션 → 모빌 앱 권한 → 전화` 항목으로 이동하여 옵션을 켜주세요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(Android) 기기접근 권한에 동의하고 난 이후 인증 실패, 모빌앱을 사용할 수 없다고 나와요.', '회원 가입 시 입력했던 전화번호와 인증 시도한 휴대전화의 번호가 달라 인증에 실패한 것으로 보입니다. 본인 소유의 USIM이 내장되어있는 휴대전화를 사용해주세요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '(Android) 기기접근 권한에 동의 하지 않고 모빌 앱을 사용할 수는 없나요?', '각 운영체제에 적용된 인증을 진행하셔야만 모빌 서비스를 이용할 수 있습니다. 기기 접근 권한에 동의하지 않을 경우 인증을 진행할 수 없으므로 모빌 앱 사용이 불가합니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '모빌 이용 조건이 궁금해요.', '모빌 회원 가입은 누구나 가능합니다. 단, 예약 및 운행 등 정상적인 차량 이용을 위해서는 아래의 조건을 반드시 충족해야 합니다. ① 만 21세 이상(2020년 기준 1999년 생일 이후) ② 대한민국 운전면허 취득일 1년 이상(대한민국 운전면허 취득 필수) 모빌앱을 통해 가입 후 이용이 가능하며, 가입 시 반드시 본인 명의의 휴대전화를 통해 인증이 필요한 점 참고 바랍니다. ※ 가족 명의 또는 타인 명의의 휴대전화를 사용하시는 경우 본인 인증이 불가합니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '휴대전화 본인인증이 안돼요.', '본인인증은 본인명의의 휴대전화만 인증이 가능합니다. 가족 명의 또는 타인 명의의 휴대전화를 사용하시는 경우 인증이 불가한 점 참고 부탁드립니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '외국인도 모빌를 이용할 수 있나요?', '외국인도 모빌를 이용할 수 있으며 이용 조건은 아래와 같습니다. ① 만 21세 이상(2020년 기준 1999년 생일 이후) ② 대한민국 운전면허 취득일 1년 이상(대한민국 운전면허 취득 필수) ※ 대한민국 운전면허 취득일 1년 미만일 경우 - 대한민국 운전면허 + 국제 운전면허 합산하여 운전경력 1년 이상이면 가능 - 대한민국 운전 면허증과 국제 운전면허증을 사진 촬영 후 [모빌 앱 ▷ 고객센터 ▷ 제출 및 신청 ▷ 작성하기 ▷ 면허승인 서류제출] 통해 제출', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '회원이 되려면 얼마나 걸리나요?', '모빌 회원 가입을 하시면, 회원님의 개인정보, 운전면허 정보, 신용카드 정보 등을 확인하는 과정을 거칩니다. 정보에 문제가 없는 경우 회원가입 1일 이내 모빌 회원으로 승인됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '가입 후 바로 차를 이용할 수 있나요?', '회원가입이 완료되면 입력하신 정보의 확인 과정이 진행됩니다. 정상적으로 승인된 후 모빌 이용이 가능하며, 모빌앱을 통해서만 예약이 가능합니다. ※ 차량 사용을 위해서는 모빌앱을 이용해주세요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('가입문의', '스마트폰으로 차량 예약을 어떻게 하나요?', '로그인 후 ''예약하기'' 메뉴를 통해 대여시간, 모빌존, 차종 선택 후 예약이 가능합니다.', NULL);
-- socar_signin.html 에서 추출한 FAQ 데이터 삽입 종료 --

-- socar_coupon.html 에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('프로모션/쿠폰', '쿠폰적용을 하면 주행요금을 지불하지 않아도 되나요?', '쿠폰은 대여요금에만 적용이 가능하며 부름서비스전용 쿠폰의 경우 부름서비스예약 시에 사용 가능합니다. 주행요금 및 추가 연장 요금, 보험료, 하이패스 등의 비용은 예약 시 선택한 결제카드로 결제됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('프로모션/쿠폰', '이미 등록된 쿠폰을 다른 사람에게 양도할 수 있나요?', '이미 등록된 쿠폰의 경우 양도가 불가능합니다. 내가 초대한 친구를 대상으로 ''선물하기''가 가능한 쿠폰의 경우 다른 사람의 계정으로 쿠폰 양도가 가능합니다.', NULL);
-- socar_coupon.html 에서 추출한 FAQ 데이터 삽입 종료 --

-- socar_company.html 에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('법인/단체', '비영리단체도 법인 가입이 가능한가요?', '비영리단체도 법인과 동일하게 가입 및 이용이 가능하며, 사업자번호 입력란에는 고유번호를 입력해주시면 됩니다. 법인 관리자 가입을 위해서 사업자등록증명원 제출이 필요하니, 국세청 홈택스에서 미리 발급 후 가입을 시작해주세요. 고유번호를 가진 비영리단체도 사업자등록증명원 발급이 가능합니다.', 'https://business.socar.kr/join');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('법인/단체', '법인/단체 가입 조건 및 비용이 있나요?', '개인사업자/법인/단체는 누구나 가입할 수 있으며, 별도의 가입 비용이나 계약 절차 없이 법인 회원으로 가입 후 바로 이용 가능합니다. 법인 관리자 가입을 위해서 사업자등록증명원 제출이 필요하니, 국세청 홈택스에서 미리 발급 받으신 후 가입을 시작해주세요.', 'https://business.socar.kr/join');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('법인/단체', '법인 관리자와 법인 구성원의 차이점이 무엇인가요?', '법인 관리자 아이디는 구성원의 가입 승인 및 이용내역 조회를 위한 계정으로 실제 차량 이용은 불가능합니다. 모빌 법인 서비스 이용을 위해서는 법인 관리자로 먼저 가입 하신 후 법인 구성원으로 재가입을 해주셔야 합니다. 이때, 동일한 아이디로 중복 가입이 불가능하니, 유의해주세요. 이미 법인 관리자 가입이 되어 있다면, 법인 구성원으로만 가입 후 관리자의 가입 승인을 받으면 됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('법인/단체', '다른 차량 운영방식(렌트/리스/직원 차량 비용 지원 등) 대비 얼마나 비용이 절감되나요?', '임직원의 이동거리 및 이용량에 따라 달라집니다. 지금까지 모빌 법인 서비스를 도입한 기업들 기준으로 기존에 비해 30~50% 비용이 절감된 것을 확인하였고, 차량을 많이 보유하고 장거리로 운행했던 기업일수록 더욱 뛰어난 비용 절감 효과를 보였습니다. 차량 운영방식을 획기적으로 바꾸고자 하신다면 아래의 전화번호로 문의해주세요. ☎ 02-6749-0062(평일 10:00 ~ 18:00)', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('법인/단체', '법인 회원으로 이용 시 무엇이 좋은가요?', '법인 전용 정액형 요금제 제공으로 예산 관리가 편해집니다. 또한, 이용내역 조회, 팀/부서별 관리, 후불 정산 등 관리 시스템을 제공하고 있으므로 불필요한 내부 관리 업무가 줄어듭니다. 자세한 내용은 아래의 법인/단체 페이지를 참고해주세요.', 'https://business.socar.kr');
-- socar_company.html 에서 추출한 FAQ 데이터 삽입 종료 --

-- socar_delete.html 에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('탈퇴', '탈퇴 시 보유한 크레딧과 쿠폰은 환불이 되나요?', '회원 탈퇴 시 보유하신 쿠폰 및 크레딧은 환불이 되지 않으며 소멸됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('탈퇴', '탈퇴 시 재가입이 가능한가요?', '탈퇴 시 3개월간 재가입이 제한되며 3개월이 지난 후 재가입이 가능합니다. 만일 아이디/이름 변경 등이 필요한 경우 실시간 모바일 채팅 상담 모빌톡(09시~21시) 또는 고객센터(1661-3315, 24시간)로 문의해주세요.', 'https://goo.gl/1iLEii');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('탈퇴', '탈퇴를 하려면 어떻게 해야 하나요?', '회원 탈퇴는 모빌 앱을 통해서 가능합니다. [탈퇴 방법] ☞ 모빌 앱 로그인 ▷ 메뉴 ▷ 설정(회원 이름 선택) ▷ 회원 탈퇴하기 [!] 탈퇴 시에는 아래의 주의사항을 반드시 확인해주세요. - 탈퇴 시 3개월 간 재가입이 제한됩니다. - 아이디/이름 변경의 경우 고객센터(1661-3315)로 문의주세요. - 미납 요금 및 환불 금액이 있을 경우 탈퇴가 지연될 수 있습니다. - 탈퇴 시 무상으로 부여한 크레딧은 환불되지 않으며 그대로 소멸됩니다.', NULL);
-- socar_delete.html 에서 추출한 FAQ 데이터 삽입 종료 --

-- socar_etc.html 에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('기타', '손 세차 인증 승인 기준은 무엇인가요?', '승인 기준 미준수 시 크레딧 지급이 반려될 수 있으므로, 반드시 아래 기준을 준수해주세요. [손 세차] - 차량 전체에 거품을 묻힌 뒤 차량의 전측면과 후측면 모두 촬영해주세요. - 모빌 차량임이 확인되지 않을 경우 세차 인증이 불가합니다. - 단순 먼지/흙 털기, 쓰레기 청소, 물티슈로 닦기 등 내부 세차만 진행할 경우 인증이 불가합니다. - 세차 비용은 직접 결제해주세요. 모빌 차량에 비치된 주유 카드로 결제 시 크레딧이 회수됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('기타', '자동 세차 인증 승인 기준은 무엇인가요?', '승인 기준 미준수 시 크레딧 지급이 반려될 수 있으므로, 반드시 아래 기준을 준수해주세요. [자동세차] - 기계에 진입한 모빌 차량의 모습 또는 차량 내부에서 모빌임을 확인할 수 있는 주유 카드 단말기, 모빌 태블릿 등이 함께 보이도록 촬영해주세요. - 모빌 차량임이 확인되지 않을 경우 세차 인증이 불가합니다. - 단순 먼지/흙 털기, 쓰레기 청소, 물티슈로 닦기 등 내부 세차만 진행할 경우 인증이 불가합니다. - 세차 비용은 직접 결제해주세요. 모빌 차량에 비치된 주유 카드로 결제 시 크레딧이 회수됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('기타', '[부름서비스반납지변경] 반납장소의 제한이 있나요?', '부름서비스반납지 변경 서비스(부름서비스편도)는 부름가능한 지역으로 반납지 설정이 가능합니다. (내륙­-제주간 제외) 부름서비스차량 예약 후 예약 단계해서 [반납지변경하기]를 통해 설정하실 수 있어요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('기타', '모빌존에 주차할 자리가 없어요', '모빌존 내 주차할 공간이 없다면 모빌톡(09~21시) 또는 고객센터(1661-3315, 24시간)로 연락 후 상담사의 안내에 따라 반납 부탁 드립니다.', 'https://m.socar.kr/app_redirect/chat');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('기타', '[부름서비스] 이용을 마친 후 차량 반납은 어떻게 하나요?', '부름서비스로 예약한 차량을 이용 후 차량 반납은 처음 예약 시 요청하셨던 주차위치에 주차해주세요. 주차 후 시동을 종료한 다음 모빌앱에서 반납하기를 해주시면 됩니다. 처음 출발한 곳에 주차가 원할하지 못한 경우 실시간 모바일 채팅상담 모빌톡(09시~21시) 또는 고객센터(1661-3315, 24시간) 로 문의하신 후 상담사의 안내에 따라 반납해주세요. ☞ 모빌톡 문의하기 단, 특정 지역은 처음 대여 위치와 반납 위치가 다를 수 있습니다. 예약 후 회원님의 원할한 반납을 위해 메시지를 발송하고 있으니 참고 부탁 드립니다.', 'https://m.socar.kr/app_redirect/chat');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('기타', '[부름서비스] 부름서비스예약은 무엇인가요?', '부름서비스는 회원님께서 요청한 주차 위치로 모빌를 가져다 드리는 서비스입니다. 원하는 시간에 원하는 장소로 원하는 차량을 부르면 모빌가 회원님께로 달려갑니다. [모빌 앱]을 통해 예약해보세요.', NULL);
-- socar_etc.html 에서 추출한 FAQ 데이터 삽입 종료 --

-- socar_pay.html 에서 추출한 FAQ 데이터 삽입 시작 --
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스반납지변경] 반납지를 지정할 수 없어요. / 반납지 변경이 안돼요.', '부름서비스반납지 변경 서비스(부름서비스편도)는 부름가능한 전 지역으로 반납지 설정이 가능합니다. 부름서비스차량 예약 후 예약 단계해서 [반납지변경하기]를 통해 설정하실 수 있어요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스반납지변경] 부름서비스예약시 ''반납지 변경요금'' 은 무엇인가요?', '반납지 변경 요금은 부름서비스요청지와 반납지가 다를경우 발생하는 추가 비용으로, 요청지와의 거리에 따라 책정됩니다. * 부름요금은 요청하신 위치로 차량을 가져다드리기위한 서비스 요금으로 대여시간에 따라 요금이 상이합니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스반납지변경] 예약 시, 반납장소의 상세 안내는 어떻게 하나요?', '주차장 환경, 주차구역 등 반납할 장소에 대한 상세위치는 예약 시가 아닌 운행 종료 후 바로반납 시 확인란에 작성해주세요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '내비, 블박 등 차량 옵션이 궁금해요!', '모빌의 차량에는 내비게이션, 블랙박스, 하이패스, 와이파이가 장착되어 있습니다. 단, 카니발 프레스티지 차량의 경우 내비게이션이 포함되어있지 않습니다. 예약 완료 후 모빌 앱에서 예약하신 차량의 정보의 및 이용 방법을 확인할 수 있으며, 모빌 블로그나 모빌 앱에서도 차량 정보를 확인할 수 있습니다. ■ 예약 단계에서 차량 정보 확인 방법 모빌 앱에서 예약 시간 및 차량 선택 ▷ 차량손해면책 상품 선택 ▷ 차량 이미지 위의 […] ▷ [차량 이용방법 살펴보기]', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '딱 10분을 남겨두고 반납했어요. 바로반납 혜택이 제공이 되나요?', '바로반납 혜택은 대여시간 30분 초과, 대여 종료시간 10분 이전 건에 대하여 적용됩니다. 바로반납 크레딧에 대한 자세한 내용은 아래 공지사항을 참고해주세요.', 'https://m.socar.kr/cs/notice/586');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '바로반납 혜택이 아직 들어오지 않았어요!', '바로반납 혜택은 크레딧으로 지급되며 약 1시간정도 소요될 수 있습니다. 단, 미결제 요금이 존재하는 경우 제공이 보류됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '편도나 부름서비스의 경우에도 바로반납 혜택이 적용되나요?', '부름·부름편도 이용으로 인한 부가서비스 요금은 바로반납 혜택에 포함되지 않으나 해당 예약건의 대여요금은 바로반납 혜택 대상에 포함됩니다. 바로반납 크레딧에 대한 자세한 내용은 아래 공지사항을 참고해주세요.', 'https://m.socar.kr/cs/notice/586');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '잔액부족으로 결제가 이루어지지 않은 경우에도 바로반납을 할 경우 혜택을 받을 수 있나요?', '바로반납 시, 미결제요금이 있다면 바로반납 혜택 지급이 보류됩니다. 단, 14일 이내에 미결제요금을 결제 완료되면 바로반납 혜택이 지급됩니다. 바로반납 크레딧에 대한 자세한 내용은 아래 공지사항을 참고해주세요.', 'https://m.socar.kr/cs/notice/586');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '바로반납으로 받은 혜택의 유효기간은 언제까지 인가요?', '바로반납 크레딧의 유효기간은 지급된 시점으로부터 180일입니다. 바로반납 크레딧에 대한 자세한 내용은 아래 공지사항을 참고해주세요.', 'https://m.socar.kr/cs/notice/586');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스] 차량 중 일부 차종(벤츠C200)을 예약할 수 없어요.', '부름서비스 이용가능 차종 중 벤츠C200, 지프 레니게이드, 그랜저HG, 스팅어 차량은 만 26세 이상 회원님에 한하여 예약이 가능합니다. 스타렉스와 카니발 11인승 차종은 1종보통 면허 소지자에 한하여 예약이 가능합니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스] 이용가능지역은 어디인가요?', '부름서비스는 일부 지역을 제외한 대부분 지역에서 이용이 가능합니다. 예약 시 부름예약핀이 있다면 설정 가능해요. 부름서비스반납지 변경 서비스(부름서비스편도)는 부름가능한 모든 지역으로 자유롭게 반납지 설정이 가능합니다. (내륙­-제주간 제외) 부름서비스차량 예약 후 예약 단계해서 [반납지변경하기]를 통해 설정하실 수 있어요.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스] 이용시 이용요금은 어떻게 되나요?', '부름서비스 이용요금은 다음과 같습니다. - 부름요금, 대여요금, 보험료, 주행요금, 하이패스요금(실비 정산) 부름요금은 요청하신 위치로 차량을 가져다드리기위한 서비스 요금입니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '[부름서비스] 이용은 언제 가능한가요?', '지역별로 부름서비스 이용가능한 시간이 다를 수 있으나, 대부분 지역에서 24시간 상시 부름서비스및 반납이 가능합니다. 원하시는 지역에서 부름서비스예약을 설정하고, 예약단계에서 확인하세요!', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '주유 비용은 어떻게 계산하나요?', '차량 이용 중 주유가 필요할 때에는 가까운 주유소에 들러 주유한 후, 주유는 차량 내부에 비치된 ''주유전용카드''로 결제해주세요. 결제하신 주유비는 쏘친님에게 부담되지 않으며, 반납 완료 후에 주행거리를 기준으로 주행요금이 산정되어 등록하신 결제카드로 결제됩니다. ※ 개인카드 및 현금으로 주유비를 결제하시면 환불이 불가합니다. ※ 주행요금은 유가변동에 따라 탄력적으로 운영됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '이용 요금 계산은 어떻게 하나요?', '이용요금은 10분단위로 계산되며 모빌의 이용요금은 대여요금, 보험료, 주행요금으로 구성되어 있습니다. 차종에 따른 시간당 요금은 홈페이지내 요금 안내 페이지를 참고해주세요. (하이패스 별도 과금) 대여요금 및 보험료는 예약하심과 동시에 등록하신 결제카드로 자동 결제되며, 주행요금은 차량 이용 후 실제 주행거리에 따라 부과됩니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '이용 요금은 어떻게 지불해야 하나요?', '예약과 동시에 대여료와 보험료가 회원정보에 등록하신 본인 명의 결제카드를 통해 결제됩니다. 또한 차량 반납 후에는 주행요금과 사용하신 하이패스 등의 기타 서비스 요금이 결제됩니다. 단, 하이패스 요금은 도로교통공단 사정에 따라 반납 후 과금되기까지 시일이 소요될 수 있으니 참고 부탁드립니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '예약 사항을 휴대폰으로 확인할 수 있나요?', '모빌 예약 사항은 스마트폰의 모빌앱에서 확인이 가능합니다. - 모빌앱 ▷ 하단 `마이페이지`', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '예약 가능한 횟수가 정해져 있나요?', '예약은 최대 5건까지 가능하며 동일시간 중복예약은 불가능합니다. 예약 상황을 실시간으로 확인 하신후 이용 부탁드립니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '최소 예약 시간과 최대 예약 시간은 얼마인가요?', '모빌는 최소 30분부터 예약이 가능하며, 이후부터는 10분 단위로 예약 연장이 가능합니다. 최대 예약 가능한 기간은 14일입니다.', NULL);
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '예약 취소 시 수수료가 발생되나요?', '예약 취소 시 취소 수수료가 발생될 수 있으며 예약 취소한 시점과 대여기간에 따라 취소 수수료가 상이 합니다. 취소 시점에 따른 수수료 확인은 아래의 링크를 통해 확인해주세요.', 'https://m.socar.kr/cs/notice/1096');
INSERT INTO faq_items (faq_category, faq_question, faq_answer, faq_link)
VALUES ('예약/결제문의', '예약한 시간보다 차량 반납이 늦어지는 경우 어떻게 되나요?', '반납이 늦어질 경우, 반납 시간 전에 꼭 반납 연장을 해주세요. 1. 모빌앱 연장 - 모빌앱 ▷ 스마트키 ▷ 반납 연장 을 통해 반납 시간 연장이 가능합니다. 2. TCS(매립형 단말기) 연장 - TCS 메인 화면의 ''예약 연장'' 을 통해 반납 시간 연장이 가능합니다. 단, 연장하시려는 시간이 다른 예약과 중첩되는 경우 연장 처리가 불가하며 반납 시간을 초과하여 임의로 차량을 이용할 경우 페널티가 과금 됩니다. ※ 반납 지연 페널티 안내 - 반납 10분 이상 30분 미만 : 페널티 1만원 및 지연 서비스 요금 - 반납 30분 이상 지연 시 : 페널티 1만원 및 지연 서비스 요금 2배 부과', NULL);