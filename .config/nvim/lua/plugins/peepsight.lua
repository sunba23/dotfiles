return {
  "koenverburg/peepsight.nvim",
  config = function ()
    require('peepsight').setup({
      -- go
      "function_declaration",
      "method_declaration",
      "func_literal",
    })
  end
}
