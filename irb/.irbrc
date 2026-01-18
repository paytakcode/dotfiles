require "irb/completion"
IRB.conf[:INPUT_METHOD] = :reline

fg  = ENV["IRB_FG_COLOR"] || "#ffffff"
bg  = ENV["IRB_BG_COLOR"] || "#000000"
sfg = ENV["IRB_SEL_FG"] || "#000000"
sbg = ENV["IRB_SEL_BG"] || "#ffffff"

if defined?(Reline)
  Reline::Face.config(:completion_dialog) do |conf|
    conf.define :default, foreground: fg, background: bg
    conf.define :enhanced, foreground: sfg, background: sbg
    conf.define :scrollbar, foreground: fg, background: bg
  end
end
