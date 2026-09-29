-- Visual Studio (Dark theme) colors for C# files.
-- Only touches C#-specific groups (legacy `cs*` syntax + Roslyn semantic tokens),
-- so the rest of the colorscheme is left alone.

local c = {
  text      = "#DCDCDC",
  keyword   = "#569CD6", -- public, class, var, new, null, true...
  control   = "#D8A0DF", -- if, else, return, for, foreach, await...
  type      = "#4EC9B0", -- classes, records, delegates
  interface = "#B8D7A3", -- interfaces, enums
  struct    = "#86C691", -- structs, type parameters
  method    = "#DCDCAA",
  local_var = "#9CDCFE", -- locals and parameters
  string    = "#D69D85",
  escape    = "#FFD68F",
  number    = "#B5CEA8",
  comment   = "#57A64A",
  xmldoc    = "#608B4E",
  preproc   = "#9B9B9B",
  operator  = "#B4B4B4",
  excluded  = "#767676",
}

local groups = {
  -- Legacy syntax (used before the LSP attaches / as fallback)
  csUnspecifiedStatement = { fg = c.keyword },
  csUnsupportedStatement = { fg = c.keyword },
  csUnspecifiedKeyword   = { fg = c.keyword },
  csGlobalNamespaceAlias = { fg = c.keyword },
  csType                 = { fg = c.keyword },
  csClassType            = { fg = c.type },
  csIsType               = { fg = c.type },
  csStorage              = { fg = c.keyword },
  csClass                = { fg = c.keyword },
  csNew                  = { fg = c.keyword },
  csIsAs                 = { fg = c.keyword },
  csAccessor             = { fg = c.keyword },
  csAccess               = { fg = c.keyword },
  csLinq                 = { fg = c.keyword },
  csStatement            = { fg = c.control },
  csRepeat               = { fg = c.control },
  csConditional          = { fg = c.control },
  csLabel                = { fg = c.control },
  csException            = { fg = c.control },
  csModifier             = { fg = c.keyword },
  csKeywordOperator      = { fg = c.keyword },
  csTypeOfOperand        = { fg = c.type },
  csComment              = { fg = c.comment },
  csTodo                 = { fg = c.comment, bold = true },
  csOpSymbols            = { fg = c.operator },
  csLogicSymbols         = { fg = c.operator },
  csString               = { fg = c.string },
  csQuote                = { fg = c.string },
  csInterpolatedString   = { fg = c.string },
  csVerbatimString       = { fg = c.string },
  csInterVerbString      = { fg = c.string },
  csVerbatimQuote        = { fg = c.escape },
  csSpecialChar          = { fg = c.escape },
  csUnicodeNumber        = { fg = c.escape },
  csUnicodeSpecifier     = { fg = c.escape },
  csCharacter            = { fg = c.string },
  csInterpolationDelimiter = { fg = c.text },
  csPreProc              = { fg = c.preproc },
  csPreProcDeclaration   = { fg = c.preproc },
  csPreProcConditional   = { fg = c.preproc },
  csConstant             = { fg = c.keyword },
  csNull                 = { fg = c.keyword },
  csBoolean              = { fg = c.keyword },
  csInteger              = { fg = c.number },
  csReal                 = { fg = c.number },
  csXmlLineCommentLeader = { fg = c.xmldoc },
  csXmlLineComment       = { fg = c.comment },
  csXmlBlockComment      = { fg = c.comment },
  csXmlTag               = { fg = c.xmldoc },
  csXmlAttrib            = { fg = c.xmldoc },

  -- Roslyn semantic tokens (these win once roslyn_ls is attached)
  ["@lsp.type.namespace.cs"]       = { fg = c.text },
  ["@lsp.type.class.cs"]           = { fg = c.type },
  ["@lsp.type.recordClass.cs"]     = { fg = c.type },
  ["@lsp.type.delegate.cs"]        = { fg = c.type },
  ["@lsp.type.module.cs"]          = { fg = c.type },
  ["@lsp.type.struct.cs"]          = { fg = c.struct },
  ["@lsp.type.recordStruct.cs"]    = { fg = c.struct },
  ["@lsp.type.interface.cs"]       = { fg = c.interface },
  ["@lsp.type.enum.cs"]            = { fg = c.interface },
  ["@lsp.type.typeParameter.cs"]   = { fg = c.struct },
  ["@lsp.type.type.cs"]            = { fg = c.type },
  ["@lsp.type.method.cs"]          = { fg = c.method },
  ["@lsp.type.extensionMethod.cs"] = { fg = c.method },
  ["@lsp.type.function.cs"]        = { fg = c.method },
  ["@lsp.type.parameter.cs"]       = { fg = c.local_var },
  ["@lsp.type.local.cs"]           = { fg = c.local_var },
  ["@lsp.type.variable.cs"]        = { fg = c.local_var },
  ["@lsp.type.property.cs"]        = { fg = c.text },
  ["@lsp.type.field.cs"]           = { fg = c.text },
  ["@lsp.type.event.cs"]           = { fg = c.text },
  ["@lsp.type.enumMember.cs"]      = { fg = c.text },
  ["@lsp.type.constant.cs"]        = { fg = c.text },
  ["@lsp.type.label.cs"]           = { fg = c.text },
  ["@lsp.type.keyword.cs"]         = { fg = c.keyword },
  ["@lsp.type.controlKeyword.cs"]  = { fg = c.control },
  ["@lsp.type.modifier.cs"]        = { fg = c.keyword },
  ["@lsp.type.operator.cs"]        = { fg = c.operator },
  ["@lsp.type.operatorOverloaded.cs"] = { fg = c.operator },
  ["@lsp.type.punctuation.cs"]     = { fg = c.text },
  ["@lsp.type.string.cs"]          = { fg = c.string },
  ["@lsp.type.stringVerbatim.cs"]  = { fg = c.string },
  ["@lsp.type.stringEscapeCharacter.cs"] = { fg = c.escape },
  ["@lsp.type.number.cs"]          = { fg = c.number },
  ["@lsp.type.comment.cs"]         = { fg = c.comment },
  ["@lsp.type.macro.cs"]           = { fg = c.preproc },
  ["@lsp.type.preprocessorText.cs"] = { fg = c.preproc },
  ["@lsp.type.excludedCode.cs"]    = { fg = c.excluded },
  ["@lsp.type.xmlDocCommentComment.cs"]        = { fg = c.comment },
  ["@lsp.type.xmlDocCommentDelimiter.cs"]      = { fg = c.xmldoc },
  ["@lsp.type.xmlDocCommentName.cs"]           = { fg = c.xmldoc },
  ["@lsp.type.xmlDocCommentAttributeName.cs"]  = { fg = c.xmldoc },
  ["@lsp.type.xmlDocCommentAttributeQuotes.cs"] = { fg = c.xmldoc },
  ["@lsp.type.xmlDocCommentAttributeValue.cs"] = { fg = c.xmldoc },
  ["@lsp.type.xmlDocCommentText.cs"]           = { fg = c.comment },
  -- Roslyn marks static members with a modifier; VS doesn't color them differently
  ["@lsp.mod.static.cs"] = {},
}

local function apply()
  for name, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, name, spec)
  end
end

apply()

-- Re-apply whenever the colorscheme is (re)loaded, since it clears highlights
vim.api.nvim_create_autocmd("ColorScheme", { callback = apply })

