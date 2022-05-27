#include <tree_sitter/parser.h>

#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmissing-field-initializers"
#endif

#define LANGUAGE_VERSION 14
#define STATE_COUNT 32
#define LARGE_STATE_COUNT 2
#define SYMBOL_COUNT 22
#define ALIAS_COUNT 0
#define TOKEN_COUNT 11
#define EXTERNAL_TOKEN_COUNT 1
#define FIELD_COUNT 1
#define MAX_ALIAS_SEQUENCE_LENGTH 4
#define PRODUCTION_ID_COUNT 2

enum {
  sym_atom = 1,
  anon_sym_LPAREN = 2,
  anon_sym_RPAREN = 3,
  anon_sym_EQ_EQ_EQ = 4,
  anon_sym_EQ = 5,
  anon_sym_LF = 6,
  anon_sym_DASH_DASH_DASH = 7,
  anon_sym_DASH = 8,
  sym_field_name = 9,
  sym_raw_source_code = 10,
  sym_source_file = 11,
  sym_rule_pattern = 12,
  sym_header = 13,
  sym_s_expression = 14,
  sym_list = 15,
  sym_header_barrier = 16,
  sym_code_barrier = 17,
  aux_sym_source_file_repeat1 = 18,
  aux_sym_rule_pattern_repeat1 = 19,
  aux_sym_header_barrier_repeat1 = 20,
  aux_sym_code_barrier_repeat1 = 21,
};

static const char * const ts_symbol_names[] = {
  [ts_builtin_sym_end] = "end",
  [sym_atom] = "atom",
  [anon_sym_LPAREN] = "(",
  [anon_sym_RPAREN] = ")",
  [anon_sym_EQ_EQ_EQ] = "===",
  [anon_sym_EQ] = "=",
  [anon_sym_LF] = "\n",
  [anon_sym_DASH_DASH_DASH] = "---",
  [anon_sym_DASH] = "-",
  [sym_field_name] = "field_name",
  [sym_raw_source_code] = "raw_source_code",
  [sym_source_file] = "source_file",
  [sym_rule_pattern] = "rule_pattern",
  [sym_header] = "header",
  [sym_s_expression] = "s_expression",
  [sym_list] = "list",
  [sym_header_barrier] = "header_barrier",
  [sym_code_barrier] = "code_barrier",
  [aux_sym_source_file_repeat1] = "source_file_repeat1",
  [aux_sym_rule_pattern_repeat1] = "rule_pattern_repeat1",
  [aux_sym_header_barrier_repeat1] = "header_barrier_repeat1",
  [aux_sym_code_barrier_repeat1] = "code_barrier_repeat1",
};

static const TSSymbol ts_symbol_map[] = {
  [ts_builtin_sym_end] = ts_builtin_sym_end,
  [sym_atom] = sym_atom,
  [anon_sym_LPAREN] = anon_sym_LPAREN,
  [anon_sym_RPAREN] = anon_sym_RPAREN,
  [anon_sym_EQ_EQ_EQ] = anon_sym_EQ_EQ_EQ,
  [anon_sym_EQ] = anon_sym_EQ,
  [anon_sym_LF] = anon_sym_LF,
  [anon_sym_DASH_DASH_DASH] = anon_sym_DASH_DASH_DASH,
  [anon_sym_DASH] = anon_sym_DASH,
  [sym_field_name] = sym_field_name,
  [sym_raw_source_code] = sym_raw_source_code,
  [sym_source_file] = sym_source_file,
  [sym_rule_pattern] = sym_rule_pattern,
  [sym_header] = sym_header,
  [sym_s_expression] = sym_s_expression,
  [sym_list] = sym_list,
  [sym_header_barrier] = sym_header_barrier,
  [sym_code_barrier] = sym_code_barrier,
  [aux_sym_source_file_repeat1] = aux_sym_source_file_repeat1,
  [aux_sym_rule_pattern_repeat1] = aux_sym_rule_pattern_repeat1,
  [aux_sym_header_barrier_repeat1] = aux_sym_header_barrier_repeat1,
  [aux_sym_code_barrier_repeat1] = aux_sym_code_barrier_repeat1,
};

