BOLD = {
  cterm: "bold",
  gui: "bold"
}
UNDERLINE = {
  cterm: "underline",
  gui: "underline"
}
NONE = {
  cterm: "NONE",
  gui: "NONE"
}

DARK_GRAY = {
  cterm: "8",
  gui: "#606060"
}
LIGHT_GRAY = {
  cterm: "7",
  gui: "#c0c0c0"
}
WHITE = {
  cterm: "15",
  gui: "#ffffff"
}
RED = {
  cterm: "1",
  gui: "#800000"
}
GREEN = {
  cterm: "2",
  gui: "#008000"
}
YELLOW = {
  cterm: "3",
  gui: "#806000"
}
BLUE = {
  cterm: "4",
  gui: "#004080"
}
LIGHT_BLUE = {
  cterm: "12",
  gui: "#005FBF"
}
PURPLE = {
  cterm: "5",
  gui: "#800080"
}
CYAN = {
  cterm: "6",
  gui: "#008080"
}

def style(fg: nil, bg: nil, decoration: nil)
  (fg ? "guifg=#{fg[:gui]} ctermfg=#{fg[:cterm]} " : '') +
  (bg ? "guibg=#{bg[:gui]} ctermbg=#{bg[:cterm]} " : '') +
  (decoration ? "gui=#{decoration[:gui]} cterm=#{decoration[:cterm]} " : '')
end

