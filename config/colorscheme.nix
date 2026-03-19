let
  # Base16 Oasis — Desert noir
  # Warm amber/gold brand, teal water accent, sandy neutrals
  p = {
    bg        = "#080604"; # base00 — Default Background
    bgRaised  = "#12100D"; # base01 — Lighter Background (status bars, line numbers)
    selection  = "#28231D"; # base02 — Selection Background
    muted     = "#787369"; # base03 — Comments, Invisibles
    dim       = "#A09B91"; # base04 — Dark Foreground (status bars)
    fg        = "#F0ECE4"; # base05 — Default Foreground
    light     = "#F5F2EB"; # base06 — Light Foreground
    bright    = "#FAF7F0"; # base07 — Light Background
    err       = "#CC6666"; # base08 — Variables, Diff Deleted
    terracotta = "#D4956A"; # base09 — Constants, Booleans
    brand     = "#E8B44C"; # base0A — Classes, Search BG
    ok        = "#8EC07C"; # base0B — Strings, Diff Inserted
    accent    = "#56C7B8"; # base0C — Regex, Escape Chars
    dusk      = "#6E9EBE"; # base0D — Functions, Headings
    twilight  = "#B882A0"; # base0E — Keywords, Storage
    clay      = "#A57854"; # base0F — Deprecated, Embedded Tags

    # Bright variants (lightened builtins / emphasis)
    errBright       = "#D98888";
    terracottaBright = "#E0AD84";
    brandBright     = "#F0C870";
    okBright        = "#A8D49A";
    accentBright    = "#78D8CC";
    duskBright      = "#8FB8D4";
    twilightBright  = "#CCA0B8";
  };
  none = "NONE";