static const TSSymbolMetadata ts_symbol_metadata[] = {
  [ts_builtin_sym_end] = {
    .visible = false,
    .named = true,
  },
  [sym_atom] = {
    .visible = true,
    .named = true,
  },
  [anon_sym_LPAREN] = {
    .visible = true,
    .named = false,
  },
  [anon_sym_RPAREN] = {
    .visible = true,
    .named = false,
  },
  [anon_sym_EQ_EQ_EQ] = {
    .visible = true,
    .named = false,
  },
  [anon_sym_EQ] = {
    .visible = true,
    .named = false,
  },
  [anon_sym_LF] = {
    .visible = true,
    .named = false,
  },
  [anon_sym_DASH_DASH_DASH] = {
    .visible = true,
    .named = false,
  },
  [anon_sym_DASH] = {
    .visible = true,
    .named = false,
  },
  [sym_field_name] = {
    .visible = true,
    .named = true,
  },
  [sym_raw_source_code] = {
    .visible = true,
    .named = true,
  },
  [sym_source_file] = {
    .visible = true,
    .named = true,
  },
  [sym_rule_pattern] = {
    .visible = true,
    .named = true,
  },
  [sym_header] = {
    .visible = true,
    .named = true,
  },
  [sym_s_expression] = {
    .visible = true,
    .named = true,
  },
  [sym_list] = {
    .visible = true,
    .named = true,
  },
  [sym_header_barrier] = {
    .visible = true,
    .named = true,
  },
  [sym_code_barrier] = {
    .visible = true,
    .named = true,
  },
  [aux_sym_source_file_repeat1] = {
    .visible = false,
    .named = false,
  },
  [aux_sym_rule_pattern_repeat1] = {
    .visible = false,
    .named = false,
  },
  [aux_sym_header_barrier_repeat1] = {
    .visible = false,
    .named = false,
  },
  [aux_sym_code_barrier_repeat1] = {
    .visible = false,
    .named = false,
  },
};

enum {
  field_rule_name = 1,
};

static const char * const ts_field_names[] = {
  [0] = NULL,
  [field_rule_name] = "rule_name",
};

static const TSFieldMapSlice ts_field_map_slices[PRODUCTION_ID_COUNT] = {
  [1] = {.index = 0, .length = 1},
};

static const TSFieldMapEntry ts_field_map_entries[] = {
  [0] =
    {field_rule_name, 1},
};

static const TSSymbol ts_alias_sequences[PRODUCTION_ID_COUNT][MAX_ALIAS_SEQUENCE_LENGTH] = {
  [0] = {0},
};

static const uint16_t ts_non_terminal_alias_map[] = {
  0,
};

static const TSStateId ts_primary_state_ids[STATE_COUNT] = {
  [0] = 0,
  [1] = 1,
  [2] = 2,
  [3] = 3,
  [4] = 4,
  [5] = 5,
  [6] = 6,
  [7] = 7,
  [8] = 8,
  [9] = 9,
  [10] = 10,
  [11] = 11,
  [12] = 12,
  [13] = 13,
  [14] = 14,
  [15] = 15,
  [16] = 16,
  [17] = 17,
  [18] = 18,
  [19] = 19,
  [20] = 20,
  [21] = 21,
  [22] = 15,
  [23] = 14,
  [24] = 24,
  [25] = 25,
  [26] = 26,
  [27] = 27,
  [28] = 28,
  [29] = 29,
  [30] = 26,
  [31] = 25,
};

