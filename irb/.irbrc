require "irb/completion"
require 'json'
require 'open3'

IRB.conf[:INPUT_METHOD] = :reline

if defined?(Reline)
  # kitty 색상 실행 결과 받아오기
  out, _ = Open3.capture2("kitty @ get-colors")

  # 텍스트 파싱 -> { "background" => "#1b1b17", ... }
  kitty_colors = {}
  out.each_line do |line|
    key, value = line.strip.split
    next unless key && value
    kitty_colors[key] = value
  end

  # 기본 색상 변수
  fg  = kitty_colors["foreground"]
  bg  = kitty_colors["background"]
  sfg = kitty_colors["selection_foreground"]
  sbg = kitty_colors["selection_background"]
  scrollbar_bg = kitty_colors["tab_bar_background"]

  # mark 색상 배열
  marks = [
    { name: :mark1, fg: kitty_colors["mark1_foreground"], bg: kitty_colors["mark1_background"] },
    { name: :mark2, fg: kitty_colors["mark2_foreground"], bg: kitty_colors["mark2_background"] },
    { name: :mark3, fg: kitty_colors["mark3_foreground"], bg: kitty_colors["mark3_background"] }
  ].compact

  # Reline completion_dialog 설정
  Reline::Face.config(:completion_dialog) do |conf|
    # 기본
    conf.define :default, foreground: fg, background: bg

    # enhanced 기본 (selection 색상)
    conf.define :enhanced, foreground: sfg, background: sbg

    # mark 스타일 정의
    marks.each do |mark|
      conf.define mark[:name], foreground: mark[:fg], background: mark[:bg]
    end

    # 스크롤바
    conf.define :scrollbar, foreground: fg, background: scrollbar_bg

    # → 실제 completion 항목 렌더링 쪽에서
    #    index % marks.size 를 활용해서 순환 적용 가능
    #
    #    예:
    #      item_index = ... # Reline 내부 index
    #      style_name  = marks[item_index % marks.size][:name]
    #      conf.apply(style_name) ...
  end
end
