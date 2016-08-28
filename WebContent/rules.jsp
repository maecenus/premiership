<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rules</title>
</head>
<body>
	<nav>
		<h3>
			<a href="index.jsp">Login</a> | <a href="standings.jsp">Standings</a>
			| <a href="MakePicks2.jsp">Make Picks!</a> | <a href="rules.jsp">Rules</a>
		</h3>
	</nav>
	
	<header>Welcome ${person.username}, these are the rules!!</header>
	
	<p>
		Being the first year of this friendly competition, it's possible that
		the structure is less than perfect.<br> If situations arise that
		are not included in the following rules, the league will
		determine the appropriate course of action.<br> That being said,
		please make note of any and all possible pitfalls that you may see. If
		there are potential problems, I'd like to address them sooner than
		later.<br> -The Commish
	</p>
	<ol>
		<li>Each week every entry MUST pick a winner for all 10 matches
			and rate them 1 to 10 based on confidence (10 being most confident). A week is defined as the
			set of matches on the original schedule. Sometimes matches get moved
			due to scheduling conflicts. The original slate of 10 games is that
			"Week."
		</li>
		<li>Points are awarded for a correct pick according to confidence
			value and subtracted for an incorrect pick. Draws are 0, neither
			awarded not subtracted any value. Negative scoring weeks are allowed.
		</li>
		<li>The weekly high-scorer gets an extra 10 points and the weekly low-scorer loses an extra
			10 points.
		</li>
		<li>Anyone with a "clean sheet" for a week (no losses, only wins
			and draws) gets a bonus of the number of wins times a multiplier of
			10.
		</li>
		<li>Every entry must pick each team to win at least 5 times over the course of the
			entire season.
		</li>
	</ol>
</body>
</html>