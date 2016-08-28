<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Make Picks!</title>
        <link rel="stylesheet" type="text/css" href="picksStyles.css">
        <!--<script>
            src = "makePicks.js"
            type = "text/javascript"
        </script>-->
    </head>

    <body>
        <nav>
            <h3>
			<a href="index.jsp">Login</a> | <a href="standings.jsp">Standings</a>
			| <a href="makePicks.jsp">Make Picks!</a> | <a href="rules.jsp">Rules</a>
		</h3>
        </nav>

        <header>This is where you fools make picks!</header>
<form method="post" action="PicksServlet">
        <table border="2">
            <caption>
                <strong>
                Week 3
				</strong>
            </caption>
            <col width="45%">
                <col width="45%">
                    <col width="10%">
                        <tr>
                            <th>Home Team</th>
                            <th>Away Team</th>
                            <th>Points</th>
                        </tr>
                        <tr>
                            <!--<form method="post" action="PicksServlet">-->
                                <td>
                                    <input type="radio" name="g1" value="Hull" checked> Hull
                                </td>
                                <td>
                                    <input type="radio" name="g1" value="Leicester"> Leicester
                                </td>
                                <!--</form>-->
                                <td>
                                    <select name="c1">
                                        <option value="10"></option>
                                        <option value="10">10</option>
                                        <option value="9">9</option>
                                        <option value="8">8</option>
                                        <option value="7">7</option>
                                        <option value="6">6</option>
                                        <option value="5">5</option>
                                        <option value="4">4</option>
                                        <option value="3">3</option>
                                        <option value="2">2</option>
                                        <option value="1">1</option>
                                    </select>
                                </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g2" value="Burnley" checked> Burnley
                            </td>
                            <td>
                                <input type="radio" name="g2" value="Swansea"> Swansea
                            </td>
                            <!--</form>-->
                            <td>
                                <select name="c2" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="9"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g3" value="Crystal Palace" checked> Crystal Palace</td>
                            <td>
                                <input type="radio" name="g3" value="West Brom"> West Brom</td>
                            <!--</form>-->
                            <td>
                                <select name="c3" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="8"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g4" value="Everton" checked> Everton
                            </td>
                            <td>
                                <input type="radio" name="g4" value="Spurs"> Spurs
                            </td>
                            <!--</form>-->
                            <td>
                                <select name="c4" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="7"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g5" value="Middlesbrough" checked> Middlesbrough</td>
                            <td>
                                <input type="radio" name="g5" value="Stoke"> Stoke
                            </td>
                            <!--</form>-->
                            <td>
                                <select name="c5" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="6"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g6" value="Southampton" checked> Southampton
                            </td>
                            <td>
                                <input type="radio" name="g6" value="Watford"> Watford
                            </td>
                            <!--</form>-->
                            <td>
                                <select name="c6" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="5"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g7" value="Man City" checked> Man City</td>
                            <td>
                                <input type="radio" name="g7" value="Sunderland"> Sunderland
                            </td>
                            <!--</form>-->
                            <td>
                                <select name="c7" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="4"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g8" value="Bournemouth" checked> Bournemouth
                            </td>
                            <td>
                                <input type="radio" name="g8" value="Man Utd"> Man Utd</td>
                            <!--</form>-->
                            <td>
                                <select name="c8" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="3"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g9" value="Arsenal" checked> Arsenal
                            </td>
                            <td>
                                <input type="radio" name="g9" value="Liverpool"> Liverpool
                            </td>
                            <!--</form>-->
                            <td>
                                <select name="c9" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="2"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <!--<form method="post" action="">-->
                            <td>
                                <input type="radio" name="g10" value="Chelsea" checked> Chelsea
                            </td>
                            <td>
                                <input type="radio" name="g10" value="West Ham"> West Ham</td>
                            <!--</form>-->
                            <td>
                                <select name="c10" onmouseover="AdjustConfidencePointSelection(this);">
                                    <option value="1"></option>
                                    <option value="10">10</option>
                                    <option value="9">9</option>
                                    <option value="8">8</option>
                                    <option value="7">7</option>
                                    <option value="6">6</option>
                                    <option value="5">5</option>
                                    <option value="4">4</option>
                                    <option value="3">3</option>
                                    <option value="2">2</option>
                                    <option value="1">1</option>
                                </select>
                            </td>
                        </tr>
            	</table>
            <br>
            <input type="submit" value="Submit Picks">
        </form>
        <br>
        <!--<input type="button" value="Submit Picks" onClick="submitPicks()">-->
    </body>

    </html>