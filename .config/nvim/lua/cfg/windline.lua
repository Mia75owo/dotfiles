-- _  _  _ _____ __   _ ______         _____ __   _ _______
-- |  |  |   |   | \  | |     \ |        |   | \  | |______
-- |__|__| __|__ |  \_| |_____/ |_____ __|__ |  \_| |______

local windline = require('windline')
local helper = require('windline.helpers')

local basic_comps = require('windline.components.basic')
local lsp_comps = require('windline.components.lsp')
local git_comps = require('windline.components.git')

local sep = helper.separators
local animation = require('wlanimation')
local effects = require('wlanimation.effects')

-- My own rainbow effect
effects.rainbow = function(start)
	return effects.list_color({
		"#FF3D33", "#FF4B33", "#FF5833", "#FF6633",
		"#FF7433", "#FF8133", "#FF8F33", "#FF9C33",
		"#FFAA33", "#FFB833", "#FFC533", "#FFD333",
		"#FFE033", "#FFEE33", "#FFFC33", "#F5FF33",
		"#E7FF33", "#DAFF33", "#CCFF33", "#BEFF33",
		"#B1FF33", "#A3FF33", "#96FF33", "#88FF33",
		"#7AFF33", "#6DFF33", "#5FFF33", "#52FF33",
		"#44FF33", "#36FF33", "#33FF3D", "#33FF4B",
		"#33FF58", "#33FF66", "#33FF74", "#33FF81",
		"#33FF8F", "#33FF9C", "#33FFAA", "#33FFB8",
		"#33FFC5", "#33FFD3", "#33FFE0", "#33FFEE",
		"#33FFFC", "#33F5FF", "#33E7FF", "#33DAFF",
		"#33CCFF", "#33BEFF", "#33B1FF", "#33A3FF",
		"#3396FF", "#3388FF", "#337AFF", "#336DFF",
		"#335FFF", "#3352FF", "#3344FF", "#3336FF",
		"#3D33FF", "#4B33FF", "#5833FF", "#6633FF",
		"#7433FF", "#8133FF", "#8F33FF", "#9C33FF",
		"#AA33FF", "#B833FF", "#C533FF", "#D333FF",
		"#E033FF", "#EE33FF", "#FC33FF", "#FF33F5",
		"#FF33E7", "#FF33DA", "#FF33CC", "#FF33BE",
		"#FF33B1", "#FF33A3", "#FF3396", "#FF3388",
		"#FF337A", "#FF336D", "#FF335F", "#FF3352",
		"#FF3344", "#FF3336",
	}, start)
end

local state = _G.WindLine.state

-- basic colors
local hl_list = {
	Black    = { 'white'      , 'black'      },
	Inactive = { 'InactiveFg' , 'InactiveBg' },
	Active   = { 'ActiveFg'   , 'ActiveBg'   },
}
local basic = {}

-- set the colors of some elements
basic.divider								= {"%=", ''}
basic.space                 = {' ', ''}
basic.line_col              = {[[ %3l:%-2c ]],hl_list.Black }
basic.progress              = {[[%3p%% ]], hl_list.Black}
basic.bg                    = {" ", 'StatusLine'}
basic.file_name_inactive    = {"%f", hl_list.Inactive}
basic.line_col_inactive     = {[[ %3l:%-2c ]], hl_list.Inactive}
basic.progress_inactive     = {[[%3p%% ]], hl_list.Inactive}

-- the different colors for different editor modes
basic.vi_mode= {
	name = 'vi_mode',
	hl_colors = {
		Normal  = {'white', 'rainbow'  },
		Insert  = {'black', 'cyan'    },
		Visual  = {'black', 'blue'  },
		Replace = {'black', 'red'   },
		Command = {'black', 'yellow' },
	},
	text = function() return ' ' .. state.mode[1] .. ' ' end,
	hl = function () return state.mode[2] end,
}
basic.vi_mode_sep =  {
	name = 'vi_mode_sep',
	hl_colors = {
		Normal  = {'rainbow', 'FilenameBg'},
		Insert  = {'cyan', 'FilenameBg'},
		Visual  = {'blue', 'FilenameBg'},
		Replace = {'red', 'FilenameBg'},
		Command = {'yellow', 'FilenameBg'},
	},
	text = function() return sep.right_rounded end,
	hl = function () return state.mode[2] end,
}

basic.file_name = {
	text = basic_comps.file_name(),
	hl_colors = {'FilenameFg', 'FilenameBg'}
}

-- Disgnostics
basic.lsp_diagnos = {
	name = 'diagnostic',
	hl_colors = {
		red = { 'red', 'NormalBg' },
		yellow = { 'yellow', 'NormalBg' },
		blue = { 'blue', 'NormalBg' },
	},
	text = function(bufnr)
		if lsp_comps.check_lsp(bufnr) then
			return {
				{ lsp_comps.lsp_error({ format = '  %s', show_zero = true }), 'red' },
				{ lsp_comps.lsp_warning({ format = '  %s', show_zero = true }), 'yellow' },
				{ lsp_comps.lsp_hint({ format = '  %s', show_zero = true }), 'blue' },
			}
		end
		return { ' ', 'red' }
	end,
}

