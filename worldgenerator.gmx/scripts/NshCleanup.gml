// If this isn't called at the end, you'll have like 2 vectors
// full of random crap floating around somewhere in the PC.
// I dunno how this stuff works, but I'd call it to be safe.
// CALL IT DAMMIT!

external_call( global.__nsh_cleanup );