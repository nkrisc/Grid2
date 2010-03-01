﻿local L =  LibStub:GetLibrary("AceLocale-3.0"):NewLocale("Grid2Options", "koKR")
if not L then return end

L["Debug"] = "디버그"
L["debugging"] = "디버깅"
L["Module debugging menu."] = "모듈 디버깅 메뉴를 설정합니다."

L["Show Tooltip"] = "툴팁 표시"
L["Show unit tooltip.  Choose 'Always', 'Never', or 'OOC'."] = "유닛 툴팁을 표시합니다. '항상', '안함' 또는 '비전투'을 선택합니다."
L["Always"] = "항상"
L["Never"] = "안함"
L["OOC"] = "비전투"

L["blink"] = "깜박임"
L["category"] = "목록"
L["frame"] = "창"
L["layout"] = "배치"
L["location"] = "위치"
L["indicator"] = "지시기"
L["status"] = "상태"

L["buff"] = "버프"
L["debuff"] = "디버프"

L["Icon"] = "아이콘"
L["Square"] = "네모"
L["Text"] = "문자"

L["Advanced"] = "고급"
L["Advanced options."] = "고급 옵션을 설정합니다."

L["Frame Width"] = "창 너비"
L["Adjust the width of each unit's frame."] = "각 유닛의 창 너비를 조정합니다."
L["Frame Height"] = "창 높이"
L["Adjust the height of each unit's frame."] = "각 유닛의 창 높이를 조정합니다."
L["Border Size"] = "테두리 크기"
L["Adjust the border of each unit's frame."] = "각 유닛의 창 테두리를 조정합니다."

L["Options for %s."] = "%s|1을;를; 위한 옵션을 설정합니다."
L["Toggle debugging for %s."] = "%s|1을;를; 위해 디버깅을 사용합니다."

L["Show Frame"] = "창 표시"
L["Sets when the Grid is visible: Choose 'Always', 'Grouped', or 'Raid'."] = "Grid 표시 설정: '항상', '파티' 또는 '공격대'를 선택합니다."
L["Always"] = "항상"
L["Grouped"] = "파티"
L["Raid"] = "공격대"

L["Layouts"] = "배치"
L["Layouts for each type of groups you're in."] = "당신이 속한 그룹 유형에 따라 배치합니다"
L["Solo Layout"] = "솔로잉 배치"
L["Select which layout to use for solo."] = "솔로잉에 사용하기 위한 배치를 선택합니다."
L["Party Layout"] = "파티 배치"
L["Select which layout to use for party."] = "파티에 사용하기 위한 배치를 선택합니다."
L["Raid Layout"] = "공격대 배치"
L["Raid 40 Layout"] = "40인 공격대 배치"
L["Select which layout to use for raid."] = "공격대에 사용하기 위한 배치를 선택합니다."
L["Heroic Raid Layout"] = "영웅 공격대 배치"
L["Select which layout to use for raid in heroic mode."] = "영웅 던전에 사용하기 위한 배치를 선택합니다."
L["Battleground Layout"] = "전장 배치"
L["Select which layout to use for battlegrounds."] = "전장에 사용하기 위한 배치를 선택합니다."
L["Arena Layout"] = "투기장 배치"
L["Select which layout to use for arenas."] = "투기장에 사용하기 위한 배치를 선택합니다."

L["Horizontal groups"] = "그룹 정렬"
L["Switch between horzontal/vertical groups."] = "그룹 표시 방법을 가로/세로로 변경합니다."
L["Clamped to screen"] = "화면에 고정"
L["Toggle whether to permit movement out of screen."] = "화면 밖으로 창이 나가지 않도록 사용합니다."
L["Frame lock"] = "창 고정"
L["Locks/unlocks the grid for movement."] = "배치 창을 고정하거나 이동시킵니다."
L["Click through the Grid Frame"] = "창을 통해 클릭"
L["Allows mouse click through the Grid Frame."] = "배치 창 위의 마우스 클릭을 허락합니다."

L["Display"] = "표시"
L["Padding"] = "패팅"
L["Adjust frame padding."] = "창 패팅을 조정합니다."
L["Spacing"] = "간격"
L["Adjust frame spacing."] = "창 간격을 조정합니다."
L["Scale"] = "크기"
L["Adjust Grid scale."] = "Grid 크기를 조정합니다."