basic.git = {
	name = 'git',
	width = width_breakpoint,
	hl_colors = {
		green = { 'green', 'NormalBg' },
		red = { 'red', 'NormalBg' },
		blue = { 'blue', 'NormalBg' },
	},
	text = function(bufnr)
		if git_comps.is_git(bufnr) then
			return {
				{ git_comps.diff_added({ format = '  %s' }), 'green' },
				{ git_comps.diff_removed({ format = '  %s' }), 'red' },
				{ git_comps.diff_changed({ format = ' 柳%s' }), 'blue' },
			}
		end
		return ''
	end,
}

-- the big rainbow seperator on the left
local arrow_left={
	hl_colors = {
		arrow_rainbow1 = {'black_light', 'arrowleft1'},
		arrow_rainbow2 = {'arrowleft1', 'arrowleft2'},
		arrow_rainbow3 = {'arrowleft2', 'arrowleft3'},
		arrow_rainbow4 = {'arrowleft3', 'arrowleft4'},
		arrow_rainbow5 = {'arrowleft4', 'arrowleft5'},
		arrow_rainbow6 = {'arrowleft5', 'arrowwhite'},
	},
	text = function()
		return {
			{sep.right_filled .. '  ', 'arrow_rainbow1'},
			{sep.right_filled .. '  ', 'arrow_rainbow2'},
			{sep.right_filled .. '  ', 'arrow_rainbow3'},
			{sep.right_filled .. '  ', 'arrow_rainbow4'},
			{sep.right_filled .. '  ', 'arrow_rainbow5'},
			{sep.right_filled .. '  ', 'arrow_rainbow6'},
		}
	end
}

-- the big rainbow seperator on the right
local arrow_right={
	hl_colors = {
		arrow_rainbow1 = {'arrowright1', 'arrowwhite'},
		arrow_rainbow2 = {'arrowright2', 'arrowright1'},
		arrow_rainbow3 = {'arrowright3', 'arrowright2'},
		arrow_rainbow4 = {'arrowright4', 'arrowright3'},
		arrow_rainbow5 = {'arrowright5', 'arrowright4'},
		arrow_rainbow6 = {'black', 'arrowright5'},
	},
	text = function()
		return {
			{'  '..sep.left_filled , 'arrow_rainbow1'},
			{'  '..sep.left_filled , 'arrow_rainbow2'},
			{'  '..sep.left_filled , 'arrow_rainbow3'},
			{'  '..sep.left_filled , 'arrow_rainbow4'},
			{'  '..sep.left_filled , 'arrow_rainbow5'},
			{'  '..sep.slant_left , 'arrow_rainbow6'},
		}
	end
}

-- The folder icon (when nvim-tree is open)
local explorer = {
	filetypes = { 'NvimTree' },
	active = {
		{ '  ', { 'white',  'rainbow' } },
		{ helper.separators.slant_right, { 'rainbow', 'NormalBg' } },
		{ basic_comps.divider, '' },
		{ basic_comps.file_name(''), { 'NormalFg', 'NormalBg' } },
	},
	always_active = true,
	show_last_status = true
}

-- the main bar
local default = {
	filetypes = {'default'},
	active = {
		-- the mode
		basic.vi_mode,
		basic.vi_mode_sep,
		{' ',''},
		-- the name of the current file
		basic.file_name,
		arrow_left,
		-- the big rainbow seperator
		{' ',{'FilenameBg', 'arrowwhite'}},

		-- lsp diagnostics
		basic.lsp_diagnos,
		{' ', {'NormalBg', 'NormalBg'}},
		{sep.right_filled, {'NormalBg', 'none'}},

		-- the space in the middle (empty)
		{' ',{'none', 'none'}},
		basic.divider,

		{sep.left_filled, {'NormalBg', 'none'}},
		{' ', {'NormalBg', 'NormalBg'}},
		-- git diagnostics
		basic.git,
		-- the big rainbow seperator
		arrow_right,
		-- cursor pos
		basic.line_col,
	},
	inactive = {
		basic.file_name_inactive,
		basic.divider,
		basic.divider,
		basic.line_col_inactive,
		{'',{'white', 'InactiveBg'}},
		basic.progress_inactive,
	}
}

-- ================================
-- Markdown files (different theme)
-- ================================

-- the blue "wave" on the left
local wave_left={
	hl_colors = {
		wave_blue1 = {'black_light', 'waveleft1'},
		wave_blue2 = {'waveleft1', 'waveleft2'},
		wave_blue3 = {'waveleft2', 'waveleft3'},
		wave_blue4 = {'waveleft3', 'waveleft4'},
		wave_blue5 = {'waveleft4', 'waveleft5'},
		wave_blue6 = {'waveleft5', 'black_light'},
	},
	text = function()
		return {
			{sep.right_rounded .. ' ', 'wave_blue1'},
			{sep.right_rounded .. ' ', 'wave_blue2'},
			{sep.right_rounded .. ' ', 'wave_blue3'},
			{sep.right_rounded .. ' ', 'wave_blue4'},
			{sep.right_rounded .. ' ', 'wave_blue5'},
			{sep.right_rounded .. ' ', 'wave_blue6'},
		}
	end
}