in
{
  # Disable catppuccin
  colorschemes.catppuccin.enable = false;

  # Apply all highlights via nixvim
  highlightOverride = {

    # ── Editor UI ──────────────────────────────────────────────
    Normal        = { fg = p.fg;       bg = p.bg; };
    NormalFloat   = { fg = p.fg;       bg = p.bgRaised; };
    FloatBorder   = { fg = p.muted;    bg = p.bgRaised; };
    FloatTitle    = { fg = p.brand;    bg = p.bgRaised; bold = true; };
    ColorColumn   = { bg = p.bgRaised; };
    CursorColumn  = { bg = p.bgRaised; };
    CursorLine    = { bg = p.bgRaised; };
    CursorLineNr  = { fg = p.brand;    bold = true; };
    LineNr        = { fg = p.muted; };
    SignColumn     = { fg = p.muted;    bg = p.bg; };
    FoldColumn    = { fg = p.muted;    bg = p.bg; };
    Folded        = { fg = p.muted;    bg = p.bgRaised; };
    VertSplit     = { fg = p.selection; bg = p.bg; };
    WinSeparator  = { fg = p.selection; bg = p.bg; };

    # ── Cursor & Visual ────────────────────────────────────────
    Cursor        = { fg = p.bg;       bg = p.fg; };
    Visual        = { bg = "#3D3529"; };
    VisualNOS     = { bg = "#3D3529"; };

    # ── Search & Match ─────────────────────────────────────────
    Search        = { fg = p.bg;       bg = p.brand; };
    IncSearch     = { fg = p.bg;       bg = p.terracotta; };
    CurSearch     = { fg = p.bg;       bg = p.terracotta; bold = true; };
    Substitute    = { fg = p.bg;       bg = p.err; };
    MatchParen    = { fg = p.bright;   bg = p.muted; bold = true; };

    # ── Pmenu (completion) ─────────────────────────────────────
    Pmenu         = { fg = p.fg;       bg = p.bgRaised; };
    PmenuSel      = { fg = p.bright;   bg = "#3D3529"; };
    PmenuSbar     = { bg = p.selection; };
    PmenuThumb    = { bg = p.muted; };

    # ── Tabline ────────────────────────────────────────────────
    TabLine       = { fg = p.dim;      bg = p.bgRaised; };
    TabLineFill   = { bg = p.bg; };
    TabLineSel    = { fg = p.fg;       bg = "#3D3529"; bold = true; };

    # ── Statusline ─────────────────────────────────────────────
    StatusLine    = { fg = p.dim;      bg = p.bgRaised; };
    StatusLineNC  = { fg = p.muted;    bg = p.bgRaised; };
    WildMenu      = { fg = p.bg;       bg = p.brand; };

    # ── Messages & Diagnostics ─────────────────────────────────
    ModeMsg       = { fg = p.ok;       bold = true; };
    MoreMsg       = { fg = p.ok; };
    WarningMsg    = { fg = p.brand; };
    ErrorMsg      = { fg = p.err;      bold = true; };
    Question      = { fg = p.dusk; };
    Title         = { fg = p.brand;    bold = true; };
    Directory     = { fg = p.dusk; };
    NonText       = { fg = p.selection; };
    SpecialKey    = { fg = p.selection; };
    Whitespace    = { fg = p.selection; };
    EndOfBuffer   = { fg = p.bg; };

    # ── Diff ───────────────────────────────────────────────────
    DiffAdd       = { fg = p.ok;       bg = "#1a2e1a"; };
    DiffChange    = { fg = p.brand;    bg = "#1e1a10"; };
    DiffDelete    = { fg = p.err;      bg = "#2e1a1a"; };
    DiffText      = { fg = p.brand;    bg = "#2e2410"; bold = true; };

    # ── Spell ──────────────────────────────────────────────────
    SpellBad      = { sp = p.err;      undercurl = true; };
    SpellCap      = { sp = p.brand;    undercurl = true; };
    SpellLocal    = { sp = p.accent;   undercurl = true; };
    SpellRare     = { sp = p.twilight; undercurl = true; };

    # ── Diagnostics ────────────────────────────────────────────
    DiagnosticError          = { fg = p.err; };
    DiagnosticWarn           = { fg = p.brand; };
    DiagnosticInfo           = { fg = p.dusk; };
    DiagnosticHint           = { fg = p.accent; };
    DiagnosticOk             = { fg = p.ok; };
    DiagnosticUnderlineError = { sp = p.err;      undercurl = true; };
    DiagnosticUnderlineWarn  = { sp = p.brand;    undercurl = true; };
    DiagnosticUnderlineInfo  = { sp = p.dusk;     undercurl = true; };
    DiagnosticUnderlineHint  = { sp = p.accent;   undercurl = true; };

    # ── Standard syntax ────────────────────────────────────────
    Comment       = { fg = p.dim;       italic = true; };
    Constant      = { fg = p.terracotta; };
    String        = { fg = p.ok; };
    Character     = { fg = p.ok; };
    Number        = { fg = p.terracotta; };
    Boolean       = { fg = p.terracotta; };
    Float         = { fg = p.terracotta; };

    Identifier    = { fg = p.err; };
    Function      = { fg = p.dusk; };

    Statement     = { fg = p.twilight; };
    Conditional   = { fg = p.twilight; };
    Repeat        = { fg = p.twilight; };
    Label         = { fg = p.brand; };
    Operator      = { fg = p.fg; };
    Keyword       = { fg = p.twilight; };
    Exception     = { fg = p.err; };

    PreProc       = { fg = p.brand; };
    Include       = { fg = p.dusk; };
    Define        = { fg = p.twilight; };
    Macro         = { fg = p.twilight; };
    PreCondit     = { fg = p.brand; };

    Type          = { fg = p.brand; };
    StorageClass  = { fg = p.twilight; };
    Structure     = { fg = p.brand; };
    Typedef       = { fg = p.brand; };

    Special       = { fg = p.accent; };
    SpecialChar   = { fg = p.accent; };
    Tag           = { fg = p.err; };
    Delimiter     = { fg = p.dim; };
    SpecialComment = { fg = p.accent; };
    Debug         = { fg = p.err; };

    Underlined    = { fg = p.dusk;     underline = true; };
    Bold          = { bold = true; };
    Italic        = { italic = true; };
    Ignore        = { fg = p.muted; };
    Error         = { fg = p.err;      bg = p.bg; bold = true; };
    Todo          = { fg = p.brand;    bg = p.bg; bold = true; };

    # ── Treesitter ─────────────────────────────────────────────
    "@comment"                = { fg = p.dim;        italic = true; };
    "@punctuation.bracket"    = { fg = p.muted; };
    "@punctuation.delimiter"  = { fg = p.muted; };
    "@punctuation.special"    = { fg = p.accent; };
    "@constant"               = { fg = p.terracotta; };
    "@constant.builtin"       = { fg = p.terracottaBright; };
    "@constant.macro"         = { fg = p.terracotta; };
    "@string"                 = { fg = p.ok; };
    "@string.escape"          = { fg = p.accentBright; };
    "@string.regex"           = { fg = p.accentBright; };
    "@string.special"         = { fg = p.accentBright; };
    "@character"              = { fg = p.ok; };
    "@number"                 = { fg = p.terracotta; };
    "@boolean"                = { fg = p.terracotta; };
    "@float"                  = { fg = p.terracotta; };
    "@function"               = { fg = p.dusk; };
    "@function.builtin"       = { fg = p.duskBright; };
    "@function.macro"         = { fg = p.twilightBright; };
    "@function.call"          = { fg = p.dusk; };
    "@method"                 = { fg = p.dusk; };
    "@method.call"            = { fg = p.dusk; };
    "@constructor"            = { fg = p.brand; };
    "@parameter"              = { fg = p.fg; italic = true; };
    "@keyword"                = { fg = p.twilight; };
    "@keyword.function"       = { fg = p.twilight; };
    "@keyword.operator"       = { fg = p.twilight; };
    "@keyword.return"         = { fg = p.twilightBright; };
    "@conditional"            = { fg = p.twilight; };
    "@repeat"                 = { fg = p.twilight; };
    "@label"                  = { fg = p.brand; };
    "@include"                = { fg = p.dusk; };
    "@exception"              = { fg = p.err; };
    "@type"                   = { fg = p.brand; };
    "@type.builtin"           = { fg = p.brandBright; };
    "@type.qualifier"         = { fg = p.twilight; };
    "@type.definition"        = { fg = p.brand; };
    "@namespace"              = { fg = p.fg; };
    "@attribute"              = { fg = p.brand; };
    "@variable"               = { fg = p.fg; };
    "@variable.builtin"       = { fg = p.errBright; };
    "@property"               = { fg = p.dusk; };
    "@field"                  = { fg = p.dusk; };
    "@tag"                    = { fg = p.err; };
    "@tag.attribute"          = { fg = p.brand; };
    "@tag.delimiter"          = { fg = p.dim; };
    "@operator"               = { fg = p.dim; };
    "@text.title"             = { fg = p.brand; bold = true; };
    "@text.literal"           = { fg = p.ok; };
    "@text.uri"               = { fg = p.dusk; underline = true; };
    "@text.reference"         = { fg = p.accent; };
    "@text.emphasis"          = { italic = true; };
    "@text.strong"            = { bold = true; };
    "@text.strike"            = { strikethrough = true; };
    "@text.diff.add"          = { fg = p.ok; };
    "@text.diff.delete"       = { fg = p.err; };

    # ── Git signs ──────────────────────────────────────────────
    GitSignsAdd    = { fg = p.ok; };
    GitSignsChange = { fg = p.brand; };
    GitSignsDelete = { fg = p.err; };

    # ── Telescope ──────────────────────────────────────────────
    TelescopeNormal       = { fg = p.fg;       bg = p.bg; };
    TelescopeBorder       = { fg = p.muted;    bg = p.bg; };
    TelescopeTitle        = { fg = p.brand;    bold = true; };
    TelescopePromptNormal = { fg = p.fg;       bg = p.bgRaised; };
    TelescopePromptBorder = { fg = p.muted;    bg = p.bgRaised; };
    TelescopePromptTitle  = { fg = p.brand;    bg = p.bgRaised; bold = true; };
    TelescopeSelection    = { bg = "#3D3529"; };
    TelescopeMatching     = { fg = p.brand;    bold = true; };

    # ── Mini ───────────────────────────────────────────────────
    MiniPickNormal     = { fg = p.fg;    bg = p.bg; };
    MiniPickBorder     = { fg = p.muted; bg = p.bg; };
    MiniPickPrompt     = { fg = p.brand; bold = true; };
    MiniPickMatchCur   = { fg = p.brand; bold = true; };
    MiniStarterHeader  = { fg = p.brand; bold = true; };
    MiniStarterFooter  = { fg = p.muted; italic = true; };
    MiniStarterCurrent = { fg = p.fg;    bg = "#3D3529"; };
    MiniStarterItem    = { fg = p.dim; };
    MiniStarterQuery   = { fg = p.brand; bold = true; };
    MiniIndentscopeSymbol = { fg = p.selection; };
    MiniTablineCurrent    = { fg = p.fg;    bg = "#3D3529"; bold = true; };
    MiniTablineVisible    = { fg = p.dim;   bg = p.bgRaised; };
    MiniTablineHidden     = { fg = p.muted; bg = p.bgRaised; };
    MiniTablineFill       = { bg = p.bg; };
    MiniNotifyNormal = { fg = p.fg;    bg = p.bgRaised; };
    MiniNotifyBorder = { fg = p.muted; bg = p.bgRaised; };

    # ── Which-key ──────────────────────────────────────────────
    WhichKey          = { fg = p.accent; };
    WhichKeyGroup     = { fg = p.dusk; };
    WhichKeyDesc      = { fg = p.fg; };
    WhichKeySeparator = { fg = p.muted; };
    WhichKeyValue     = { fg = p.dim; };

    # ── CMP (completion) ───────────────────────────────────────
    CmpItemAbbr           = { fg = p.fg; };
    CmpItemAbbrMatch      = { fg = p.brand; bold = true; };
    CmpItemAbbrMatchFuzzy = { fg = p.brand; };
    CmpItemAbbrDeprecated = { fg = p.muted; strikethrough = true; };
    CmpItemKind           = { fg = p.dusk; };
    CmpItemMenu           = { fg = p.muted; };

    # ── LSP ────────────────────────────────────────────────────
    LspReferenceText  = { bg = p.selection; };
    LspReferenceRead  = { bg = p.selection; };
    LspReferenceWrite = { bg = p.selection; };
    LspSignatureActiveParameter = { fg = p.brand; bold = true; };
  };
}