static bool ts_lex(TSLexer *lexer, TSStateId state) {
  START_LEXER();
  eof = lexer->eof(lexer);
  switch (state) {
    case 0:
      if (eof) ADVANCE(7);
      if (lookahead == '\t' ||
          lookahead == ' ') SKIP(0)
      if (lookahead == '\n') ADVANCE(13);
      if (lookahead == '(') ADVANCE(9);
      if (lookahead == ')') ADVANCE(10);
      if (lookahead == '-') ADVANCE(15);
      if (lookahead == '=') ADVANCE(12);
      END_STATE();
    case 1:
      if (lookahead == '-') ADVANCE(14);
      END_STATE();
    case 2:
      if (lookahead == '-') ADVANCE(1);
      END_STATE();
    case 3:
      if (lookahead == '=') ADVANCE(11);
      END_STATE();
    case 4:
      if (lookahead == '=') ADVANCE(3);
      END_STATE();
    case 5:
      if (lookahead == '\t' ||
          lookahead == ' ') SKIP(5)
      if (lookahead == '\n') ADVANCE(13);
      if (lookahead == '-') ADVANCE(2);
      END_STATE();
    case 6:
      if (eof) ADVANCE(7);
      if (lookahead == '\t' ||
          lookahead == ' ') SKIP(6)
      if (lookahead == '\n') ADVANCE(13);
      if (lookahead == '(') ADVANCE(9);
      if (lookahead == ')') ADVANCE(10);
      if (lookahead == '=') ADVANCE(4);
      if (lookahead == '-' ||
          ('0' <= lookahead && lookahead <= ':') ||
          ('@' <= lookahead && lookahead <= 'Z') ||
          lookahead == '_' ||
          ('a' <= lookahead && lookahead <= 'z') ||
          (192 <= lookahead && lookahead <= 214) ||
          (216 <= lookahead && lookahead <= 246) ||
          (248 <= lookahead && lookahead <= 255)) ADVANCE(8);
      END_STATE();
    case 7:
      ACCEPT_TOKEN(ts_builtin_sym_end);
      END_STATE();
    case 8:
      ACCEPT_TOKEN(sym_atom);
      if (lookahead == '-' ||
          ('0' <= lookahead && lookahead <= ':') ||
          ('@' <= lookahead && lookahead <= 'Z') ||
          lookahead == '_' ||
          ('a' <= lookahead && lookahead <= 'z') ||
          (192 <= lookahead && lookahead <= 214) ||
          (216 <= lookahead && lookahead <= 246) ||
          (248 <= lookahead && lookahead <= 255)) ADVANCE(8);
      END_STATE();
    case 9:
      ACCEPT_TOKEN(anon_sym_LPAREN);
      END_STATE();
    case 10:
      ACCEPT_TOKEN(anon_sym_RPAREN);
      END_STATE();
    case 11:
      ACCEPT_TOKEN(anon_sym_EQ_EQ_EQ);
      END_STATE();
    case 12:
      ACCEPT_TOKEN(anon_sym_EQ);
      END_STATE();
    case 13:
      ACCEPT_TOKEN(anon_sym_LF);
      END_STATE();
    case 14:
      ACCEPT_TOKEN(anon_sym_DASH_DASH_DASH);
      END_STATE();
    case 15:
      ACCEPT_TOKEN(anon_sym_DASH);
      END_STATE();
    case 16:
      ACCEPT_TOKEN(sym_field_name);
      if (lookahead == '\t' ||
          lookahead == ' ') ADVANCE(16);
      if (lookahead != 0 &&
          lookahead != '\n') ADVANCE(17);
      END_STATE();
    case 17:
      ACCEPT_TOKEN(sym_field_name);
      if (lookahead != 0 &&
          lookahead != '\n') ADVANCE(17);
      END_STATE();
    default:
      return false;
  }
}

static const TSLexMode ts_lex_modes[STATE_COUNT] = {
  [0] = {.lex_state = 0, .external_lex_state = 1},
  [1] = {.lex_state = 6},
  [2] = {.lex_state = 6},
  [3] = {.lex_state = 6},
  [4] = {.lex_state = 6},
  [5] = {.lex_state = 6},
  [6] = {.lex_state = 6},
  [7] = {.lex_state = 6},
  [8] = {.lex_state = 6},
  [9] = {.lex_state = 6},
  [10] = {.lex_state = 6},
  [11] = {.lex_state = 6},
  [12] = {.lex_state = 6},
  [13] = {.lex_state = 6},
  [14] = {.lex_state = 0},
  [15] = {.lex_state = 0},
  [16] = {.lex_state = 0},
  [17] = {.lex_state = 0},
  [18] = {.lex_state = 0},
  [19] = {.lex_state = 6},
  [20] = {.lex_state = 5},
  [21] = {.lex_state = 0},
  [22] = {.lex_state = 0},
  [23] = {.lex_state = 0},
  [24] = {.lex_state = 0, .external_lex_state = 1},
  [25] = {.lex_state = 16},
  [26] = {.lex_state = 16},
  [27] = {.lex_state = 16},
  [28] = {.lex_state = 0, .external_lex_state = 1},
  [29] = {.lex_state = 0},
  [30] = {.lex_state = 0, .external_lex_state = 1},
  [31] = {.lex_state = 0, .external_lex_state = 1},
};

