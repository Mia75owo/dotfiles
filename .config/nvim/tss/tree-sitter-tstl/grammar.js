const PARENS_LEFT = "(";
const PARENS_RIGHT = ")";
const delim = (open, x, close) => seq(open, x, close);

module.exports = grammar({
	name: 'tstl',

	externals: $ => [ $.raw_source_code ],

	extras: $ => [
		'\n',
		' ',
		'\t'
	],

	rules: {
		source_file: $ => repeat($.rule_pattern),

		rule_pattern: $ => seq(
			$.header,
			$.raw_source_code,
			$.code_barrier,
			repeat($.s_expression),
		),

		header: $ => seq(
			$.header_barrier,
			field("rule_name", $.field_name),
			$.header_barrier,
		),

		// s_expressions
		s_expression: ($) => choice($.atom, $.list),
    atom: ($) => /[_@a-zA-Z0-9\xC0-\xD6\xD8-\xDE\xDF-\xF6\xF8-\xFF:-]+/,
    list: ($) => delim(PARENS_LEFT, repeat($.s_expression), PARENS_RIGHT),

		header_barrier: $ => seq("===", repeat("="), '\n'),
		code_barrier: $ => seq("---", repeat("-"), '\n'),

		field_name: $ => /.*/,
	}
})