L["Alpha"] = "투명도"
L["Border"] = "테두리"
L["Adjust border color and alpha."] = "테두리의 색상과 투명도를 조정합니다."
L["Background"] = "배경"
L["Adjust background color and alpha."] = "배경의 색상과 투명도를 조정합니다."

--role
L["MAIN_ASSIST"] = MAIN_ASSIST
L["MAIN_TANK"] = MAIN_TANK

--threat
L["Not Tanking"] = "방어전담 않함"
L["Higher threat than tank."] = "방어 전담을 하지 않습니다."
L["Insecurely Tanking"] = "위험한 방어전담"
L["Tanking without having highest threat."] = "가장 높은 위협 수준 가지지 않고 방어전담을 합니다."
L["Securely Tanking"] = "안전한 방어전담"
L["Tanking with highest threat."] = "가장 높은 위협 수준을 가지고 방어전담을 합니다."

L["Layout Anchor"] = "배치 위치"
L["Sets where Grid is anchored relative to the screen."] = "Grid의 화면 위치를 설정합니다."

L["CENTER"] = "중앙"
L["TOP"] = "상단"
L["BOTTOM"] = "하단"
L["LEFT"] = "좌측"
L["RIGHT"] = "우측"
L["TOPLEFT"] = "좌측 상단"
L["TOPRIGHT"] = "우측 상단"
L["BOTTOMLEFT"] = "좌측 하단"
L["BOTTOMRIGHT"] = "우측 하단"

L["corner-top-left"] = "모서리-좌측-상단"
L["corner-top-right"] = "모서리-우측-상단"
L["corner-bottom-left"] = "모서리-좌측-하단"
L["corner-bottom-right"] = "모서리-우측-하단"
L["side-left"] = "사이드-좌측"
L["side-left-top"] = "사이드-좌측-상단"
L["side-left-bottom"] = "사이드-좌측-하단"
L["side-right"] = "사이드-우측"
L["side-right-top"] = "사이드-우측-상단"
L["side-right-bottom"] = "사이드-우측-하단"
L["side-top"] = "사이드-상단"
L["side-top-left"] = "사이드-좌측-상단"
L["side-top-right"] = "사이드-우측-상단"
L["side-bottom"] = "사이드-하단"
L["side-bottom-left"] = "사이드-좌측-하단"
L["side-bottom-right"] = "사이드-우측-하단"
L["center"] = "중앙"
L["center-left"] = "중앙-좌측"
L["center-right"] = "중앙-우측"
L["center-top"] = "중앙- 상단"
L["center-bottom"] = "중앙-하단"

L["charmed"] = "현혹"
L["classcolor"] = "직업색상"
L["death"] = "죽음"
L["feign-death"] = "죽은척하기"
L["healing-impossible"] = "치유-불가"
L["healing-prevented"] = "치유-방해"
L["healing-reduced"] = "치유-감소"
L["heals-incoming"] = "치유-받음"
L["health"] = "생명력"
L["health-deficit"] = "결손-생명력"
L["health-low"] = "생명력-낮음"
L["lowmana"] = "마나낮음"
L["mana"] = "마나"
L["name"] = "이름"
L["offline"] = "오프라인"
L["pvp"] = "PvP"
L["range"] = "거리"
L["ready-check"] = "전투-준비"
L["target"] = "대상"
L["threat"] = "위협"
L["vehicle"] = "탈것"
L["voice"] = "음성"

L["Beast"] = "야수형"
L["Demon"] = "악마형"
L["Humanoid"] = "인간형"
L["Elemental"] = "정령형"

L["DEATHKNIGHT"] = "죽음의 기사"
L["DRUID"] = "드루이드"
L["HUNTER"] = "사냥꾼"
L["MAGE"] = "마법사"
L["PALADIN"] = "성기사"
L["PRIEST"] = "사제"
L["ROGUE"] = "도적"
L["SHAMAN"] = "주술사"
L["WARLOCK"] = "흑마법사"
L["WARRIOR"] = "전사"

--Account Layer
L["account"] = "계정"

--Class Layer
L["deathknight"] = true
L["druid"] = "드루이드"
L["hunter"] = true
L["mage"] = true
L["paladin"] = "성기사"
L["priest"] = "사제"
L["rogue"] = true
L["shaman"] = "주술사"
L["warlock"] = true
L["warrior"] = true

--Spec Layer
L["tree"] = "특성"
L["holy1"] = "신성1"
L["holy2"] = "신성2"
L["resto"] = "복원"