enum {
  ts_external_token_raw_source_code = 0,
};

static const TSSymbol ts_external_scanner_symbol_map[EXTERNAL_TOKEN_COUNT] = {
  [ts_external_token_raw_source_code] = sym_raw_source_code,
};

static const bool ts_external_scanner_states[2][EXTERNAL_TOKEN_COUNT] = {
  [1] = {
    [ts_external_token_raw_source_code] = true,
  },
};

static const uint16_t ts_parse_table[LARGE_STATE_COUNT][SYMBOL_COUNT] = {
  [0] = {
    [ts_builtin_sym_end] = ACTIONS(1),
    [anon_sym_LPAREN] = ACTIONS(1),
    [anon_sym_RPAREN] = ACTIONS(1),
    [anon_sym_EQ] = ACTIONS(1),
    [anon_sym_LF] = ACTIONS(3),
    [anon_sym_DASH] = ACTIONS(1),
    [sym_raw_source_code] = ACTIONS(1),
  },
  [1] = {
    [sym_source_file] = STATE(29),
    [sym_rule_pattern] = STATE(6),
    [sym_header] = STATE(28),
    [sym_header_barrier] = STATE(27),
    [aux_sym_source_file_repeat1] = STATE(6),
    [ts_builtin_sym_end] = ACTIONS(5),
    [anon_sym_EQ_EQ_EQ] = ACTIONS(7),
    [anon_sym_LF] = ACTIONS(3),
  },
};

