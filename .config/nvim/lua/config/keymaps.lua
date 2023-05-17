local opts = {noremap = true, silent = true}

local function keymap(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Select all
keymap("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap("n", "ss", ":split<Return><C-w>w")
keymap("n", "sv", ":vsplit<Return><C-w>w")
-- New tab
keymap("n", "te", ":tabedit")

-- Move windows
keymap("n", "<Space>", "<C-w>w")
keymap("", "s<left>", "<C-w>h")
keymap("", "s<up>", "<C-w>k")
keymap("", "s<down>", "<C-w>j")
keymap("", "s<right>", "<C-w>l")
keymap("", "sh", "<C-w>h")
keymap("", "sk", "<C-w>k")
keymap("", "sj", "<C-w>j")
keymap("", "sl", "<C-w>l")
-- Resize window
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi")
keymap("v", "<A-j>", ":m .+1<CR>==")
keymap("v", "<A-k>", ":m .-2<CR>==")