L["Layer"] = "계층"
L["Layer level.  Higher layers (like Class or Spec) supercede lower ones like Account."] = "Layer level.  Higher layers (like Class or Spec) supercede lower ones like Account."

L["Opacity"] = "투명도"
L["Set the opacity."] = "투명도를 설정합니다."

L["<CharacterOnlyString>"] = "<CharacterOnlyString>"
L["+"] = "+"
L["-"] = "-"
L["%d yards"] = "%d 미터"
L["Align Point"] = "포인트 정렬"
L["Align this point on the indicator"] = "지시기에 이 포인트를 정렬"
L["Align relative to"] = "정렬"
L["Align my align point relative to"] = "나의 상대 포인트에 정렬"
L["Available Statuses"] = "사용가능한 상태"
L["Available statuses you may add"] = "지시기에 당신이 추가할 수 있는 사용 가능 상태"
L["Blink Threshold"] = "깜박임 수치"
L["Blink Threshold at which to start blinking the status."] = "상태를 깜박이게 할 수치를 설정합니다."
L["Class Filter"] = "직업 필터"
L["Create a new category of statuses."] = "상태에 새로운 목록을 만듭니다."
L["Create a new indicator."] = "새로운 지시기를 만듭니다."
L["Create a new location for an indicator."] = "지시기의 새로운 위치를 만듭니다."
L["Create a new status."] = "새로운 상태를 만듭니다."
L["Current Statuses"] = "현재 상태"
L["Current statuses in order of priority"] = "우선 순위 지시기의 현재 상태"
L["Delete"] = "삭제"
L["Display status only if the buff is not active."] = "버프가 사라졌을 경우에만 상태에 표시합니다."
L["Display status only if the buff was cast by you."] = "당신이 버프를 시전했을 경우에만 상태에 표시합니다."
L["Down"] = "아래"
L["Location"] = "위치"
L["Move the status higher in priority"] = "우선 순위를 높은 상태로 움직입니다."
L["Move the status lower in priority"] = "우선 순위를 낮은 상태로 움직입니다."
L["Name"] = "이름"
L["Name of the new indicator"] = "새로운 지시기의 이름"
L["New Category"] = "새로운 목록"
L["New Indicator"] = "새로운 지시기"
L["New Location"] = "새로운 위치"
L["New Status"] = "새로운 상태"
L["Range"] = "거리"
L["Range in yards beyond which the status will be lost."] = "범위가 사정 거리 밖에 있으면 상태 정보를 가져 올수 없습니다."
L["Reset"] = "초기화"
L["Reset and ReloadUI."] = "초기화와 UI 재시작"
L["Reset Setup"] = "Reset Setup"
L["Reset current setup and ReloadUI."] = "Reset current setup and ReloadUI."
L["Reset Categories"] = "목록 초기화"
L["Reset categories to the default list."] = "목록을 기본값으로 되돌립니다."
L["Reset Indicators"] = "지시기 초기화"
L["Reset indicators to defaults."] = "지시기를 기본값으로 되돌립니다."
L["Reset Locations"] = "위치 초기화"
L["Reset locations to the default list."] = "기본 목록으로 위치를 되돌립니다."
L["Reset Statuses"] = "상태 초기화"
L["Reset statuses to defaults."] = "상태를 기본값으로 되돌립니다."
L["Reset to defaults."] = "기본값으로 되돌립니다."
L["Select statuses to display with the indicator"] = "지시기에 표시할 상태를 선택합니다."
L["Select the location of the indicator"] = "지시기의 위치를 선택합니다."
L["Show duration"] = "지속시간 표시"
L["Show if mine"] = "내것 표시"
L["Show if missing"] = "사라짐 표시"
L["Show on %s."] = "%s 표시"
L["Show status for the selected classes."] = "선택된 직업을 위해 상태에 표시합니다."
L["Show the time remaining."] = "남은 시간을 표시."
L["Threshold"] = "수치"
L["Threshold at which to activate the status."] = "상태를 활성화할 수치를 설정합니다."
L["Type"] = "형태"
L["Type of indicator"] = "지시기 형태"
L["Type of indicator to create"] = "만들 지시기의 형태를 설정합니다."
L["Up"] = "위"
L["X Offset"] = "X 간격"
L["X - Horizontal Offset"] = "X - 가로 간격"
L["Y Offset"] = "Y 간격"
L["Y - Vertical Offset"] = "Y - 세로 간격"

