return {
  "supermaven-inc/supermaven-nvim",
  commit = "df3ecf7",
  keys = {
    {
      "<Tab>",
      function()
        local suggestion = require("supermaven-nvim.completion_preview")
        suggestion.on_accept_suggestion()
      end,
      mode = { "i" },
      desc = "Accept suggestion (Supermaven)",
    },
    -- {
    --   "<C-j>",
    --   function()
    --     local suggestion = require("supermaven-nvim.completion_preview")
    --
    --     if suggestion.has_suggestion() then
    --       -- This is partial acceptance.
    --       suggestion.on_accept_suggestion(true)
    --     end
    --   end,
    --   desc = "Accept word (Supermaven)",
    -- },
  },
  opts = {
    disable_keymaps = true,
    disable_inline_completion = false,
  },
}
