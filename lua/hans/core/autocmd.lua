vim.g.clipboard = {
	name = "xclip",
	copy = { ["+"] = "xclip -selection clipboard", ["*"] = "xclip -selection primary" },
	paste = { ["+"] = "xclip -selection clipboard -o", ["*"] = "xclip -selection primary -o" },
	cache_enabled = 0,
}
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = "●",
	},
	signs = true,
	underline = true,
	update_in_insert = true,
})
