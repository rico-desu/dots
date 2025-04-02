return {
    {
        "vimwiki/vimwiki",
        init = function()
	    vim.g.vimwiki_global_ext = 0
            vim.g.vimwiki_list = {{
		path = "~/Notes/",
                syntax = "markdown",
                ext = "md",
                index = "Main",
                diary_rel_path = "Diary/",
                diary_index = "Diary"
            }}
        end
    }
}
