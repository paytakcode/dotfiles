require "irb/completion"

IRB.conf[:INPUT_METHOD] = :reline

# hex 색상 -> 상대 밝기 계산
def luminance(hex)
  r, g, b = hex.delete("#").scan(/../).map { |c| c.to_i(16) / 255.0 }

  rgb = [r, g, b].map do |c|
    c <= 0.03928 ? c / 12.92 : ((c + 0.055) / 1.055) ** 2.4
  end

  0.2126 * rgb[0] + 0.7152 * rgb[1] + 0.0722 * rgb[2]
end

# 배경색 기준으로 대비되는 전경색 생성
def contrast_color(bg_hex)
  luminance(bg_hex) > 0.5 ? "#000000" : "#FFFFFF"
end

if defined?(Reline)
  color_file = File.expand_path("~/.local/state/quickshell/user/generated/color.txt")

  sbg =
    if File.exist?(color_file)
      File.read(color_file).strip
    else
      "#000000"
    end

  sfg = contrast_color(sbg)

  Reline::Face.config(:completion_dialog) do |conf|
    conf.define :enhanced,
      foreground: sfg,
      background: sbg
  end
end
