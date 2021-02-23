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

    local name = unit.name --유닛의 이름

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


--2.0v

    --네코의 테이블

    item = {
        name = {}, 
        level = {}, 
        id = {}
    }
    item.name[1] = "검"
    item.level[1] = 1
    item.id[1] = 1

    item.name[2] = "강력한검"
    item.level[2] = 3
    item.id[2] = 2

    item.name[3] = "최강의검"
    item.level[3] = 10
    item.id[3] = 3

    --이런식으로 가상의 아이템을 만들어줄수도있다.
    --이렇게 테이블로 만들면 직관적으로 알수있고 추후 가상의 아이템의 랩과 이름을 변경해줄수있다.

    --if문

    local name = unit.name --유닛의 이름 이것을 가지고 와보자

    --비매너 유저의 이름은 냄주라고 치자
    function CheckName()
        local name = unit.name
        if name == "냄주" then
            --구문
            --print("비매너 유저가 나타났다!")
        end
    end

    --이런식으로 if문과 유닛의 정보로 간단한 스크립트 제작이 완료된것이다.

    --냄주라는 분은 저자의 친구다.

    --function,함수


        --네코에서 지원되는함수

            --콜백함수

                Server.damageCallback = function(a, b, damage, skillDataID, critical, visible)
                    --이함수는 값을 알고 꼭 리턴을 해줘야한다 아니면 damage가 안들어가게된다

                    return damage - b.def--리턴한다 때린 대미지 - 적의 방어력
                end

            --그외 함수
                function onAddItem(unit, titem)
                    print(unit.name)
                    --유저가 아이템을 얻었을때 실행되는 함수다
                    --얻은 아이템의 titem 형식의 값 유닛을 알수있다
                end
            
                Server.onAddItem.Add(onAddItem)

            --네코 지원함수는 추가될예정

        --그냥 만드는함수
            function a(c)--a말고 딴것들도 가능하다.
                print(c+5)        
            end

            a(5)
            -->>10






--Once this course is still being added, it seems to have taught you how to use the basic neko script. In the next update, we will give you a practical script example using the for statement.



