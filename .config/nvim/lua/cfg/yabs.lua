-- __   __ _______ ______  _______
--   \_/   |_____| |_____] |______
--    |    |     | |_____] ______|

local function cmd(command)
  return 'FloatermNew! ' .. command
end

require('yabs'):setup({
  languages = {
    lua = {
      tasks = {
        source = {
          command = 'luafile %',
          type = 'vim',
        },
      },
    },
    c = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'make',
          type = 'vim',
        },
      },
    },
    cpp = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'make',
          type = 'vim',
        },
      },
    },
    make = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'make',
          type = 'vim',
        },
      },
    },
    typescript = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    javascript = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    html = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    css = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    scss = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    sass = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    json = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'yarn start',
          type = 'vim',
        },
      },
    },
    python = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'python3 ./main.py',
          type = 'vim',
        },
      },
    },
    java = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'java ./Program.java',
          type = 'vim',
        },
      },
    },
    zig = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'zig build run',
          type = 'vim',
        },
      },
    },
    rust = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = cmd 'cargo run',
          type = 'vim',
        },
      },
    },
  },
  tasks = { -- Same values as `language.tasks`, but global
    build = {
      command = 'echo building project...',
      output = 'consolation',
    },
    run = {
      command = 'echo running project...',
      output = 'echo',
    },
    optional = {
      command = 'echo runs on condition',
      -- You can specify a condition which determines whether to enable a
      -- specific task (it could be your custom function)
      condition = require('yabs.conditions').file_exists('filename.txt'),
    },
  },
  opts = { -- Same values as `language.opts`
    output_types = {
      quickfix = {
        open_on_run = 'always',
      },
    },
  },
})