static const uint16_t ts_small_parse_table[] = {
  [0] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(11), 1,
      sym_atom,
    ACTIONS(14), 1,
      anon_sym_LPAREN,
    STATE(11), 1,
      sym_list,
    STATE(2), 2,
      sym_s_expression,
      aux_sym_rule_pattern_repeat1,
    ACTIONS(9), 3,
      ts_builtin_sym_end,
      anon_sym_RPAREN,
      anon_sym_EQ_EQ_EQ,
  [22] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(19), 1,
      sym_atom,
    ACTIONS(21), 1,
      anon_sym_LPAREN,
    STATE(11), 1,
      sym_list,
    ACTIONS(17), 2,
      ts_builtin_sym_end,
      anon_sym_EQ_EQ_EQ,
    STATE(4), 2,
      sym_s_expression,
      aux_sym_rule_pattern_repeat1,
  [43] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(19), 1,
      sym_atom,
    ACTIONS(21), 1,
      anon_sym_LPAREN,
    STATE(11), 1,
      sym_list,
    ACTIONS(23), 2,
      ts_builtin_sym_end,
      anon_sym_EQ_EQ_EQ,
    STATE(2), 2,
      sym_s_expression,
      aux_sym_rule_pattern_repeat1,
  [64] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(19), 1,
      sym_atom,
    ACTIONS(21), 1,
      anon_sym_LPAREN,
    ACTIONS(25), 1,
      anon_sym_RPAREN,
    STATE(11), 1,
      sym_list,
    STATE(2), 2,
      sym_s_expression,
      aux_sym_rule_pattern_repeat1,
  [84] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(7), 1,
      anon_sym_EQ_EQ_EQ,
    ACTIONS(27), 1,
      ts_builtin_sym_end,
    STATE(27), 1,
      sym_header_barrier,
    STATE(28), 1,
      sym_header,
    STATE(8), 2,
      sym_rule_pattern,
      aux_sym_source_file_repeat1,
  [104] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(19), 1,
      sym_atom,
    ACTIONS(21), 1,
      anon_sym_LPAREN,
    ACTIONS(29), 1,
      anon_sym_RPAREN,
    STATE(11), 1,
      sym_list,
    STATE(5), 2,
      sym_s_expression,
      aux_sym_rule_pattern_repeat1,
  [124] = 6,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(31), 1,
      ts_builtin_sym_end,
    ACTIONS(33), 1,
      anon_sym_EQ_EQ_EQ,
    STATE(27), 1,
      sym_header_barrier,
    STATE(28), 1,
      sym_header,
    STATE(8), 2,
      sym_rule_pattern,
      aux_sym_source_file_repeat1,
  [144] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(36), 5,
      ts_builtin_sym_end,
      sym_atom,
      anon_sym_LPAREN,
      anon_sym_RPAREN,
      anon_sym_EQ_EQ_EQ,
  [155] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(38), 5,
      ts_builtin_sym_end,
      sym_atom,
      anon_sym_LPAREN,
      anon_sym_RPAREN,
      anon_sym_EQ_EQ_EQ,
  [166] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(40), 5,
      ts_builtin_sym_end,
      sym_atom,
      anon_sym_LPAREN,
      anon_sym_RPAREN,
      anon_sym_EQ_EQ_EQ,
  [177] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(42), 4,
      ts_builtin_sym_end,
      sym_atom,
      anon_sym_LPAREN,
      anon_sym_EQ_EQ_EQ,
  [187] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(44), 4,
      ts_builtin_sym_end,
      sym_atom,
      anon_sym_LPAREN,
      anon_sym_EQ_EQ_EQ,
  [197] = 3,
    ACTIONS(46), 1,
      anon_sym_EQ,
    ACTIONS(48), 1,
      anon_sym_LF,
    STATE(18), 1,
      aux_sym_header_barrier_repeat1,
  [207] = 3,
    ACTIONS(50), 1,
      anon_sym_EQ,
    ACTIONS(52), 1,
      anon_sym_LF,
    STATE(14), 1,
      aux_sym_header_barrier_repeat1,
  [217] = 3,
    ACTIONS(54), 1,
      anon_sym_LF,
    ACTIONS(56), 1,
      anon_sym_DASH,
    STATE(17), 1,
      aux_sym_code_barrier_repeat1,
  [227] = 3,
    ACTIONS(58), 1,
      anon_sym_LF,
    ACTIONS(60), 1,
      anon_sym_DASH,
    STATE(21), 1,
      aux_sym_code_barrier_repeat1,
  [237] = 3,
    ACTIONS(62), 1,
      anon_sym_EQ,
    ACTIONS(65), 1,
      anon_sym_LF,
    STATE(18), 1,
      aux_sym_header_barrier_repeat1,
  [247] = 3,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(67), 1,
      anon_sym_EQ_EQ_EQ,
    STATE(24), 1,
      sym_header_barrier,
  [257] = 3,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(69), 1,
      anon_sym_DASH_DASH_DASH,
    STATE(3), 1,
      sym_code_barrier,
  [267] = 3,
    ACTIONS(71), 1,
      anon_sym_LF,
    ACTIONS(73), 1,
      anon_sym_DASH,
    STATE(21), 1,
      aux_sym_code_barrier_repeat1,
  [277] = 3,
    ACTIONS(76), 1,
      anon_sym_EQ,
    ACTIONS(78), 1,
      anon_sym_LF,
    STATE(23), 1,
      aux_sym_header_barrier_repeat1,
  [287] = 3,
    ACTIONS(46), 1,
      anon_sym_EQ,
    ACTIONS(80), 1,
      anon_sym_LF,
    STATE(18), 1,
      aux_sym_header_barrier_repeat1,
  [297] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(82), 1,
      sym_raw_source_code,
  [304] = 2,
    ACTIONS(84), 1,
      anon_sym_LF,
    ACTIONS(86), 1,
      sym_field_name,
  [311] = 2,
    ACTIONS(84), 1,
      anon_sym_LF,
    ACTIONS(88), 1,
      sym_field_name,
  [318] = 2,
    ACTIONS(84), 1,
      anon_sym_LF,
    ACTIONS(90), 1,
      sym_field_name,
  [325] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(92), 1,
      sym_raw_source_code,
  [332] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(94), 1,
      ts_builtin_sym_end,
  [339] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(88), 1,
      sym_raw_source_code,
  [346] = 2,
    ACTIONS(3), 1,
      anon_sym_LF,
    ACTIONS(86), 1,
      sym_raw_source_code,
};