-- the blue "wave" on the right
local wave_right={
	hl_colors = {
		wave_blue1 = {'waveright1', 'black_light'},
		wave_blue2 = {'waveright2', 'waveright1'},
		wave_blue3 = {'waveright3', 'waveright2'},
		wave_blue4 = {'waveright4', 'waveright3'},
		wave_blue5 = {'waveright5', 'waveright4'},
		wave_blue6 = {'black_light', 'waveright5'},
	},
	text = function()
		return {
			{' '..sep.left_rounded , 'wave_blue1'},
			{' '..sep.left_rounded , 'wave_blue2'},
			{' '..sep.left_rounded , 'wave_blue3'},
			{' '..sep.left_rounded , 'wave_blue4'},
			{' '..sep.left_rounded , 'wave_blue5'},
			{' '..sep.left_rounded , 'wave_blue6'},
		}
	end
}

-- the markdown bar
local markdown = {
	filetypes={'markdown'},
	active={
		{sep.right_rounded,{'red','black_light'}},
		{' ',{'black_light','black_light'}},
		basic.divider,
		-- the big wave divider
		wave_right,
		-- the name of the file
		basic.file_name,
		-- the big wave divider
		wave_left,
		basic.divider,
		{sep.left_rounded,{'red','black_light'}},
	},
	always_active=true,
	inactive={
		basic.file_name_inactive,
		basic.divider,
		basic.divider,
		basic.line_col_inactive,
		{'',{'white', 'InactiveBg'}},
		basic.progress_inactive,
	}
}
windline.setup({
	colors_name = function(colors)
		colors.FilenameFg = colors.white_light
		colors.FilenameBg = colors.black_light
		colors.arrowwhite = colors.black_light


		colors.arrowleft1 = colors.white
		colors.arrowleft2 = colors.white
		colors.arrowleft3 = colors.white
		colors.arrowleft4 = colors.white
		colors.arrowleft5 = colors.white

		colors.arrowright1 = colors.white
		colors.arrowright2 = colors.white
		colors.arrowright3 = colors.white
		colors.arrowright4 = colors.white
		colors.arrowright5 = colors.white

		colors.wavewhite = colors.white
		colors.waveleft1 = colors.white
		colors.waveleft2 = colors.white
		colors.waveleft3 = colors.white
		colors.waveleft4 = colors.white
		colors.waveleft5 = colors.white

		colors.waveright1 = colors.white
		colors.waveright2 = colors.white
		colors.waveright3 = colors.white
		colors.waveright4 = colors.white
		colors.waveright5 = colors.white

		colors.rainbow = colors.white
		colors.none = ''
		return colors
	end,
	-- the 3 themes (main, markdown and the one in nvim-tree)
	statuslines = {
		default,
		markdown,
		explorer,
	}
})
local blue_colors={
	"#90CAF9",
	"#64B5F6",
	"#42A5F5",
	"#2196F3",
	"#1E88E5",
	"#1976D2",
	"#1565C0",
	"#0D47A1"
}

animation.stop_all()
animation.animation({
   data = {
		{'arrowleft1',effects.rainbow(6)},
		{'arrowleft2',effects.rainbow(5)},
		{'arrowleft3',effects.rainbow(4)},
		{'arrowleft4',effects.rainbow(3)},
		{'arrowleft5',effects.rainbow(2)},
	},
	timeout = nil,
	delay = 200,
	interval = 150,
})



animation.animation({
   data = {
		{'arrowright1',effects.rainbow(2)},
		{'arrowright2',effects.rainbow(3)},
		{'arrowright3',effects.rainbow(4)},
		{'arrowright4',effects.rainbow(5)},
		{'arrowright5',effects.rainbow(6)},
	},
	timeout = nil,
	delay = 200,
	interval = 150,
})



animation.animation({
  data = {
		{'waveleft1',effects.list_color(blue_colors,6)},
		{'waveleft2',effects.list_color(blue_colors,5)},
		{'waveleft3',effects.list_color(blue_colors,4)},
		{'waveleft4',effects.list_color(blue_colors,3)},
		{'waveleft5',effects.list_color(blue_colors,2)},
	},
	timeout = nil,
	delay = 200,
	interval = 150,
})

animation.animation({
  data = {
		{'waveright1',effects.list_color(blue_colors,2)},
		{'waveright2',effects.list_color(blue_colors,3)},
		{'waveright3',effects.list_color(blue_colors,4)},
		{'waveright4',effects.list_color(blue_colors,5)},
		{'waveright5',effects.list_color(blue_colors,6)},
	},
	timeout = nil,
	delay = 200,
	interval = 150,
})

animation.animation({
	data = {
		{ 'rainbow', effects.rainbow() },
	},
	timeout = nil,
	delay = 200,
	interval = 100,
})
