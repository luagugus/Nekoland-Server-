-----------------------------English-------------------------------------------------------------------
--[[This script contains the server script syntax needed to make Nekoland.
From now on, the following comments may be in Korean, so it is recommended to use the translation.]]--

----------------------------korean----------------------------------------------------------------------
--[[이스크립트는 네코랜드 스크립트 개발에 필요한 서버스크립트 구문 예제 들이 포함되어있습니다.]]


--print,프린트(네코 서버에 string을 표시한다)
    print("안녕")

    print("Hello")


--user stat,유저의 정보

    local hp = unit.hp --유닛의 채력

    local mp = unit.mp -- 유닛의 마력

    local atk = unit.atk --유닛의 공격력

    local AGILITY = unit.agility --유닛의 민첩성

    local level = unit.level--유닛의 레벨

    local exp = unit.exp --유닛의 현재 경험치

    local magic_atk = unit.magic_atk --유닛의 마법 공격력

    --이것들로 말할수있다 저자가 모르는것도 있다.


--for .. do, 포문

    --포문은 정해진 만큼 반복하는것이다.

    for i=1, 5 do -- i가 5가될떄까지 반복한다 
        print(i)
    end

    --print(i) 이 구문을 넣어주게되면 결과값은

    -->>1
    -->>2
    -->>3
    -->>4
    -->>5

    --이런식으로 프린트 된다.

--일단 이강좌는 아직 추가중이다 여기는 기본적인 네코 스크립트의 사용방법을 알려준것 같다. 다음 업데이트에는 for문을 이용한 실용적인 스크립트 예제를 알려줄것이다.

--Once this course is still being added, it seems to have taught you how to use the basic neko script. In the next update, we will give you a practical script example using the for statement.



