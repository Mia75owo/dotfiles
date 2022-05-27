-- __   __ _______ ______  _______
--   \_/   |_____| |_____] |______
--    |    |     | |_____] ______|

require('yabs'):setup({
  languages = {
    lua = {
      tasks = {
        run = {
          command = 'luafile %',
          type = 'vim',
        },
      },
    },
    c = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'make',
        },
      },
    },
    cpp = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'make',
        },
      },
    },
    make = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'make',
        },
      },
    },
    typescript = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    javascript = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    html = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    css = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    scss = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    sass = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    json = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'yarn start',
        },
      },
    },
    python = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'python3 ./main.py',
        },
      },
    },
    java = {
      default_task = 'build_and_run',
      tasks = {
        build_and_run = {
          command = 'java ./Program.java',
        },
      },
    }
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
