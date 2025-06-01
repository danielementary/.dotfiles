local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- delete a single character without copying into register
map("n", "x", '"_x', opts)

-- Vertical scroll and center
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Resize with arrows
-- Function to check splits in vertical/horizontal direction
local function has_splits(direction)
    -- Do not resize neo-tree
    if vim.bo.filetype == "neo-tree" then
        return false
    end
    return vim.fn.winnr(direction) ~= vim.fn.winnr()
end

map("n", "<Up>", function()
    if has_splits('k') or has_splits('j') then
        vim.cmd("resize +2")
    end
end, opts)

map("n", "<Down>", function()
    if has_splits('k') or has_splits('j') then
        vim.cmd("resize -2")
    end
end, opts)

map("n", "<Left>", function()
    if has_splits('h') or has_splits('l') then
        vim.cmd("vertical resize +2")
    end
end, opts)

map("n", "<Right>", function()
    if has_splits('h') or has_splits('l') then
        vim.cmd("vertical resize -2")
    end
end, opts)
map("n", "=", "<C-w>=", opts)

-- Buffers
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)
map("n", "<leader>xb", ":bdelete!<CR>", opts)

-- Window management
map("n", "<leader>v", "<C-w>v", opts)
map("n", "<leader>h", "<C-w>s", opts)
map("n", "<leader>xs", ":close<CR>", opts)

-- Navigate between splits
map("n", "<C-k>", ":wincmd k<CR>", opts)
map("n", "<C-j>", ":wincmd j<CR>", opts)
map("n", "<C-h>", ":wincmd h<CR>", opts)
map("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
map("n", "<leader>to", ":tabnew<CR>", opts)
map("n", "<leader>tx", ":tabclose<CR>", opts)
map("n", "<leader>tn", ":tabn<CR>", opts)
map("n", "<leader>tp", ":tabp<CR>", opts)

-- Toggle line wrapping
map("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Diagnostic keymaps
map("n", "<leader>dn", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

map("n", "<leader>dp", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Miscellaneous
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