static const uint32_t ts_small_parse_table_map[] = {
  [SMALL_STATE(2)] = 0,
  [SMALL_STATE(3)] = 22,
  [SMALL_STATE(4)] = 43,
  [SMALL_STATE(5)] = 64,
  [SMALL_STATE(6)] = 84,
  [SMALL_STATE(7)] = 104,
  [SMALL_STATE(8)] = 124,
  [SMALL_STATE(9)] = 144,
  [SMALL_STATE(10)] = 155,
  [SMALL_STATE(11)] = 166,
  [SMALL_STATE(12)] = 177,
  [SMALL_STATE(13)] = 187,
  [SMALL_STATE(14)] = 197,
  [SMALL_STATE(15)] = 207,
  [SMALL_STATE(16)] = 217,
  [SMALL_STATE(17)] = 227,
  [SMALL_STATE(18)] = 237,
  [SMALL_STATE(19)] = 247,
  [SMALL_STATE(20)] = 257,
  [SMALL_STATE(21)] = 267,
  [SMALL_STATE(22)] = 277,
  [SMALL_STATE(23)] = 287,
  [SMALL_STATE(24)] = 297,
  [SMALL_STATE(25)] = 304,
  [SMALL_STATE(26)] = 311,
  [SMALL_STATE(27)] = 318,
  [SMALL_STATE(28)] = 325,
  [SMALL_STATE(29)] = 332,
  [SMALL_STATE(30)] = 339,
  [SMALL_STATE(31)] = 346,
};

static const TSParseActionEntry ts_parse_actions[] = {
  [0] = {.entry = {.count = 0, .reusable = false}},
  [1] = {.entry = {.count = 1, .reusable = false}}, RECOVER(),
  [3] = {.entry = {.count = 1, .reusable = true}}, SHIFT_EXTRA(),
  [5] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_source_file, 0),
  [7] = {.entry = {.count = 1, .reusable = true}}, SHIFT(15),
  [9] = {.entry = {.count = 1, .reusable = true}}, REDUCE(aux_sym_rule_pattern_repeat1, 2),
  [11] = {.entry = {.count = 2, .reusable = true}}, REDUCE(aux_sym_rule_pattern_repeat1, 2), SHIFT_REPEAT(11),
  [14] = {.entry = {.count = 2, .reusable = true}}, REDUCE(aux_sym_rule_pattern_repeat1, 2), SHIFT_REPEAT(7),
  [17] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_rule_pattern, 3),
  [19] = {.entry = {.count = 1, .reusable = true}}, SHIFT(11),
  [21] = {.entry = {.count = 1, .reusable = true}}, SHIFT(7),
  [23] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_rule_pattern, 4),
  [25] = {.entry = {.count = 1, .reusable = true}}, SHIFT(9),
  [27] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_source_file, 1),
  [29] = {.entry = {.count = 1, .reusable = true}}, SHIFT(10),
  [31] = {.entry = {.count = 1, .reusable = true}}, REDUCE(aux_sym_source_file_repeat1, 2),
  [33] = {.entry = {.count = 2, .reusable = true}}, REDUCE(aux_sym_source_file_repeat1, 2), SHIFT_REPEAT(15),
  [36] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_list, 3),
  [38] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_list, 2),
  [40] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_s_expression, 1),
  [42] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_code_barrier, 3),
  [44] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_code_barrier, 2),
  [46] = {.entry = {.count = 1, .reusable = true}}, SHIFT(18),
  [48] = {.entry = {.count = 1, .reusable = true}}, SHIFT(25),
  [50] = {.entry = {.count = 1, .reusable = true}}, SHIFT(14),
  [52] = {.entry = {.count = 1, .reusable = true}}, SHIFT(26),
  [54] = {.entry = {.count = 1, .reusable = true}}, SHIFT(13),
  [56] = {.entry = {.count = 1, .reusable = true}}, SHIFT(17),
  [58] = {.entry = {.count = 1, .reusable = true}}, SHIFT(12),
  [60] = {.entry = {.count = 1, .reusable = true}}, SHIFT(21),
  [62] = {.entry = {.count = 2, .reusable = true}}, REDUCE(aux_sym_header_barrier_repeat1, 2), SHIFT_REPEAT(18),
  [65] = {.entry = {.count = 1, .reusable = true}}, REDUCE(aux_sym_header_barrier_repeat1, 2),
  [67] = {.entry = {.count = 1, .reusable = true}}, SHIFT(22),
  [69] = {.entry = {.count = 1, .reusable = true}}, SHIFT(16),
  [71] = {.entry = {.count = 1, .reusable = true}}, REDUCE(aux_sym_code_barrier_repeat1, 2),
  [73] = {.entry = {.count = 2, .reusable = true}}, REDUCE(aux_sym_code_barrier_repeat1, 2), SHIFT_REPEAT(21),
  [76] = {.entry = {.count = 1, .reusable = true}}, SHIFT(23),
  [78] = {.entry = {.count = 1, .reusable = true}}, SHIFT(30),
  [80] = {.entry = {.count = 1, .reusable = true}}, SHIFT(31),
  [82] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_header, 3, .production_id = 1),
  [84] = {.entry = {.count = 1, .reusable = false}}, SHIFT_EXTRA(),
  [86] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_header_barrier, 3),
  [88] = {.entry = {.count = 1, .reusable = true}}, REDUCE(sym_header_barrier, 2),
  [90] = {.entry = {.count = 1, .reusable = true}}, SHIFT(19),
  [92] = {.entry = {.count = 1, .reusable = true}}, SHIFT(20),
  [94] = {.entry = {.count = 1, .reusable = true}},  ACCEPT_INPUT(),
};

