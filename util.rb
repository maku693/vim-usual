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
  gui: "#c00000"
}
GREEN = {
  cterm: "2",
  gui: "#008000"
}
YELLOW = {
  cterm: "3",
  gui: "#c06000"
}
BLUE = {
  cterm: "4",
  gui: "#0060c0"
}
PURPLE = {
  cterm: "5",
  gui: "#a000a0"
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

