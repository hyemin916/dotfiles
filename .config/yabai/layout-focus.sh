#!/usr/bin/env sh
# Space 1: Arc(위) + Obsidian(아래) 상하 분할 레이아웃 설정

SPACE=1
WIN_COUNT=$(yabai -m query --windows --space $SPACE | python3 -c 'import json,sys; print(len(json.load(sys.stdin)))')

if [ "$WIN_COUNT" -lt 2 ]; then
  echo "Space $SPACE에 윈도우가 2개 이상 필요합니다. (현재: $WIN_COUNT)"
  exit 1
fi

# Space 1의 첫 번째 윈도우를 가져와 split을 horizontal(상하)로 설정
FIRST_WIN=$(yabai -m query --windows --space $SPACE | python3 -c 'import json,sys; wins=json.load(sys.stdin); print(wins[0]["id"])')

yabai -m window $FIRST_WIN --toggle split

echo "Space $SPACE 레이아웃: 상하 분할 적용 완료"
