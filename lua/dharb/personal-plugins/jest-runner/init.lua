local utils = require("dharb.personal-plugins.jest-runner.utils")

local function get_current_file_path()
	return vim.fn.expand("%:p")
end

local function get_current_file_wd()
	return vim.fn.expand("%:p:h")
end

local function create_window()
	vim.cmd("botright vnew")
	return vim.api.nvim_get_current_win()
end

local function open_termilal(cmd)
	vim.cmd("terminal " .. cmd)
end

local function change_wd(path)
	vim.cmd("cd " .. path)
end

local function form_cmd(current_file)
	local cmd = {"npx jest", current_file, "--silent", "--watch"}
	return table.concat(cmd, " ")
end

local ERROR_PREFIX = "Jest_Runner: "

function Jest_runner()
	local current_file = get_current_file_path()
	local current_wd = get_current_file_wd()

	if not utils.check_if_spec_file(current_file) then error(ERROR_PREFIX .. "Not a .spec file") end

	local cmd = form_cmd(current_file)
	create_window()
	change_wd(current_wd)
	open_termilal(cmd)
end

vim.api.nvim_create_user_command("Jest", Jest_runner, { nargs = 0 });
