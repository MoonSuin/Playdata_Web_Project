--------------------------------------------------------
--  파일이 생성됨 - 수요일-8월-18-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence RECIPE_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."RECIPE_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."RECIPE_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_USER_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."SEQ_USERS_USER_NO"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table RECIPE_BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RECIPE_BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"DISEASE" VARCHAR2(100 BYTE), 
	"INGREDIENTS" VARCHAR2(1000 BYTE), 
	"NUTRIENT" VARCHAR2(1000 BYTE), 
	"IMAGE_FILE" VARCHAR2(100 BYTE), 
	"WRITER" VARCHAR2(100 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RECIPE_REPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RECIPE_REPLY" 
   (	"BNO" NUMBER, 
	"RNO" NUMBER, 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"WRITER" VARCHAR2(50 BYTE), 
	"REGDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."USERS" 
   (	"USER_NO" NUMBER(10,0), 
	"DISEASE_NO" VARCHAR2(6 BYTE), 
	"SUBSCRIBE_NO" NUMBER(6,0), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(20 BYTE), 
	"LOGIN_TYPE" VARCHAR2(10 BYTE), 
	"USER_NAME" VARCHAR2(10 BYTE), 
	"PHONE" VARCHAR2(13 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"BIRTH" VARCHAR2(10 BYTE), 
	"HEIGHT" VARCHAR2(3 BYTE), 
	"WEIGHT" VARCHAR2(3 BYTE), 
	"SUBSCRIBE_YN" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ENTRY_DATE" DATE DEFAULT SYSDATE, 
	"LAST_UPDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View EMP_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."EMP_VIEW" ("DEPTNO", "DNAME", "EMPNO", "ENAME") AS 
  select emp.deptno, dept.dname, emp.empno, emp.ename
from emp, dept
where emp.deptno = dept.deptno
with read only
;
REM INSERTING into SCOTT.RECIPE_BOARD
SET DEFINE OFF;
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (1,'단호박 제육볶음','단호박을 넣어 은은한 천연 단맛을 내고, 나트륨은 줄인 제육볶음으로 든든한 하루를 보내보세요','1.돼지고기는 핏물을 제거하고 된장육수에 살짝 데친다.<br><br>2.데친 돼지고기에 양념장을 넣고 재운다.<br><br>3.단호박은 도톰하게 썰고, 죽순, 양파는 채 썰고, 대파는 어슷 썰고, 마른 표고버섯은 불린 뒤 먹기 좋은 크기로 썬다.<br><br>4.팬에 올리브유를 두르고 재운 돼지고기와 된장육수를 넣고 볶는다.<br><br>5.반 정도 익었을 때 단호박과 죽순, 양파, 대파, 표고버섯, 다진 마늘을 넣고 볶는다.<br><br>6.부순 참깨와 참기름을 넣어 마무리한다.','질병칸','돼지고기, 단호박, 죽순, 양파, 대파, 표고, 간장, 고추장, 고춧가루, 된장, 다진 마늘, 참깨, 참기름','1인분 기준 : 열량 268.6kcal, 탄수화물 10.5g, 단백질 13.4g, 지방 7.89g, 나트륨 444.3mg','001_단호박_제육볶음.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (2,'토마토 백김치','토마토의 상쾌한 맛과 백김치의 깔끔한 맛이 어우러져 더위에 지친 입맛을 돋웁니다.','1.토마토는 윗부분을 자르고 속을 파낸다.<br><br>2.오이는 소금에 깨끗이 씻는다.<br><br>3.소금을 팬에 볶은 후 배추를 절인다.<br><br>4.절인 배추에 오이와 무를 넣고 돌돌만다.<br><br>5.4를 속을 파낸 토마토 안에 넣는다.<br><br>6.5번을 통에 담아 소금 국물을 붓고 양파와 마늘 생각을 넣는다.','질병칸','토마토, 배춧잎, 오이, 무, 양파, 마늘, 생강, 소금','1인분 기준 : 열량 76kcal, 탄수화물 15.1g, 단백질 3.5g, 지방 0.2g, 나트륨 278.5mg','002_토마토_백김치.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (3,'버섯 콩가루 덮밥','버섯 콩가루 덮밥은 국물낸 다시마를 채썰어 넣어 모두 먹도록 함으로써 무기질과 식이섬유를 함께 섭취할 수 있는 건강음식입니다','1.물 1컵에 건다시마를 넣고 끓여 다시마물 ⅔컵을 만들고 다시마는 건져 채썬다.<br><br>2.느타리버섯, 표고버섯은 씻은 후 4cm 길이로 가늘게 찢고 채썬다.<br><br>3.피망과 당근은 씻어 4cm 길이로 곱게 채 썰고, 양파는 다지고, 파는 어슷썰기 한다.<br><br>4.돼지고기는 양파, 다진 마늘, 후춧가루를 넣고 재운 후 볶는다.<br><br>5.느타리버섯, 표고버섯, 당근, 피망, 다시마, 파를 넣고 함께 볶는다.<br><br>6.다시마물 네 숟가락에 전분과 콩가루를 풀어 5에 넣고 나머지 다시마물도 넣는다.<br><br>7.6의 재료가 걸죽해지면 굴소스를 넣어 간을 하고 통깨를 뿌려 밥과 함께 곁들인다.','질병칸','쌀, 느타리버섯, 돼지등심, 표고버섯, 피망, 당근, 양파, 굴소스, 콩가루, 건다시마, 파, 다진 마늘, 전분, 참기름, 통깨, 후춧가루','1인분 기준 : 열량 325.9kcal, 탄수화물 56.6g, 단백질 11.1g, 지방 5.7g, 나트륨 337.8mg','003_버섯_콩가루_덮밥.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (4,'버섯을 넣은 가지 라자냐','가지에 풍부하게 들어있는 안토시아닌은 동맥경화, 고혈압 예방 효과가 있습니다. 또한 칼륨도 풍부하여 이뇨 작용을 돕고 노폐물 배출에도 도움을 줍니다.','1.가지는 세로로 칼집을 넣어 소금을 뿌려두고, 표고버섯과 느타리버섯, 새송이버섯도 먹기좋게 잘라둔다.<br><br>2.돼지고기를 곱게 다져 볶아 준비해 놓는다.<br><br>3.오븐용기에 돼지고기, 가지, 1번에서 잘라둔 버섯, 토마토소스를 넣는다.<br><br>4.치즈, 빵가루 순으로 얹어 180℃로 예열된 오븐에서 윗면이 노릇한 색이 나도록 구워낸다.','질병칸','돼지고기, 느타리버섯, 표고버섯, 새송이버섯, 가지, 파마산치즈, 모짜렐라치즈, 토마토소스, 빵가루','1인분 기준 : 열량 136kcal, 탄수화물 14.8g, 단백질 8.1g, 지방 5.1g, 나트륨 243mg','004_버섯을_넣은_가지_라자냐.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (5,'수박 화채','수박의 주성분은 수분으로 이뇨작용 효과까지 있어 몸이 자주 붓는 부종 환자와 다이어트 중인 사람에게 효과적인 과일입니다.','1.찹쌀가루에 뜨거운 물을 넣어 익반죽해 빚어 끓는 물에 삶은 후 차게 식힌다.<br><br>2.수박은 씨를 제거한 후 곱게 갈아 차게 식힌다.<br><br>3.그릇에 갈은 수박을 담고 경단을 넣는다.','질병칸','찹쌀가루, 물, 수박, 팥, 설탕','1인분 기준 : 열량 126kcal, 탄수화물 28.3g, 단백질 3.4g, 지방 0.7g, 나트륨 2.0mg','005_수박_화채.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (6,'옥수수 감자 샐러드','옥수수는 비타민 B1, B2, E와 칼륨, 철분 등의 무기질이 풍부하게 들어있습니다.','1.토막낸 감자, 완두콩, 옥수수를 김이 오른 찜통에 10 ~ 15분간 찐다.<br><br>2.달걀은 삶아 흰자는 굵게 다지고 노른자는 체에 곱게 내린다.<br><br>3.감자를 으깨놓고, 파프리카는 옥수수알 크기로 썬다.<br><br>4.마요네즈, 호상요구르트, 달걀노른자, 소금을 넣어 샐러드 드레싱을 만들어 다같이 곁들인다.','질병칸','감자, 달걀, 옥수수, 완두콩, 파프리카, 마요네즈, 호상요구르트, 소금','1인분 기준 : 열량 248.6kcal, 탄수화물 14.8g, 단백질 10.9g, 지방 16.1g, 나트륨 212.7mg','006_옥수수_감자_샐러드.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (7,'전복영양밥과 부추양념장','전복에 다량 함유된 타우린은 콜레스테롤 함량을 낮춰줄 뿐 아니라 간장의 해독장용에 탁월한 효능이 있습니다.','1.물 2컵에 건다시마를 넣어 다시마국물을 1컵 반 정도를 낸다.<br><br>2.우린 다시마와 전복살은 잘게 다진다.<br><br>3.표고버섯, 양송이버섯, 당근은 0.5cm ~ 0.7cm 가량의 정육면체 모양으로 썬다.<br><br>4.쌀은 씻어 2와 3의 재료를 넣고 다시마국물 1컵 반을 부어 30분 정도 불린 후 밥을 짓는다.<br><br>5.부추와 실파는 다지고 참기름, 다진 마늘, 통깨, 다시마국물, 간장을 넣어 양념장을 만든다.','질병칸','쌀, 전복, 양송이버섯, 표고버섯, 당근, 건다시마, 물','1인분 기준 : 열량 387kcal, 탄수화물 77.5g, 단백질 12.8g, 지방 1.9g, 나트륨 450mg','007_전복영양밥과 부추양념장.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (8,'도라지 검은깨 튀김','도라지 속의 사포닌은 혈당을 낮추고 콜레스테롤 수치를 떨어뜨리는 데에도 도움을 줄 수 있습니다. ','1.통 도라지는 껍질을 벗기고 0.3cm 두께로 썬다.<br><br>2.손질한 도라지는 소금물에 잠시 담근 후 차가운 물에 헹궈 물기를 닦는다. (3% 소금물)<br><br>3.그릇에 찹쌀가루와 튀김가루, 물을 넣어 농도를 맞춘 후 검은깨를 섞는다.<br><br>4.도라지에 튀김옷을 입혀 170℃의 식용유에 튀긴다.<br><br>5.간장 1g, 식초 2g, 설탕 2g, 물 3g, 고추냉이 0.5g을 넣어 저나트륨 간장소스를 만들어준다.<br><br>6.5에서 만든 저나트륨 간장소스를 만든 후 같이 곁들인다.','질병칸','도라지, 찹쌀가루, 튀김가루, 검은깨, 식용유, 간장, 식초, 설탕, 물, 고추냉이','1인분 기준 : 열량 134.6kcal, 탄수화물 23.9g, 단백질 2.4g, 지방 4g, 나트륨 163mg','008_도라지_검은깨_튀김.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (9,'복숭아 샤벳','복숭아는 클로로젠산을 비롯해 카로티노이드 일종인 제아잔틴과 루테인 등 각종 항산화 성분이 들어있어 체내 유해 활성 산소를 제거해 질병 위험을 낮추고 노화를 방지합니다.','1.복숭아는 씨를 발라내 두께 0.5cm 가량만 남기고, 속을 파낸다.<br><br>2.복숭아와 식혜, 설탕시럽을 넣고 믹서기에 굵게 간다.<br><br>3.1을 1시간마다 숟가락으로 긁어주면서 5 ~ 6시간 정도 냉동실에서 얼린다.<br><br>4.속을 파낸 복숭아도 냉동실에서 얼려 샤벳 그릇으로 사용한다.<br><br>5.2의 복숭아 식혜 샤벳이 얼면 떠서 얼린 복숭아 그릇에 담고 민트로 장식한다.','질병칸','복숭아, 식혜, 설탕시럽, 민트','1인분 기준 : 열량 92.8kcal, 탄수화물 24.3g, 단백질 1.6g, 지방 0.3g, 나트륨 7mg','009_복숭아_샤벳.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (10,'돼지고기 숙주덮밥','돼지고기에는 소고기보다 비타민 B1이 약 10배 넘게 들어있습니다. 부위마다 지방량이 다르므로 기름기가 적은 담백한 부위를 고르세요','1.다시마 육수에 가쓰오부시를 넣어 10분간 우린 후 체에 거른다.<br><br>2.돼지고기는 소금, 후춧가루로 밑간 후 굽고, 채소는 채 썬다.<br><br>3.육수에 간장을 넣고 한소끔 끓이다가 양파와 버섯을 넣는다.<br><br>4.육수에 달걀물을 풀고, 그릇에 밥과 돼지고기, 숙주를 담은 후 그릇에 육수를 자작하게 부어준다.','질병칸','돼지고기, 밥, 숙주, 표고버섯, 팽이버섯, 양파, 달걀, 쪽파, 무, 다시마, 가쓰오부시','1인분 기준 : 열량 497.2kcal, 탄수화물 95.6g, 단백질 18.1g, 지방 4.7g, 나트륨 143.4mg','010_돼지고기_숙주덮밥.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (11,'치커리 샐러드와 올리브 마늘 소스','치커리를 육류와 함께 섭취하면 치커리의 산뜻한 맛으로 입맛을 돋우고 섬유소의 섭취를 늘릴 수 있으며 동맹경화를 예방하는데 도움이 됩니다.','1.마늘은 다진 후 올리브유 2작은술, 식초 1작은술, 석탕 1작은술과 잘 저어 올리브 마늘 소스를 만든다.<br><br>2.치커리는 한 입 크기로 자르고, 적채, 양파, 당근은 곱게 채 썬다.<br><br>3.접시에 치커리, 적양배추, 양파, 당근을 담고 1에서 만든 올리브마늘 소스를 뿌린다.','질병칸','치커리, 적채, 양파, 당근, 올리브유, 식초, 설탕, 마늘','1인분 기준 : 열량 170kcal, 탄수화물 13g, 단백질 3g, 지방 12g, 나트륨 74mg','011_치커리_샐러드와_올리브_마늘_소스.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (12,'무알콜 배·라임 모히또','배에는 사포닌, 루테올린, 안토잔틴 등이 풍부하게 들어 있습니다. 이 성분은 특히 기관지에 좋습니다.','1.라임을 반으로 잘라 즙을 짠다.<br><br>2.라임즙, 배, 애플민트, 올리고당, 탄산수를 넣고 믹서로 간다.<br><br>3.잔에 담고 애플민트 잎으로 장식한다.','질병칸','배, 라임, 탄산수, 애플민트, 올리고당','1인분 기준 : 열량 102.7kcal, 탄수화물 24.7g, 단백질 0.8g, 지방 0.1g, 나트륨 16.2mg','012_무알콜_배·라임_모히또.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (13,'대하 마늘 볶음밥','대하는 키토산이 풍부한 건강 식품입니다. 키토산은 지방의 침착을 방지하고 혈액 내 콜레스테롤 수치를 낮추는 역할도 합니다.','1.새우는 내장을 제거하고 껍질을 벗겨 깨끗이 씻는다.<br><br>2.당근, 양파, 파는 다진다.<br><br>3.팬에 기름을 두르고 채소와 마늘을 넣고 볶다가 밥과 새우, 간장을 넣고 보슬보슬하게 볶는다.','질병칸','대하, 쌀, 당근, 갰잎, 양파, 숙주, 대추, 청고추, 파, 마늘, 생강, 간장, 식용유','1인분 기준 : 열량 441.1kcal, 탄수화물 68g, 단백질 18.6g, 지방 10.5g, 나트륨 261.2mg','013_대하_마늘_볶음밥.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (14,'고등어 찜','고등어는 EPA와 DHA가 매우 풍부하게 들어있습니다.','1.다시마 육수를 낸 후 양조간장 1 큰 술, 다시마 5g, 생강즙 ½ 작은 술, 다진 마늘 ½ 작은 술, 다진 청양고추 1 큰 술, 레몬즙 1 큰 술, 식초 1 큰 술, 설탕 2 작은 술, 후추를 넣어 소스를 만들어 둔다.<br><br>2.고등어는 생강즙, 술, 레몬즙으로 재워둔다.<br><br>3.김이 오른 찜통에 고등어, 파, 생강편을 올려 5분간 찐다.','질병칸','고등어, 대파, 생강, 양조간장, 다시마, 생강즙, 다진 마늘, 청양고추, 레몬즙, 식초, 설탕, 후추','1인분 기준 : 열량 128.5kcal, 탄수화물 3.7g, 단백질 6.9g, 지방 4g, 나트륨 154.6mg','014_고등어_찜.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (15,'단호박 푸딩','단호박은 풍부한 비타민과 무기질을 가지고 있습니다. 부드러운 푸딩으로 만들어 보세요.','1.단호박은 익기 쉽도록 토막 내어 찐다.<br><br>2.찐 단호박은 뜨거울 때 으깬다.<br><br>3.2의 재료에 우유, 달걀노른자, 꿀을 넣어 잘 섞는다.<br><br>4.김이 오른 찜통에 넣고 10 ~ 15분간 찐다.','질병칸','단호박, 우유, 달걀노른자, 꿀','1인분 기준 : 열량 143.4kcal, 탄수화물 10.5g, 단백질 6.9g, 지방 8.6g, 나트륨 55mg','015_단호박_푸딩.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (16,'황태 된장 누룽지죽','황태는 고단백, 저지방 식품으로 영양가가 높아 신진 대사를 활성화 시키는 고단백 영양 식품입니다.','1.누룽지를 만들고, 다시마는 물(4컵)에 우린다.<br><br>2.황태포는 물기를 짜고 국간장, 다진 마늘, 참기름을 넣고 조물조물 무친다.<br><br>3.냄비에 참기름을 둘러 황태포를 넣어 볶은 뒤 다시마 물을 부어 끓인다.<br><br>4.끓어오르면 된장을 풀고 누룽지를 넣어 살짝 풀어지도록 끓인다.','질병칸','밥, 다시마, 황태포, 쪽파, 국간장, 다진 마늘, 참기름, 된장','1인분 기준 : 열량 405.6kcal, 탄수화물 53.6g, 단백질 23.1g, 지방 9.8g, 섬유소 3.1g','016_황태_된장_누룽지죽.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (17,'새송이버섯 들깨탕','새송이버섯은 칼로리가 매우 낮고 섬유소와 수분이 풍부해서 포만감을 주어 다이어트에도 좋습니다.','1.버섯, 무, 쪽파 등 3 ~ 4cm 크기로 썰고, 고추는 어슷하게 썬다.<br><br>2.소고기는 청주, 국간장, 다진 마늘, 참기름에 버무려 밑간 한다.<br><br>3.달군 냄비에 참기름을 두르고 소고기, 무를 볶고 다시마와 물(4컵)을 부어 센 불에 끓이고, 끓어오르면 새송이버섯을 넣어 중간불로 줄인다.<br><br>4.다시마를 건지고 국간장, 다진 마늘, 소금, 들깨가루를 넣고 끓인다.<br><br>5.다시 한 번 끓어오르면 쪽파, 고추를 넣고 1분 뒤 불을 끈다.','질병칸','새송이버섯, 무, 쪽파, 고추, 소고기, 청주, 국간장, 다진 마늘, 참기름, 다시마, 소금, 들깨가루','1인분 기준 : 열량 205.2kcal, 탄수화물 11.3g, 단백질 10.9g, 지방 12.4g, 섬유소 3.4g','017_새송이버섯_들깨탕.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (18,'대추 소스 냉채','대추 드레싱을 사용하여 냉체를 만들어보세요.','1.대추와 오이는 길게 반 갈라 어슷 썬 뒤, 오이는 설탕과 소금에 버무려 10분간 절인 뒤 가볍게 물기를 짠다.<br><br>2.끓는 물에 소금과 닭가슴살을 넣어 삶은 뒤 굵게 찢는다.<br><br>3.숙주도 40초간 데쳐 찬물에 헹군 뒤 물기를 짠다.<br><br>4.믹서에 대추 3개와 간장 1 큰 술, 식초 2 큰 술, 참깨 2 큰 술, 올리고당 1.5 큰 술, 마요네즈 4 큰 술을 넣어 곱게 간 뒤 모든 재료와 버무린다.','질병칸','대추, 닭가슴살, 숙주, 오이, 설탕, 소금, 간장, 식초, 참깨, 올리고당, 마요네즈','1인분 기준 : 열량 270.5kcal, 탄수화물 13.7g, 단백질 19.4g, 지방 16g, 섬유소 2.6g','018_대추_소스_냉채.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (19,'바지락 비빔밥','바지락은 철이 풍부하게 들어있어 빈혈 예방에 좋습니다.','1.밥은 고슬고슬하게 짓고, 양파와 파프리카는 채 썰고 미나리도 썬다.<br><br>2.설탕 ½ 작은 술, 고춧가루 1 큰 술, 간장 1 큰 술, 매실액 1 큰 술, 고추장 2 큰 술, 참기름 ½ 큰 술, 참깨를 넣어 양념장을 만든다.<br><br>3.냄비에 해감된 바지락과 물(2컵)을 붓고 뚜껑을 덮어 중간 불에서 입이 벌어질 떄까지 익힌 후, 살만 발라낸다.<br><br>4.바지락, 채소, 2에서 만든 양념장을 함께 버무려 바지락 무침을 만든 후 밥 위에 얹는다.','질병칸','쌀, 양파, 파프리카, 미나리, 바지락, 설탕, 고춧가루, 간장, 매실액, 고추장, 참기름, 참깨,','1인분 기준 : 열량 469.1kcal, 탄수화물 90.9g, 단백질 13.7g, 지방 6g, 섬유소 5.1g','019_바지락_비빔밥.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (20,'단호박 갈치 조림','갈치는 리닌, 페닐알라린, 메티오닌 등 필수 아미노산이 고루 함유된 단백질 공급식품으로 특히 라이신 함량이 높아 성장기 어린이 발육에 좋습니다.','1.단호박은 손질 후 2cm 두께로 썰고, 양파, 대파, 홍고추도 썰어놓는다.<br><br>2.냄비에 물(1½컵)과 단호박을 넣어 센 불에 끓인다.<br><br>3.설탕 ½ 작은 술, 고춧가루 2 큰 술, 다진 마늘 ½ 큰 술, 생강즙 1 작은 술, 간장 2 큰 술, 고추장 ½ 큰 술을 넣고 양념장을 만든다.<br><br>4.끓어오르면 양파, 고사리, 갈치, 3에서 만든 양념장을 넣어 중간 불로 끓인다.<br><br>5.국물을 끼얹어가며 졸이다가 국물이 자작해지면 대파, 홍고추를 얹고 2분간 더 끓인다.','질병칸','단호박, 갈치, 양파, 고사리, 대파, 홍고추, 설탕, 고춧가루, 다진 마늘, 생강즙, 간장, 고추장','1인분 기준 : 열량 168.8kcal, 탄수화물 16.7g, 단백질 14.1g, 지방 6.3g, 섬유소 3.5g','020_단호박_갈치_조림.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (21,'생강 대추차','생강의 진저올, 쇼가올은 혈액순환을 활성화하고 혈압과 체온을 정상화해 수족 냉증을 개선하고, 혈관 내 콜레스테롤을 배출하여 성인병을 예방하는 데 효과적입니다.','1.생강은 흐르는 물에 씻은 뒤 숟가락으로 긁어 껍질을 제거한다.<br><br>2.대추는 식촛물(물 4컨 + 식초 2 큰 술)에 흔들어 씻고 체에 받친 뒤 마른 행주로 닦는다.<br><br>3.생강은 채 썰고, 대추도 돌려 깍아 씨를 제거해 채 썬다.<br><br>4.유리병에 채 썬 재료를 담고 재료가 잠길 정도로 꿀을 부어 1주일간 실온에서 숙성한 뒤, 뜨거운 물에 숙성한 청을 넣어 마신다.','질병칸','생강, 대추, 식초, 꿀','1인분 기준 : 열량 23.2kcal, 탄수화물 6.2g, 단백질 0.1g, 지방 0g, 섬유소 0.3g','021_생강_대추차.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (22,'무장아찌 굴밥','굴은 철분과 아연의 함량이 많이 빈혈 예방과 스태미나에 좋은 식재료입니다.','1.무장아찌는 얇게 채 썰고, 홍고추와 청양고추는 씨를 발라낸 뒤 작게 다진다.<br><br>2.채 썬 무장아찌는 참기름에 밑간하고 굴은 흐르는 물에 하나씩 씻어 준비한다.<br><br>3.밥솥에 불린 쌀과 물을 넣은 뒤 굴을 올려 밥을 짓는다.<br><br>4.다진 홍고추, 청양고추와 설탕 1 작은 술, 간장 3 큰 술, 물 1 큰 술, 참기름 1 큰 술, 다진 파를 넣고 섞어 간장 양념장을 만든다.<br><br>5.지어진 밥에 밑간한 무장아찌를 넣어 한 번 더 섞고, 4에서 만든 간장 양념장을 곁들여 마무리한다.','질병칸','무장아찌, 굴, 쌀, 물, 홍고추, 청양고추, 참기름, 설탕, 간장, 참기름, 다진 파','1인분 기준 : 열량 547.6kcal, 탄수화물 98.1g, 단백질 13.5g, 지방 9.9g, 섬유소 2.4g','022_무장아찌_굴밥.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (23,'곶감 무말랭이 무침','곶감 무말랭이 무침은 비타민과 섬유소가 풍부하고 곶감의 달콥한 자연당을 이용하여 설탕의 사용량을 줄인 반찬입니다.','1.무말랭이와 고춧잎은 각각 물에 담가 1시간 정도 불린 뒤 조물조물 주물러가며 3번 정도 불에 헹궈 물기를 짠다.<br><br>2.설탕 1 큰 술, 고춧가루 4 큰 술, 간장 2 큰 술, 까나리액젓 1 큰 술, 고추장 1 큰 술, 매실액 2 큰 술, 다진 마늘 1 큰 술, 부순 참깨 1 큰 술을 섞어 양념장을 만든다.<br><br>3.곶감은 꼭지와 속씨를 제거한 뒤 굵게 채 썬다.<br><br>4.볼에 2에서 만든 양념장과 무말랭이, 고춧잎을 넣고 조물조물 무친 뒤 곶감을 넣어 버무리고 참기름을 넣고 한 번 더 섞은 뒤 반나절간 익힌다.','질병칸','무말랭이, 마른 고춧잎, 곶감, 설탕, 고춧가루, 간장, 까나리액젓, 고추장, 매실액, 다진 마늘, 참깨, 참기름','1인분 기준 : 열량 218.6kcal, 탄수화물 38.3g, 단백질 4.8g, 지방 8.3g, 섬유소 9.8g','023_곶감_무말랭이_무침.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (24,'더덕 요거트 불고기 샐러드','더덕에는 다량의 사포닌이 함유되어 있어 혈관 질환과 암 예방에 도움이 되는 효능을 가지고 있습니다.','1.샐러드 채소는 한 입 크기로 뜯고, 양파와 파프리카는 곱게 채 썬다.<br><br>2.설탕 1 큰 술, 전분 1 작은 술, 간장 1.5 큰 술, 맛술 1 큰 술, 다진 마늘 0.5 큰 술, 후춧가루 약간을 섞어 불고기 양념장을 만든다.<br><br>3.불고기용 소고기는 2에서 만든 양념장에 버무려 센 불로 달군팬에 식용유를 두른 뒤 넣고 젓가락으로 흔들어가며 바싹 볶아 건진다.<br><br>4.더덕 1뿌리, 플레이 요거트 1팩(80g), 마요네즈 2 큰 술, 꿀 1 큰 술, 소금 약간을 섞어 더덕 요거트 소스를 만든다.<br><br>5.4에서 만든 더덕 요거트 소스는 믹서에 갈아 고루 섞는다.<br><br>6.그릇에 채소와 불고기를 담고 더덕 요거트 소스를 끼얹어 마무리한다.','질병칸','샐러드 채소, 양파, 파프리카, 소고기, 식용유, 설탕, 전분, 간장, 맛술, 다진 마늘, 후룻가루, 더덕, 플레인 요거트, 마요네즈, 꿀, 소금','1인분 기준 : 열량 358.7kcal, 탄수화물 35.8g, 단백질 18.7g, 지방 17.2g, 섬유소 4.5g','024_더덕_요거트_불고기_샐러드.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (25,'고사리전','고사리는 칼슘과 인이 풍부하게 함유되어 있어 피부와 점막을 보호해 피부미용에 좋고, 머리를 맑게 해주며, 치아와 뼈를 튼튼하게 해주는 고마운 채소입니다.','1.삶은 고사리는 3 ~ 4 등분하고, 양파 당근, 쪽파는 채 썰고, 고추는 어슷하게 썬다.<br><br>2.설탕 1 작은 술, 간장 1 큰 술, 맛술 1 큰 술, 들기름 1 큰 술을 섞어 밑양념을 만든다.<br><br>3.핏물을 제거한 소고기와 고사리는 섞어 2에서 만든 밑양념에 버무린다.<br><br>4.볼에 달걀(2개), 물(½컵), 소금(약간)을 고루 섞은 뒤 부침가루, 고사리, 소고기, 양파, 당근, 쪽파, 고추를 넣고 버무린다.<br><br>5.고춧가루 약간, 간장 1 큰 술, 식초 1 큰 술, 물 1 큰 술, 참깨 약간을 섞어 초간장을 만든다.<br><br>6.식용유를 두른 팬을 중간 불에 올린 뒤 반죽을 올려 앞뒤로 노릇하게 구워 5에서 만든 초간장과 곁들여 마무리한다.','질병칸','고사리, 양파, 당근, 쪽파, 소고기, 달걀, 부침가루, 청고추, 홍고추, 소금, 식용유, 설탕, 간장, 맛술, 들기름, 고춧가루, 식초, 물, 참깨','1인분 기준 : 열량 375kcal, 탄수화물 29g, 단백질 14.7g, 지방 22.1g, 섬유소 5.2g','025_고사리전.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (26,'대추죽','대추는 철분과 칼슘이 풍부하게 등러있는 따뜻한 성질의 식품으로, 위를 편안하게 해주는 효능이 있습니다.','1.찹쌀 ½컵, 맵쌀 1컵은 깨끗이 씻은 뒤 물에 담가 1시간 이상 불린다. 대추는 씻은 뒤 돌려 깍아 속씨를 제거한 뒤 2 ~ 3 등분 한다.<br><br>2.냄비에 대추를 넣고 푹 잠길 정도의 물을 붓고 대추가 푹 으깨질 정도로 삶는다.<br><br>3.냄비에 불린 찹쌀, 맵쌀과 5배의 물을 붓고 중간 불에 올려 바닥이 눌어붙지 않게 중간 중간 저어가며 끓인다.<br><br>4.부드럽게 퍼지면 불을 꺼 핸드믹서로 곱게 간 뒤 소금, 설탕으로 간을 하고 그릇에 담아 잣가루를 올려 마무리한다.','질병칸','찹쌀, 맵쌀, 대추, 잣가루, 소금, 설탕,','1인분 기준 : 열량 450.2kcal, 탄수화물 80.4g, 단백질 8.8g, 지방 12.2g, 섬유소 5.5g','026_대추죽.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (27,'봄동 두부 무침','봄동은 베타카로틴, 칼륨, 인 등의 무기질이 풍부한 채소입니다.','1.두부는 도톰하게 납작 썰고, 봄동도 비슷한 크기로 썬다.<br><br>2.양파와 당근은 채 썰고, 홍고추는 어슷 썬다.<br><br>3.끓는 물(3컵)에 소금과 두부를 넣어 데쳐 건진다.<br><br>4.고춧가루 1 큰 술, 간장 ½ 큰 술, 액젓 ½ 큰 술, 매실액 2 큰 술, 참기름 1 큰 술, 참깨 약간을 섞어 양념장을 만든다.<br><br>5.4에서 만든 양념장에 모든 재료를 넣고 버무린다.','질병칸','두부, 봄동, 양파, 당근, 홍고추, 소금, 고춧가루, 간장, 액젓, 매실액, 참기름, 참깨','1인분 기준 : 열량 171.3kcal, 탄수화물 14g, 단백질 9.5g, 지방 10.9g, 섬유소 5.2g','027_봄동_두부_무침.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (28,'깻잎 소고기 쌈밥','깻잎은 철분을 다량 함유하고 있어 빈혈예방 및 성장발달에 도움을 주며, 꺳잎에 풍부한 칼슘, 무기질, 비타민이 소고기의 부족한 영양을 채워줍니다.','1.양파와 당근은 잘게 다지고, 중간 불로 달군 팬에 다진 소고리를 넣어 볶은 뒤 손질한 채소를 넣고 더 볶는다.<br><br>2.끓는 물에 깻잎을 10초간 데친 뒤 찬물에 헹궈 편다.<br><br>3.볶은 재료와 밥, 소금 ⅓ 작은 술, 참깨 1 큰 술을 넣어 고루 섞은 뒤 동그랗게 빚는다.<br><br>4.깻잎에 밥을 올리고 쌈장을 조금 찍어 올린 뒤 깻잎을 포개어 마무리한다.','질병칸','소고기, 밥, 깻잎, 양파, 당근, 소금, 참깨, 참기름, 쌈장','1인분 기준 : 열량 360.6kcal, 탄수화물 52.5g, 단백질 12.2g, 지방 13.1g, 섬유소 2.6g','028_깻잎_소고기_쌈밥.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (29,'양배추 볶음밥','양배추는 위 건강을 돕는데 특히 효과가 있으며, 암 예방, 혈액순환, 해독작용, 변비 개선 등의 효능이 있는 채소입니다.','1.양배추와 당근은 곱게 채 썰고, 마늘은 납작썰기, 대파는 송송 썰어준다.<br><br>2.중약불로 달군 팬에 식용유 2 큰 술을 두른 뒤 마늘과 대파, 당근, 양배추 순으로 넣고 소금 약간, 후춧가루 약간을 뿌려가며 볶는다.<br><br>3.미지근한 밥(2공기)을 넣어 고슬고슬해질 때까지 볶아 약간의 소금으로 간한다.<br><br>4.다른 팬을 중간 불로 달궈 식용유 1 큰 술을 두른 뒤 달걀을 스크램블로 익힌 후 볶음밥에 스크램블을 섞어 그릇에 담아 마무리한다.','질병칸','양배추, 마늘, 대파, 식용유, 밥, 달걀, 당근, 소금, 후춧가루','1인분 기준 : 열량 599.1kcal, 탄수화물 92.6g, 단백질 14.9g, 지방 22.7g, 섬유소 8.8g','029_양배추_볶음밥.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (30,'콩가루 냉이 된장국','냉이는 단백질과 무기질, 비타민 A, B1, C가 풍부해 피로회복과 춘곤증에 좋습니다.','1.냄비에 육수 재료를 넣어 30분간 끓인 뒤 멸치와 다시마를 건져낸다.<br><br>2.냉이는 흐르는 물에 깨끗이 씻어 준비한다. 대파는 송송 썬다.<br><br>3.냉이를 콩가루에 버무린다.<br><br>4.육수가 끓어오르면 콩가루 묻힌 냉이를 넣어 3분간 끓인 후 대파를 넣고 마무리한다.','질병칸','냉이, 콩가루, 대파, 물, 멸치, 다시마, 된장','1인분 기준 : 열량 92.9kcal, 탄수화물 8.6g, 단백질 8.4g, 지방 4.1g, 섬유소 4.5g','030_콩가루_냉이_된장국.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (31,'두부 소보로 청경채 볶음','두부는 콜레스테롤을 낮추고 소화흡수를 도와주어 동맥경화 예방에 도움을 주는 고단백 식품입니다.','1.두부는 칼의 옆면으로 으깬 뒤 면포로 물기를 꼭 짠다. 청경채는 세로로 4등분 한다.<br><br>2.마른 팬에 으깬 두부를 넣어 고슬고슬 해질때까지 중간불로 볶다가 설탕 ½ 큰 술, 굴소스 1 큰 술, 다진 마늘 1 작은 술, 약간의 볶은 깨를 넣고 간이 배도록 볶아 건진다.<br><br>3.센 불로 달군 팬에 식용유를 두른 뒤 청경채를 넣고 소금, 후춧가루를 뿌려가며 볶는다.<br><br>4.두부 소보로를 넣고 조금 더 볶다가 참기름을 둘러 완성한다.','질병칸','두부, 청경채, 식용유, 소금, 후춧가루, 참기름, 설탕, 굴소스, 다진 마늘, 볶은 깨','1인분 기준 : 열량 197.8kcal, 탄수화물 5g, 단백질 8.4g, 지방 15.8g, 섬유소 6.1g','031_두부_소보로_청경채_볶음.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (32,'소고기 머위순 들깨 볶음','머위순은 칼슘이 다량 함유되어 있어 신체 저항력을 높이고, 뼈를 건강하게 하여 골다공증을 예방하는 효능이 있습니다.','1.머위순은 손질해 깨끗이 씻은 뒤 끓는 소금물에 넣어 30초간 데치고 찬물에 헹궈 물기를 빼 먹기 좋은 크기로 썬다.<br><br>2.소고기는 키친타월에 받쳐 핏물을 뺀 뒤 한 입 크기로 썰어 밑간한다.<br><br>3.중간 불로 달군 팬에 식용유를 둘러 소고리를 넣고 볶는다.<br><br>4.고기색이 변하면 양념과 머위순을 넣고 고루 섞어 2분간 볶아낸다.','질병칸','머위순, 소고기, 식용유, 소금, 물, 청주, 후춧가루, 설탕, 간장, 참기름, 들깨가루','1인분 기준 : 열량 393.6kcal, 탄수화물 9.5g, 단백질 15.8g, 지방 31.3g, 섬유소 2.5g','032_소고기_머위순_들깨_볶음.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (33,'풋마늘 불고기','풋마늘은 생김새가 대파와 비슷하지만, 덜 여문 마늘의 어린 잎줄기로, 봄철에 입맛을 돋우는 채소 중 하나입니다.','1.간장 4 큰 술, 설탕 ½ 큰 술, 배즙 ⅔ 컵, 참기름 1 큰 술, 볶은 깨 ½ 작은 술을 섞어 불고기 양념장을 만든다.<br><br>2.불고기용 소고기는 키친타월에 올려 핏물을 제거해둔다.<br><br>3.양파는 채 썰고, 풋마늘은 비슷한 길이로 썬다.<br><br>4.팬에 양파와 풋마늘을 깔고 불고기용 소고기를 얹는다.<br><br>5.1에서 만든 양념장을 부어 중간불로 볶아낸다.','질병칸','소고기, 풋마늘, 양파, 간장, 설탕, 배즙, 참기름, 볶은 깨','1인분 기준 : 열량 395kcal, 탄수화물 23.7g, 단백질 28.4g, 지방 21.3g, 섬유소 2.1g','033_풋마늘_불고기.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (34,'구운 찹쌀 주먹밥','소화가 잘되는 찹쌀밥을 사용하여 채소와 치즈를 듬뿍 넣은 구운 찹쌀주먹밥은 채소를 좋아하지 않는 아이들도 맛있게 먹을 수 있습니다.','1.찹쌀 1컵, 맵쌀 1컵 분량의 쌀로 밥을 짓고, 김치와 피망, 베이컨은 다진다.<br><br>2.팬에 참기름 1 큰 술을 두르고 김치, 베이컨, 피망 순으로 넣어 볶은 뒤 건져 한 김 식힌다.<br><br>3.한 김 식힌 찹쌀밥에 볶은 채소와 피자치즈, 참기름 1 큰 술, 간장, 깨를 넣고 버무린 후 4등분하여 모양낸 뒤 달걀물과 빵가루 순으로 옷을 입힌다.<br><br>4.오븐 팬에 올리고 식용유를 가볍게 두른 뒤 190도로 예열한 오븐에서 15분간 굽는다.','질병칸','찹쌀, 맵쌀, 김치, 피망, 베이컨, 피자치즈, 달걀, 빵가루, 참기름, 간장, 참깨, 식용유','1인분 기준 : 열량 590.4kcal, 탄수화물 90.6g, 단백질 17.7g, 지방 18.8g, 섬유소 4.1g','034_구운_찹쌀_주먹밥.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (35,'목이버섯전','목이버섯은 식이섬유소 함량이 매우 높아 비만 예방에 효과적이며, 칼슘 흡수를 돕는 영양소인 비타민D가 풍부하게 들어있습니다.','1.목이버섯은 따뜻한 물에 담가 30분간 불린다.<br><br>2.불린 목이버섯, 표고버섯, 당근, 양파는 잘게 다진다.<br><br>3.볼에 부침가루, 달걀, 들기름을 넣어 반죽을 만들고, 손질한 채소를 넣어 섞는다.<br><br>4.설탕 ½ 큰 술, 물 1 큰 술, 식초 2 큰 술, 간장 2 큰 술을 섞어 초간장을 만든다.<br><br>5.중간불로 달군 팬에 식용유를 두르고 반죽을 먹기 좋은 크기로 올린 후 노릇하게 구워 4에서 만든 초간장을 곁들인다.','질병칸','토마토,','1인분 기준 : 열량 248.7kcal, 탄수화물 30.7g, 단백질 9.5g, 지방 10.1g, 섬유소 6.5g','035_목이버섯전.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (36,'새싹 쭈꾸미 겨자무침','쭈꾸미는 DHA 등의 불포화 지방산을 다량 함유하고 있어 혈중 콜레스테롤 수치 감소 효과가 있으며, 피로회복에 좋은 타우린이 다량 함유되어 있습니다.','1.새싹채소는 흐르는 물에 깨끗이 씻고, 미나리, 양파, 파프리카는 얇게 채 썬다.<br><br>2.쭈꾸미는 내장을 제거하고 밀가루를 넣어 바락바락 손으로 주물러 이물질을 제거한다.<br><br>3.끓는 물(4컵)에 소금과 생강즙을 넣어 끓어오르면 불을 끈 뒤 쭈꾸미를 넣어 1분간 데치고 건져 찬물에 헹군다.<br><br>4.간장 2 큰 술, 식초 1 큰 술, 배즙 3 큰 술, 올리고당 3 큰 술, 연겨자 1 큰 술, 약간의 후춧가루를 섞어 겨자양념장을 만든다.<br><br>5.데친 쭈꾸미는 물기를 뺀 뒤 한 입 크기로 잘라 새싹채소, 미나리, 파프리카, 4에서 만든 겨자양념장을 넣어 가볍게 버무려낸다.','질병칸','새싹채소, 미나리, 양파, 쭈꾸미, 파프리카, 밀가루, 소금, 생강즙, 간장, 식초, 배즙, 올리고당, 연겨자, 후춧가루','1인분 기준 : 열량 169.4kcal, 탄수화물 23.6g, 단백질 13.2g, 지방 3.2g, 섬유소 4.6g','036_새싹_쭈꾸미_겨자무침.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (37,'가지 절임 샐러드','가지는 수분함량이 매우 높고 칼륨도 풍부하여 이뇨작용을 돕고 노폐물 배출에 좋은 채소입니다.','1.다시마는 찬물 ½컵에 담가 10분간 우려 건져놓고, 가지, 버섯, 방울토마토는 한 입 크기로 썬다.<br><br>2.중간 불로 달군 팬에 식용유를 둘러 버섯과 가지에 소금, 후춧가루로 간을 하며 볶은 뒤 한 김 식힌다.<br><br>3.다시마물에 간장 3 큰 술, 식초 1 큰 술, 설탕 1 작은 술을 넣고 섞어 간장 드레싱을 만든다..<br><br>4.버섯, 가지, 방울토마토에 3에서 만든 간장 드레싱을 부어 냉장실에 차게 둔다.','질병칸','가지, 새송이버섯, 방울토마토, 다시마, 식용유, 소금, 후춧가루, 간장, 식초, 설탕','1인분 기준 : 열량 112.2kcal, 탄수화물 13.3g, 단백질 4.1g, 지방 6.3g, 섬유소 4.9g','037_가지_절임_샐러드.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (38,'꿀 강낭콩 조림','강낭콩에는 단백질과 필수아니노산인 라이신, 로이신, 트립토판, 트레오닌 등이 풍부하여 성장기 어린이에게 좋습니다.','1.강낭콩 1과 ½컵은 씻어 찬물에 3시간 정도 담가 불린다.<br><br>2.냄비에 물 1과 ½컵과 함께 넣고 중간 불에 올려 끓어오르면 15분간 더 삶는다.<br><br>3.콩을 한 알 건져서 먹었을 때 서걱거리는 식감으로 익으면 흑설탕, 꿀, 간장을 넣고 간이 배도록 조린 뒤 참기름과 참깨를 넣어 마무리한다.','질병칸','강낭콩, 흑설탕, 꿀, 간장, 참기름, 참깨','1인분 기준 : 열량 232.4kcal, 탄수화물 38.8g, 단백질 8.9g, 지방 5g, 섬유소 11.1g','038_꿀_강낭콩_조림.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (39,'잡채 달걀전','달걀과 채소, 당면을 사용하여 맛있고 쉽게 만들 수 있습니다.','1.당면은 끓는 물에 넣고 5분간 삶아 찬물에 헹군 뒤 물기를 빼고 잘게 잘라 설탕 1 큰 술, 간장 1 큰 술, 맛술 2 큰 술에 버무린다.<br><br>2.양파와 당근은 채 썰고, 대파는 길게 반 가른 뒤 송송 썬다.<br><br>3.볼에 달걀을 깨 넣고 간장 1 큰 술, 소금 ½ 작은 술, 다진 마늘 ½ 큰 술, 약간의 후춧가루를 넣고 간한다. <br><br>4.밑간한 당면과 채 썬 채소를 넣고 섞는다.<br><br>5.고춧가루 1 작은 술, 물 1 큰 술, 식초 ½ 큰 술, 간장 ½ 큰 술을 섞어 초간장을 만든다.<br><br>6.식용유를 두른 팬에 달걀물을 올려 반달 모양으로 접어 노릇하게 구워 5에서 만든 초간장과 곁들여낸다.','질병칸','당면, 양파, 당근, 대파, 달걀, 식용유, 설탕, 간장, 맛술, 소금,다진 마늘, 후춧가루, 고춧가루, 물, 식초, 간장','1인분 기준 : 열량 307.5kcal, 탄수화물 22.3g, 단백질 10.3g, 지방 21.5g, 섬유소 4.3g','039_잡채_달걀전.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (40,'열무김치 불고기 비빔밥','열무김치를 이용하여 여름향기가 나는 맛있는 불고기 비빔밥을 만들어보세요.','1.설탕 2 큰 술, 물엿 1 큰 술, 맛술 1 큰 술, 간장 4 큰 술, 양파즙 1 큰 술, 다진 마늘 1 작은 술, 다진 대파 2 작은 술, 약간의 후춧가루, 참깨, 참기름을 섞어 불고기용 양념을 만든다.<br><br>2.불고기용 소고기에 1에서 만든 양념을 넣은 뒤 고루 버무려 15분간 냉장고에 넣어 숙성한다.<br><br>3.열무김치, 양파, 상추, 팽이버섯은 먹기 좋은 크기로 썬다.<br><br>4.중간 불로 달군 팬에 식용유 1 작은술을 둘러 달걀을 부쳐 그릇에 따로 담아둔다.<br><br>5.또 다른 팬에 식용유 1 큰 술을 둘러 양파, 팽이버섯, 고기 순으로 넣어 볶는다.<br><br>6.그릇에 밥을 담은 뒤 상추, 불고기, 열무김치, 달걀부침을 올려 마무리한다.','질병칸','소고기, 열무김치, 밥, 양파, 상추, 팽이버섯, 달걀, 식용유, 설탕, 물엿, 맛술, 간장, 후춧가루, 양파즙, 다진 마늘, 다진 대파, 참깨, 참기름','1인분 기준 : 열량 1006.kcal, 탄수화물 112.1g, 단백질 44.8g, 지방 39.2g, 섬유소 5g','040_열무김치_불고기_비빔밥.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (41,'애호박새우전','애호박은 소화기계통을 보호하고 기운을 더해준다고 합니다.','1.애호박은 1cm 두께로 썬 뒤 병뚜껑을 이용해 중앙의 속 씨를 제거하고, 고추는 길게 반 갈라 송송 썬다.<br><br>2.믹서에 새우살과 밑간 재료를 넣고 갈아 섞는다.<br><br>3.애호박은 새우살로 속을 채운 뒤 밀가루를 묻혀 털어낸 후 달걀을 풀어 옷을 입힌다.<br><br>4.식용유를 두른 팬에서 고추 고명을 올려 앞뒤로 노릇하게 구워 건진다.','질병칸','애호박, 새우살, 달걀, 밀가루, 소금, 식용유, 고추, 새우, 청주, 밀가루, 파, 후춧가루','1인분 기준 : 열량 252.5kcal, 탄수화물 19.7g, 단백질 7.9g, 지방 16g, 섬유소 2.9g','041_애호박새우전.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (42,'옥수수완자전','옥수수는 식이섬유소가 풍부해 변비 예방에 좋습니다.','1.다진 돼지고기는 키친 타월에 감싸 핏물을 제거한다. 두부는 면포에 짜 물기를 제거한 뒤 칼등으로 곱게 으깨고, 옥수수는 알갱이만 분리하고, 당근, 부추, 양파는 잘게 다진다.<br><br>2.볼에 돼지고기와 손질한 재료, 고기 양념을 넣어 끈기있게 치댄다.<br><br>3.치댄 반죽은 한입 크기의 동글납작한 모양으로 만든 후 밀가루, 달걀물 순으로 고루 입힌다.<br><br>4.기름에 달군 팬에 반죽 옷 입힌 완자를 올려 앞 뒤로 노릇하게 구워 마무리한다.','질병칸','돼지고기, 두부, 옥수수, 당근, 부추, 양파, 밀가루, 달걀물, 식용유, 간장, 소금, 후춧가루, 생강즙','1인분 기준 : 열량 478.9kcal, 탄수화물 25.4g, 단백질 29.7g, 지방 27.7g, 섬유소 6.5g','042_옥수수완자전.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (43,'들깨수제비','들깨에는 오메가-3 지방산 계열인 리놀렌산이 풍부하게 함유되어 있어 혈행개선, 혈압을 낮추고 면역력을 높이는 데 효과가 있습니다.','1.냄비에 멸치, 다시마와 물을 넣어 끓어오르면 다시마를 건지고 중간불로 15분간 끓인 뒤 채에 거른다.<br><br>2.밀가루에 들깻가루를 섞은 뒤 물을 부어 치대어 10분간 숙성시킨다.<br><br>3.육수에 국간장을 넣어 간을 맞춘 뒤 감자를 넣고 숙성한 반죽을 손으로 떼어 넣는다.<br><br>4.애호박, 당근을 넣어 1분간 더 끓이고 들깻가루와 찹쌀가루를 섞어 국물에 풀어 1분간 더 끓인다.','질병칸','밀가루, 들깨가루, 찹쌀가루, 애호박, 감자, 당근, 국간장, 멸치, 다시마','1인분 기준 : 열량 400.8kcal, 탄수화물 58.3g, 단백질 20.1g, 지방 13.5g, 섬유소 8.1g','043_들깨수제비.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (44,'연근블루베리피클','연근에는 비타민C와 비타민B 군이 풍부하게 들어있어 피로 회복과 각종 염증 완화, 눈의 충혈에 효과적이며, 피부를 윤택하게 해줍니다.','1.연근은 감자칼로 껍질을 벗겨 0.3cm 두께로 납작 썬다.<br><br>2.물에 식초와 연근을 넣어 30초간 데친 뒤 찬물에 헹궈 채에 밭쳐 물기를 뺀다.<br><br>3.냄비에 피클물 재료를 넣어 중간 불로 끓인다.<br><br>4.용기에 연근을 담고 팔팔 끓는 피클물을 붓는다.','질병칸','연근, 식초, 블루베리, 소금, 설탕, 식초, 물','1인분 기준 : 열량 233.5kcal, 탄수화물 57.4g, 단백질 4.1g, 지방 0.3g, 섬유소 4.9g','044_연근블루베리피클.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (45,'그린빈두부조림','그린빈은 열량은 낮고 비타민과 섬유소, 식물성 담백질이 풍부하게 함유되어 있으며 최중관리와 혈중 콜레스테롤 수치를 낮추는데 도움을 줍니다.','1.그린빈은 양 가장자리를 제거한 뒤 끓는 물에 소금과 함께 넣고 10초간 데쳐 건진다.<br><br>2.두부는 4등분한 뒤 키친타월에 밭쳐 물기를 제거한 다음 전분가루를 고루 묻힌다.<br><br>3.팬에 식용유를 두르고 중간 불로 달군 뒤 두부를 올려 노릇하게 구워 건진다.<br><br>4.팬에 조림장을 넣고 중간 불에서 바글바글 끓으면 중약불로 줄인 뒤 두부와 데친 그린빈을 넣고 조림장을 끼얹어가며 조린다.','질병칸','그린빈, 두부, 전분가루, 소금, 식용유, 흑설탕, 간장, 맛술, 청주, 생강즙, 다진 마늘, 참기름, 후춧가루','1인분 기준 : 열량 543.4kcal, 탄수화물 27g, 단백질 14.1g, 지방 39.9g, 섬유소 11.4g','045_그린빈두부조림.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (46,'기장 감자채전','기장에는 비타민 A와 B가 풍부하고, 감자에는 비타민 C와 칼륨이 풍부합니다. ','1.기장은 물에 불린 뒤 냄비에 물을 넣어 함께 10분간 끓인 뒤 채에 밭쳐 놓는다.<br><br>2.김치는 양념을 씻어 물기를 짠 뒤 양파와 곱게 채 썰고, 감자는 껍질을 제거해 얇게 채 썬다.<br><br>3.볼에 계란을 넣어 곱게 푼 뒤, 기장, 감자, 양파, 식용유, 부침가루를 넣어 고루 섞는다.<br><br>4.식용유는 팬 바닥에 얕게 깔리도록 넉넉히 두른 뒤 중간 불로 달궈 반죽을 올리고 앞뒤로 노릇하게 구워 마무리한다.','질병칸','기장, 배추김치, 감자, 양파, 계란, 부침가루, 식용유','1인분 기준 : 열량 700.4kcal, 탄수화물 66.6g, 단백질 16.7g, 지방 39.7g, 섬유소 5g','046_기장 감자채전.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (47,'소고기참나물겉절이','참나물은 베타카로틴의 함유량이 많아 체내의 노페물을 배출하고 콜레스테롤 수치를 낮춥니다.','1.참나물은 5~6cm 길이로 썬다.<br><br>2.소고기는 간장, 다진 마늘, 참기름, 참깨 후춧가루를 넣어 양념한다.<br><br>3.중간 불로 달군 팬에 식용유를 둘러 양념한 고기를 3분간 볶는다.<br><br>4.참나물에 고춧가루, 간장, 참기름, 참깨, 구운 고기를 넣어 고루 섞는다.','질병칸','소고기, 참나물, 식용유, 간장, 마늘, 참기름, 참깨, 후춧가루, 고춧가루, 간장','1인분 기준 : 열량 200.8kcal, 탄수화물 5.6g, 단백질 15.2g, 지방 16.1g, 섬유소 2.9g','047_소고기참나물겉절이.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (48,'율무밥크로켓','율무에는 비타민 B1, B2, 철분 등이 많이 함유되어 있어 신진대사를 돕는 작용을 하며, 지방이 축적되는 것을 예방합니다.','1.율무와 쌀은 씻은 뒤 물(2컵)을 붓고 밥을 짓는다. 피망과 양송이 버섯은 곱게 다진다.<br><br>2.다진 양송이 버섯은 식용유(1큰술)를 두른 팬에서 볶아 식힌다.<br><br>3.볼에 식용유를 제외한 양념과 율무밥을 넣어 섞은 뒤 볶은 양송이와 다진 피망, 옥수수 알갱이를 넣고 버무린다.<br><br>4.밥을 동글납작하게 편 뒤 모짜렐라 치즈를 넣고 동그랗게 빚어 밀가루, 계란물, 허브가루를 섞은 빵가루 순으로 튀김옷을 입힌 뒤 180도로 달군 식용유에 넣고 노릇하게 튀겨 건진다.','질병칸','율무, 쌀, 피망, 양송이, 버섯, 옥수수, 모짜렐라 치즈, 밀가루, 계란물, 빵가루, 허브가루, 식용유, 간장, 후춧가루, 참기름, 소금','1인분 기준 : 열량 894.2kcal, 탄수화물 162.6g, 단백질 34.1g, 지방 10.2g, 섬유소 9.7g','048_율무밥크로켓.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (49,'배 피클','배에는 비타민 C가 풍부하고 칼륨이 풍부해 나트륨 배출에 도움이 됩니다.','1.배는 껍질을 벗겨 막대모양으로 썬다.<br><br>2.오이는 동그란 모양을 살려 1cm 두께로 썬다.<br><br>3.소독한 유리 용기에 배와 오이를 차곡차곡 담는다.<br><br>4.냄비에 설탕, 식초 유자청, 물 1과 1/2컵을 부어 끓어오르면 2분간 더 끓여 피클물을 만든 후 3에 넣어 냉장 숙성하여 먹는다.','질병칸','배, 오이, 설탕, 식초, 유자청','1인분 기준 : 열량 235.9kcal, 탄수화물 24.1g, 단백질 7.4g, 지방 12g, 섬유소 3.4g','049_배 피클.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (50,'버섯강정','표고버섯은 항암물질과 혈압상승 억제 물질 등 각종 약리 작용 물질들이 발견되어 건강 증진식품으로 각광받고 있습니다.','1.표고버섯과 피망은 한입 크기로 썬 뒤 표고버섯에 소금 후춧가루를 뿌려 밑간한다.<br><br>2.계란, 찹쌀가루, 녹말가루를 함께 섞은 뒤 표고버섯에 고루 묻혀 160도로 예열한 식용류가 들어있는 팬에 넣어 바삭하게 튀긴다.<br><br>3.강정소스에 물(1/3)컵을 넣어 섞은 두 팬에 붓고 센 불에서 끓인다.<br><br>4.끓어 오르면 표고버섯튀김과 피망, 해바라기씨, 호박씨를 넣고 고루 볶는다.','질병칸','표고버섯, 피망, 계란, 찹쌀가루, 녹말가루, 식용유, 소금, 후춧가루, 해바라기씨, 호박씨, 간장, 맛술, 딸기잼, 고추장','1인분 기준 : 열량 235.9kcal, 탄수화물 24.1g, 단백질 7.4g, 지방 12g, 섬유소 3.4g','050_버섯강정.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (51,'콩카레','서리태에는 안토시아닌이 풍부해 노화방지에 좋으며 항균, 항암, 항염 작용에 효과가 있습니다.','1.콩은 물을 넉넉히 부어 8시간 불린 뒤 콩이 잠길만큼 물을 붓고 중간 불에서 20분 정도 삶는다. 양파, 당근, 연근은 껍질을 벗겨 사방 2cm로 깍둑 썬다.<br><br>2.중간불로 달군 냄비에 식용류를 둘러 콩, 당근 ,연근을 넣어 볶는다.<br><br>3.당근의 가장자리가 반투명해지면 양파를 넣고 물(2와 1/2컵을) 부어 8분간 끓인 뒤 끓어오르면 카레가루를 넣어 고루 푼 다음 2분간 더 끓인다.<br><br>4.꿀을 넣어 섞는다.','질병칸','검은콩, 양파, 당근, 연근, 카레가루, 꿀, 식용류','1인분 기준 : 열량 237.3kcal, 탄수화물 25.5g, 단백질 10.3g, 지방 12.3g, 섬유소 10.1g','051_콩카레.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (52,'배추잡채','배추와 채소를 듬뿍 넣어 덮밥으로 해드셔도 좋습니다.','1.배추는 2cm 포그올 채 썰고, 피망은 곱게 채 썬다.<br><br>2.약한 불로 달군 팬에 고추기름, 다진 마늘, 파를 넣어 볶고, 돼지고기와 청주를 넣고 센불로 올려 저어가며 볶는다.<br><br>3.고기의 핏물이 사라지면 우엉 채, 배춧잎, 피망, 새우살 순으로 넣어가며 볶는다.<br><br>4.재료가 고루 섞이면 간장, 굴소스, 설탕, 참기름, 후춧가루로 간하여 불을 끈다.','질병칸','배추, 피망, 우엉, 돼지고기, 새우살, 마늘, 대파, 고추기름, 청주, 간장, 굴소스, 설탕, 참기름, 후춧가루','1인분 기준 : 열량 452.2kcal, 탄수화물 16.6g, 단백질 19.9g, 지방 34.5g, 섬유소 4.9g','052_배추잡채.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (53,'단호박찹쌀전','단호박에는 베타카로틴이 풍부하여 눈 건강에 도움을 주고 풍부한 비타민과 무기질은 감기 예방에 효과가 있습니다.','1.단호박은 반으로 갈라 씨를 제거하고 작게 깍둑 썬 뒤, 전자레인지 용기에 담고 랩 또는 비닐을 덮어 전자레인지에 5분간 익힌 뒤 껍질을 벗겨 으깬다.<br><br>2.대추는 돌려 깎아 돌돌 말아 납작하게 썰어 꽃모양을 만든다.<br><br>3.으꺤 단호박에 찹쌀가루와 소금, 뜨거운 물을 조금씩 부어가며 익반죽한다.<br><br>4.중약불로 달군 팬에 식용유를 두른 뒤 반죽을 동글납작하게 빚어 얹고 앞뒤로 노릇하게 구워낸 뒤 대추와 호박씨를 올리고 조청을 곁들인다.','질병칸','단호박, 찹쌀가루, 소금, 대추, 식용유, 호박씨, 조청','1인분 기준 : 열량 548.2kcal, 탄수화물 100.5g, 단백질 10.1g, 지방 14.9g, 섬유소 3.6g','053_단호박찹쌀전.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (54,'알밤 채소 간장조림','밤은 단백질, 탄수화물, 기타 지방, 비타민 A, B, C, 칼륨이 풍부합니다.','1.밤, 당근, 표고버섯은 한입 크기로 썬다.<br><br>2.중간 불로 달군 팬에 식용유를 두른 뒤 밤, 당근, 표고버섯을 넣고 5분간 볶는다.<br><br>3.약불로 줄인 뒤 물, 설탕, 맛술, 간장을 넣어 뚜껑을 덮어 10분간 익힌다.<br><br>4.뚜껑을 열고 센 불로 올린 후 올리고당을 넣고 수분이 없을 때까지 볶는다.','질병칸','밤, 당근, 표고버섯, 식용유, 물, 설탕, 맛술, 간장, 올리고당','1인분 기준 : 열량 208.1kcal, 탄수화물 30.5g, 단백질 2.8g, 지방 8.4g, 섬유소 3.2g','054_알밤 채소 간장조림.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (55,'도토리묵볶이','도토리는 피로와 숙치해소에 좋고 체내 중금속 배출을 돕는  효과가 있습니다.','1.건도토리묵은 물에 불린 뒤 끓는 물에서 데쳐 건진다. 양파는 한입 크기로 썰고, 대파, 새송이버섯, 감자, 어묵은 한입 크기로 썬다.<br><br>2.팬에 식용유를 두른 뒤 감자를 넣고 중간 불에서 볶다가 양파를 넣어 볶는다.<br><br>3.양파가 반투명해지면 조림장과 데친 묵, 어묵, 새송이 버섯을 넣어 조린다.<br><br>4.대파를 넣어 살짝 볶은 뒤, 치즈를 얹고 뚜껑을 덮어 치즈를 녹인다.','질병칸','건도토리묵, 감자, 양파, 새송이버섯, 어묵, 대파, 모짜렐라치즈, 식용유, 설탕, 간장, 굴소스, 고추장, 다진마늘, 참기름, 물','1인분 기준 : 열량 569.2kcal, 탄수화물 61.1g, 단백질 22.4g, 지방 27.2g, 섬유소 4.7g','055_도토리묵볶이.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (56,'귤채소말이','라이스 페이퍼를 사용하여 맛있는 귤 채소말이를 만들어 보세요.','1.귤은 껍질을 까서 낱알로 뗴어두고 파프리카, 적양배추는 채 썰고, 청상추는 라이스페이퍼 절반 크기로 떼어둔다.<br><br>2.중간 불로 달군 팬에 훈제오리를 4~5분간 굽고 키친 타월에 받쳐 기름기를 뺀다.<br><br>3.라이스페이퍼는 따뜻한 물에 적신 뒤 접시에 편 후 청상추, 귤, 훈제오리 파프리카, 적양배추를 올려 양 옆을 접은 뒤 돌돌 만다.<br><br>4.귤은 껍질을 까 다지고, 고추는 송송 썬 뒤 나머지 귤소스 재료를 섞어 곁들인다.','질병칸','귤, 파프리카, 훈제오리, 적양배추, 청상추, 라이스페이퍼, 설탕, 식초, 까나리액젓, 홍고추, 청양고추','1인분 기준 : 열량 532.9kcal, 탄수화물 47g, 단백질 21.3g, 지방 29g, 섬유소 6.8g','056_귤채소말이.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (57,'잣셰이크','잣은 올레산, 리놀레산, 리놀렌산 등 불포화 지방산이 많아 피부를 윤택하게 하고 혈압을 내려주는 효과가 있습니다.','1.잣을 중간 불로 달궈진 마른 팬에 3분간 구워 식힌다.<br><br>2.믹서기에 잣과 호두, 미숫가루, 두유, 꿀을 넣어간다.<br><br>3.쉐이크를 잔에 담고 볶은 잣을 올려 마무리한다.','질병칸','잣, 호두, 미숫가루, 두유, 꿀','1인분 기준 : 열량 360.2kcal, 탄수화물 47.1g, 단백질 14.7g, 지방 13.7g, 섬유소 6.2g','057_잣셰이크.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (58,'포항초 사과 샐러드','해풍의 영향으로 적당한 염분이 함유된 포항초에 사과를 곁들여 맛을 냈습니다.','1.포항초는 세척하고 먹기 좋은 크기로 썰고, 양파, 파프리카는 잘게 다진다. 당근은 앏게 썰어주고, 사과는 채 썰어 설탕물에 담가둔다.<br><br>2.간장, 식초, 설탕, 양파, 파프리카를 섞어 오리엔탈 드레싱을 만든다.<br><br>3.포항초에 당근과 사과를 넣어 섞어준다.<br><br>4.샐러드에 오리엔탈 드레싱을 곁들여 낸다.','질병칸','포항초, 사과, 당근, 양파, 파프리카, 식초, 양조간장, 설탕','1인분 기준 : 열량 10.34kcal, 탄수화물 1.52g, 단백질 0.77g, 지방 0.13g, 나트륨 15.81 mg','058_포항초 사과 샐러드.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (59,'바지락 맑은국','국멸치, 건표고, 다시마를 이용한 육수로 유기산과 천연의 염분을 활용했습니다.','1.바지락은 이물질이 없도록 씻어 소금물에 해감한다. 무는 나박썰고, 고추와 실파는 어슷썬다.<br><br>2.냄비에 국멸치, 건표고, 다시마를 넣어 끓인 후 육수가 우러나면 채로 걸러낸다.<br><br>3.육수에 무를 넣고 끓이다가 바지락, 고추, 실파, 다진 마늘을 넣어 끓인다.<br><br>4.간장, 소금으로 간을 맞춰 완성한다.','질병칸','바지락, 무, 실파, 홍고추, 다진마늘, 국멸치, 건다시마, 건표고, 국간장, 물','1인분 기준 : 열량 11.20kcal, 탄수화물 1.33g, 단백질 1.27g, 지방 0.09g, 나트륨 73.72 mg','059_바지락 맑은국.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (60,'된장 숙성 저수분 수육','채소 자체의 수분으로 익혀 재료 본연의 맛을 살리고 염분 사용을 줄였습니다.','1.돈육 앞다리살에 칼집을 낸다. 된장, 생강가루, 다진 마늘, 통후추, 월계수잎을 섞어 놓는다.<br><br>2.칼집을 낸 돈육에 된장, 생강가루, 다진 마늘, 통후추, 월계수잎을 입혀 숙성한다.<br><br>3.양파와 대파는 먹기 좋게 썬 후 냄비의 밑 부분에 깔아준다.<br><br>4.숙성시킨 돈육을 올려 약 50분 정도 가열하여 익힌 후 먹기 좋게 썰어낸다.','질병칸','돼지고기, 양파, 대파, 된장, 통후추, 월계수잎, 생강가루, 다진 마늘','1인분 기준 : 열량 342.62kcal, 탄수화물 17.18g, 단백질 33.10g, 지방 15.72g, 나트륨 178.04 mg','060_된장 숙성 저수분 수육.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (61,'낙지 묵은지 콩나물국','묵은지를 씻어 짠맛을 줄이고, 콩나물을 넣어 시원한 맛을 더했습니다.','1.쌀뜨물과 국멸치로 육수를 우리고 멸치는 건져낸다. 낙지와 콩나물은 깨끗이 씻어 먹기 좋게 썰고 무는 나박썰고, 대파는 어슷썬다.<br><br>2.묵은지는 물에 헹구어 짠맛을 빼주고 기름을 두른 냄비에 볶아준다.<br><br>3.멸치육수에 묵은지, 낙지, 고춧가루, 무, 다진 마늘, 간장을 넣고 끓인다.<br><br>4.대파를 얹어 한소끔 끓여낸다.','질병칸','낙지, 묵은지, 콩나물, 무, 대파, 다진 마늘, 국멸치, 식용유, 간장, 쌀뜨물, 고춧가루','1인분 기준 : 열량 71.70kcal, 탄수화물 9.42g, 단백질 6.30g, 지방 0.99g, 나트륨 280.50 mg','061_낙지 묵은지 콩나물국.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (62,'청경채 김치','소금을 잘 흡수하는 배추 대신에 싱거운 채소인 청경채를 사용했습니다.','1.청경채는 줄기 부분에 칼집을 넣고, 소금을 뿌려 30~40분간 절인 후 씻어낸다.<br><br>2.냄비에 물, 찹쌀가루를 넣고 끓여 찹쌀풀을 만든 후 식힌다.<br><br>3.갈은 배, 찹쌀풀, 매실액, 고춧가루, 간장, 다진 마늘, 다진 생강을 섞어 양념장을 만든다.<br><br>4.절여진 청경채에 양념장을 고루 바른다.','질병칸','청경채, 배, 찹쌀 가루, 매실액, 고춧가루, 간장, 다진 마늘, 다진 생강, 소금','1인분 기준 : 열량 40.74kcal, 탄수화물 8.00g, 단백질 1.72g, 지방 0.21g, 나트륨 114.88 mg','062_청경채 김치.png','이택근',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (63,'통도라지 양념구이','배를 갈아 넣어 고추장 양념의 짠 맛을 줄였습니다.','1.통도라지는 껍질을 제거하고 30분간 소금물에 담궈 쓴맛을 제거한다.<br><br>2.통도라지를 반으로 갈라서 방망이로 두들겨 앏고 넓적하게 만든다.<br><br>3.갈은 배, 다진 마늘, 고추장, 간장, 참기름을 섞어 양념장을 만든다.<br><br>4.팬에 도라지를 구워 익히다가 양념장을 발라가며 약불에서 구워준 후 다진 쪽파와 통깨를 뿌린다.','질병칸','청경채, 배, 찹쌀 가루, 매실액, 고춧가루, 간장, 다진 마늘, 다진 생강, 소금','1인분 기준 : 열량 84.77kcal, 탄수화물 12.01g, 단백질 2.19g, 지방 3.11g, 나트륨 263.88 mg','063_통도라지 양념구이.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (64,'과일깍두기','소금에 절이지 않고 달콤한 과일로 깍두기를 만들었습니다.','1.배와 참외는 먹기 좋은 크기로 싹둑썬다. 실파는 송송 썬다.<br><br>2.새우젓, 마늘, 생강은 곱게 다져준다.<br><br>3.고춧가루, 새우젓, 마늘, 생강, 통깨를 버무려 양념장을 만든다.<br><br>4.먹기 직전에 배, 참외, 실파에 양념장을 넣어 버무린다.','질병칸','배, 참외, 고춧가루, 다진마늘, 새우젓, 생강, 실파, 통깨','1인분 기준 : 열량 15.53kcal, 탄수화물 3.61g, 단백질 0.17g, 지방 0.04g, 나트륨 16.85 mg','064_과일깍두기.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (65,'바지락매생이전','바지락과 매생이는 칼륨이 풍부하여 나트륨 배출에 도움을 줍니다.','1.매생이와 바지락살은 소금기를 없애기 위해 물에 여러 번 행군다.<br><br>2.튀김가루, 부침가루에 물을 조금씩 넣어가며 반죽을 만든다.<br><br>3.매생이를 잘게 다져 반죽에 섞어준다.<br><br>4.팬에 매생이 반죽과 바지락살, 홍고추를 얹어 노릇하게 구워준다.','질병칸','매생이, 바지락살, 부침가루, 튀김가루, 홍고추, 식용유','1인분 기준 : 열량 83.59kcal, 탄수화물 9.05g, 단백질 2.08g, 지방 4.34g, 나트륨 386.06 mg','065_바지락매생이전.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (66,'알록달록 연근튀김','건 새우를 갈아넣어 고소한 맛을 더하고 소금을 최소화 했습니다.','1.연근은 앏게 썰어 찬물에 담가 전분기를 제거한다.<br><br>2.시금치, 비트는 각각 믹서기에 갈거나 강판에 갈아 즙을 낸다.<br><br>3.튀김가루, 건새우, 물은 믹서기에 넣고 갈아준 뒤 반죽을 세개로 나눈다.<br><br>4.반죽에 2의 시금치, 비트, 카레가루를 각각 섞어 3가지 색의 반죽을 만든다. 연근에 전분가루를 묻히고 튀김옷을 입혀 바삭하게 튀겨낸다.','질병칸','연근, 비트, 시금치, 카레가루, 건새우, 전분, 튀김가루, 소금, 식용유, 물','1인분 기준 : 열량 66.85kcal, 탄수화물 10.20g, 단백질 1.11g, 지방 2.40g, 나트륨 13.39 mg','066_알록달록 연근튀김.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (67,'토마토 비빔국수','토마토로 비빔소스를 만들어 고추장의 사용을 줄여도 맛있게 먹을 수 있습니다.','1.삶은 달걀은 반으로 자르고, 양파는 채 썰어 찬물에 15분간 담가 매운 맛을 제거한 뒤 채에 밭쳐 물기를 빼놓는다.<br><br>2.믹서에 토마토, 고추장, 고춧가루, 꿀을 넣고 갈아 비빔소스를 만든다.<br><br>3.끓는 물에 쌀국수를 넣어 2분간 삶아준 뒤 찬물에 헹궈 채에 밭쳐 놓는다.<br><br>4.먹기 직전 그릇에 쌀국수와 비빔소스, 양파, 달걀을 얹어낸다.','질병칸','쌀국수면, 삶은 달걀, 토마토, 양파, 고추장, 고춧가루, 꿀','1인분 기준 : 열량 346kcal, 탄수화물 66.7g, 단백질 9.9g, 지방 3.0g, 나트륨 128.7 mg','067_토마토 비빔국수.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (68,'얼큰 콩나물 수제비','황태머리를 구워서 사용하면 나트륨이 적어도 맛있는 육수를 만들 수 있습니다. 맛있습니다','1.밀가루에 소금을 섞어 물과 함께 반죽한 뒤 숙성시킨다. 황태머리는 구운 뒤 찬물에 넣고 끓여 만든 육수를 채에 거른다.<br><br>2.냄비에 육수와 콩나물 전반 분량을 넣고 끓어오르면 고추장과 고춧가루를 풀어 끓인다.<br><br>3.숙성된 수제비 반죽을 밀어 끓는 물에 따로 삶아 건진다.<br><br>4.수제비와 나머지 콩나물을 넣고 한소끔 끓인다.','질병칸','콩나물, 황태머리, 고추장, 밀가루, 고춧가루, 소금','1인분 기준 : 열량 228.82kcal, 탄수화물 47.95g, 단백질 9.06g, 지방 0.09g, 나트륨 466.2 mg','068_얼큰 콩나물 수제비.png','kiyung',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (69,'돈불고기 파인애플볶음','파인애플을 넣어 간장을 적게 사용해도 풍미를 낼 수 있습니다.','1.돼지고기는 핏물을 제거하고, 양배추, 양파, 당근, 대파는 먹기 좋은 크기로 썬다. 파인애플 일부는 먹기 좋은 크기로 썰고 나머지는 믹서에 간다.<br><br>2.갈아놓은 파인애플과 설탕, 마늘, 참기름, 간장을 섞어 양념장을 만든다.<br><br>3.핏물을 제거한 돼지고기에 양념장을 섞어 재운다.<br><br>4.기름을 두른 팬에 양념한 돼지고기와 파인애플, 채소를 넣어 볶는다.','질병칸','돼지고기, 파인애플, 양배추, 양파, 당근, 대파, 설탕, 다진 마늘, 참기름, 간장','1인분 기준 : 열량 113.18kcal, 탄수화물 5.65g, 단백질 9.03g, 지방 6.05g, 나트륨 187.59 mg','069_돈불고기 파인애플볶음.png','이희원',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (70,'가지탕수육','가지는 칼로리가 낮고 수분이 많으며, 칼륨이 풍부하여 나트륨 배출에 도움을 줍니다.','1.돼지고기는 소금, 후춧가루로 밑간하고, 가지는 4등분해 가운데 칼집을 넣는다. 두부, 아삭이 고추는 잘게 다진다.<br><br>2.돼지고기에 다진 두부, 고추를 넣어 섞은 뒤 가지에 속을 채워 넣고 튀김가루를 묻힌다.<br><br>3.예열한 식용유에 7~8분간 뒤집어가며 노릇하게 튀긴다.<br><br>4.냄비에 간장, 올리고당, 식초, 전분, 물을 넣고 4분간 끓여 소스를 만든 뒤 튀긴 가지에 곁들여 낸다.','질병칸','돼지고기, 두부, 가지, 이삭이고추, 식용유, 간장, 올리고당, 식초, 전분, 튀김가루, 소금, 후춧가루','1인분 기준 : 열량 297.2kcal, 탄수화물 27.2g, 단백질 7.5g, 지방 17.6g, 나트륨 596.3 mg','070_가지탕수육.png','문수인',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (71,'홍합배춧국','홍합의 감칠맛과 야채로 시원한 맛의 채수를 만들어 재료 본연의 맛을 낼 수 있습니다.','1.배추와 무는 먹기 좋은 크기로 썰고 파와 홍고추는 어슷썬다. 끓는 물에 무와 배추를 넣고 끓인다.<br><br>2.무가 투명해지면 홍합을 넣어 끓이다가 홍합 입이 벌어지면 다진 마늘을 넣는다.<br><br>3.소금을 넣어 간을 한다.<br><br>4.어슷썬 파와 홍고추를 넣어 한소끔 끓여낸다.','질병칸','홍합, 배추, 무, 물, 다진마늘, 파, 홍고추, 소금','1인분 기준 : 열량 23.07kcal, 탄수화물 2.14g, 단백질 2.01g, 지방 0.72g, 나트륨 60.48 mg','071_홍합배춧국.png','이태규',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_BOARD (BNO,TITLE,DESCRIPTION,CONTENT,DISEASE,INGREDIENTS,NUTRIENT,IMAGE_FILE,WRITER,REGDATE) values (72,'들깨곤약냉채','풍미가 강한 들깨소스를 사용해 소금의 사용을 줄여도 맛있게 먹을 수 있습니다.','1.닭가슴살은 끓는 물에 7분간 삶아 건진 뒤 결대로 찢는다. 파프리카, 양파, 오이, 당근은 채썬다.<br><br>2.곤약면은 끓는 물에 살짝 데쳐 건진 뒤 찬물에 씻어 체에 밭쳐 물기를 제거한다.<br><br>3.들깻가루, 겨잣가루, 식초 올리고당, 소금, 간장을 섞어 들깨소스를 만든다.<br><br>4.곤약면에 삶은 닭가슴살, 채 썬 채소, 들깨소스를 넣어 버무려낸다','질병칸','닭가슴살, 곤약면, 파프리카, 양파, 오이, 당근, 들깻가루, 겨잣가루, 식초, 올리고당, 소금, 간장','1인분 기준 : 열량 124 kcal, 탄수화물 10.2g, 단백질 14.3g, 지방 2.9g, 나트륨 52.2 mg','072_들깨곤약냉채.png','이택근',to_date('21/08/16','RR/MM/DD'));
REM INSERTING into SCOTT.RECIPE_REPLY
SET DEFINE OFF;
Insert into SCOTT.RECIPE_REPLY (BNO,RNO,CONTENT,WRITER,REGDATE) values (10,1,'정말 유익한 레시피네요','김기영',to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.RECIPE_REPLY (BNO,RNO,CONTENT,WRITER,REGDATE) values (72,4,'다이어트에 좋을 것 같네요','kiyung',to_date('21/08/16','RR/MM/DD'));
REM INSERTING into SCOTT.USERS
SET DEFINE OFF;
Insert into SCOTT.USERS (USER_NO,DISEASE_NO,SUBSCRIBE_NO,USER_ID,USER_PW,LOGIN_TYPE,USER_NAME,PHONE,EMAIL,BIRTH,HEIGHT,WEIGHT,SUBSCRIBE_YN,ENTRY_DATE,LAST_UPDATE) values (1,'04',null,'user04','password04','G','장보고','010-1234-4000','user04@work.com','1990-01-01','180','80','N',to_date('21/08/13','RR/MM/DD'),null);
Insert into SCOTT.USERS (USER_NO,DISEASE_NO,SUBSCRIBE_NO,USER_ID,USER_PW,LOGIN_TYPE,USER_NAME,PHONE,EMAIL,BIRTH,HEIGHT,WEIGHT,SUBSCRIBE_YN,ENTRY_DATE,LAST_UPDATE) values (2,'00',null,'admin','admin1004','A','유관순','010-1234-0000','admin@work.com','1990-01-01','180','80','N',to_date('21/08/13','RR/MM/DD'),null);
Insert into SCOTT.USERS (USER_NO,DISEASE_NO,SUBSCRIBE_NO,USER_ID,USER_PW,LOGIN_TYPE,USER_NAME,PHONE,EMAIL,BIRTH,HEIGHT,WEIGHT,SUBSCRIBE_YN,ENTRY_DATE,LAST_UPDATE) values (4,'02',null,'kiyung','password01','G','김기영','01012341345','kiyungdev@gmail.com',null,'150','60','N',to_date('21/08/13','RR/MM/DD'),to_date('21/08/16','RR/MM/DD'));
Insert into SCOTT.USERS (USER_NO,DISEASE_NO,SUBSCRIBE_NO,USER_ID,USER_PW,LOGIN_TYPE,USER_NAME,PHONE,EMAIL,BIRTH,HEIGHT,WEIGHT,SUBSCRIBE_YN,ENTRY_DATE,LAST_UPDATE) values (23,'00',null,'kiyung2','pass2','G','김기영','01013241234','tester@','1999-09-01',null,null,'N',to_date('21/08/16','RR/MM/DD'),null);
--------------------------------------------------------
--  DDL for Index SYS_C007658
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007658" ON "SCOTT"."RECIPE_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007663
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007663" ON "SCOTT"."RECIPE_REPLY" ("BNO", "RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007581
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007581" ON "SCOTT"."USERS" ("USER_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007582
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007582" ON "SCOTT"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007583
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007583" ON "SCOTT"."USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RECIPE_BOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIPE_BOARD" ADD PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("NUTRIENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("INGREDIENTS" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("DISEASE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_BOARD" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECIPE_REPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIPE_REPLY" ADD PRIMARY KEY ("BNO", "RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."RECIPE_REPLY" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_REPLY" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_REPLY" MODIFY ("RNO" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."RECIPE_REPLY" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."USERS" ADD UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."USERS" ADD UNIQUE ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."USERS" ADD PRIMARY KEY ("USER_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."USERS" MODIFY ("LOGIN_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."USERS" MODIFY ("USER_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_REPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RECIPE_REPLY" ADD CONSTRAINT "RECIPE_REPLY_BNO" FOREIGN KEY ("BNO")
	  REFERENCES "SCOTT"."RECIPE_BOARD" ("BNO") ENABLE;