#ifdef __cplusplus
extern "C" {
#endif
void *tree_sitter_tstl_external_scanner_create(void);
void tree_sitter_tstl_external_scanner_destroy(void *);
bool tree_sitter_tstl_external_scanner_scan(void *, TSLexer *, const bool *);
unsigned tree_sitter_tstl_external_scanner_serialize(void *, char *);
void tree_sitter_tstl_external_scanner_deserialize(void *, const char *, unsigned);

#ifdef _WIN32
#define extern __declspec(dllexport)
#endif

extern const TSLanguage *tree_sitter_tstl(void) {
  static const TSLanguage language = {
    .version = LANGUAGE_VERSION,
    .symbol_count = SYMBOL_COUNT,
    .alias_count = ALIAS_COUNT,
    .token_count = TOKEN_COUNT,
    .external_token_count = EXTERNAL_TOKEN_COUNT,
    .state_count = STATE_COUNT,
    .large_state_count = LARGE_STATE_COUNT,
    .production_id_count = PRODUCTION_ID_COUNT,
    .field_count = FIELD_COUNT,
    .max_alias_sequence_length = MAX_ALIAS_SEQUENCE_LENGTH,
    .parse_table = &ts_parse_table[0][0],
    .small_parse_table = ts_small_parse_table,
    .small_parse_table_map = ts_small_parse_table_map,
    .parse_actions = ts_parse_actions,
    .symbol_names = ts_symbol_names,
    .field_names = ts_field_names,
    .field_map_slices = ts_field_map_slices,
    .field_map_entries = ts_field_map_entries,
    .symbol_metadata = ts_symbol_metadata,
    .public_symbol_map = ts_symbol_map,
    .alias_map = ts_non_terminal_alias_map,
    .alias_sequences = &ts_alias_sequences[0][0],
    .lex_modes = ts_lex_modes,
    .lex_fn = ts_lex,
    .external_scanner = {
      &ts_external_scanner_states[0][0],
      ts_external_scanner_symbol_map,
      tree_sitter_tstl_external_scanner_create,
      tree_sitter_tstl_external_scanner_destroy,
      tree_sitter_tstl_external_scanner_scan,
      tree_sitter_tstl_external_scanner_serialize,
      tree_sitter_tstl_external_scanner_deserialize,
    },
    .primary_state_ids = ts_primary_state_ids,
  };
  return &language;
}
#ifdef __cplusplus
}
#endif
