/* description: Parses Simple Sentences. */

/* lexical grammar */

%lex


%%
\s+			return 'S';
"alice"		return 'Noun';
"eats"		return 'Verb';
"apples"	return 'Noun';
"."			return 'Fullstop'

/lex

%% /* language grammar */

Sentences
	: Noun S Verb S Noun Fullstop
		{console.log("Correct Grammar!");}
	;