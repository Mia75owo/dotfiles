#include <tree_sitter/parser.h>

#include <cstring>
#include <iostream>

extern "C" {

enum TokenType { RAW_SOURCE_CODE };

void *tree_sitter_tstl_external_scanner_create() { return NULL; }
void tree_sitter_tstl_external_scanner_destroy(void *p) {}
unsigned tree_sitter_tstl_external_scanner_serialize(void *p, char *buffer) { return 0; }
void tree_sitter_tstl_external_scanner_deserialize(void *p, const char *b, unsigned n) {}
void tree_sitter_tstl_external_scanner_reset(void *p) {}

static void advance(TSLexer *lexer) { lexer->advance(lexer, false); }
static void skip(TSLexer *lexer) { lexer->advance(lexer, true); }

// Match everything till it hits a string
static bool till_string(TSLexer *lexer, const char *str) {
  uint32_t index = 0;
  const uint32_t len = std::strlen(str);

  while (true) {
    lexer->mark_end(lexer);
    while (lexer->lookahead == str[index]) {
      advance(lexer);
      if (++index > len - 1) return true;
    }

    if (lexer->lookahead == '\0') return false;
    advance(lexer);
  }
}

static bool scan_source_code(TSLexer *lexer) {
  lexer->result_symbol = RAW_SOURCE_CODE;

  // Check for the string
  if (till_string(lexer, (const char *)"---")) return true;
  return false;
}

bool tree_sitter_tstl_external_scanner_scan(void *payload, TSLexer *lexer, const bool *valid_symbols) {
  if (valid_symbols[RAW_SOURCE_CODE]) return scan_source_code(lexer);
  return false;
}
}