L["Group Anchor"] = "그룹 위치"
L["Position and Anchor"] = "위치와 앵커"
L["Sets where groups are anchored relative to the layout frame."] = "그룹 배치 창의 위치를 설정합니다."
L["Resets the layout frame's position and anchor."] = "배경 창의 위치와 앵커를 초기화 합니다."

L["Center Text Length"] = "중앙 문자 길이"
L["Number of characters to show on Center Text indicator."] = "중앙 문자 지시기 위에 표시할 캐릭터의 숫자를 설정합니다."
L["Font Size"] = "글꼴 크기"
L["Adjust the font size."] = "글꼴 크기를 조정합니다."
L["Font"] = "글꼴"
L["Adjust the font settings"] = "글꼴 설정을 조정합니다."
L["Frame Texture"] = "창 무늬"
L["Adjust the texture of each unit's frame."] = "각 유닛의 창 무늬를 조정합니다."
L["Orientation of Frame"] = "프레임의 방향"
L["Set frame orientation."] = "프레임의 방향을 설정합니다."
L["VERTICAL"] = "세로"
L["HORIZONTAL"] = "가로"

L["Icon Size"] = "아이콘 크기"
L["Adjust the size of the center icon."] = "중앙 아이콘의 크기를 조정합니다."
L["Size"] = "모서리 크기"
L["Adjust the size of the indicators."] = "모서리 지시기의 크기를 조정합니다."

L["Blink effect"] = "깜박임 효과"
L["Select the type of Blink effect used by Grid2."] = "Grid2에 사용할 깜박임 효과의 유형을 선택합니다."
L["None"] = "없음"
L["Blink"] = "깜박임"
L["Flash"] = "반짝임"
L["Blink Frequency"] = "깜박임 빈도"
L["Adjust the frequency of the Blink effect."] = "깜박임 효과의 빈도를 조정합니다."

L["Color"] = "색상"
L["Color %d"] = "색상 %d"
L["Color for %s."] = "%s 색상"
L["Color Charmed Unit"] = "현혹된 유닛 색상"
L["Color Units that are charmed."] = "현혹된 유닛의 색상입니다."
L["Unit Colors"] = "유닛 색상"
L["Charmed unit Color"] = "현혹된 유닛 색상"
L["Default unit Color"] = "기본 유닛 색상"
L["Default pet Color"] = "기본 소환수 색상"
L["%s Color"] = "%s 색상"
L["Show dead as having Full Health"] = "죽은후 가진 모든 생명력 표시"
L["Default alpha"] = "기본 투명도"
L["Default alpha value when units are way out of range."] = "유닛이 사정거리를 벗어났을 때 기본 투명도 값입니다."
L["Update rate"] = "업데이트 비율"
L["Rate at which the range gets updated"] = "거리 업데이트 빈도"
L["Invert Bar Color"] = "바 색상 반전"
L["Swap foreground/background colors on bars."] = "바 위의 전경/배경 색상을 변경합니다."

L["ready-check"] = "전투 준비 체크"
L["Delay"] = "지연"
L["Set the delay until ready check results are cleared."] = "준비 체크 결과를 삭제할 지연시간을 설정합니다."
L["Waiting color"] = "대기 색상"
L["Color for Waiting."] = "대기 상태일 때 색상을 설정합니다."
L["Ready color"] = "준비됨 색상"
L["Color for Ready."] = "전투 준비가 되었을 때 색상을 설정합니다."
L["Not Ready color"] = "준비 안됨 색상"
L["Color for Not Ready."] = "전투 준비가 되지 않았을 때 색상을 설정합니다."
L["AFK color"] = "자리비움 색상"
L["Color for AFK."] = "자리비움 상태일 때 색상을 설정합니다."

L["Include player heals"] = "플레이어 치유 포함"
L["Display status for the player's heals."] = "플레이어의 치유를 상태 창에 표시합니다."
L["Type of Heals taken into account"] = "Type of Heals taken into account"
L["Select the type of healing spell taken into account for the amount of incoming heals calculated."] = "Select the type of healing spell taken into account for the amount of incoming heals calculated"
L["Casted heals, both direct and channeled"] = "Casted heals, both direct and channeled"
L["Direct heals only."] = "직접 치유만"
L["All heals, including casted and HoTs"] = "모든 치유, 시전 및 지속 치유 포함"