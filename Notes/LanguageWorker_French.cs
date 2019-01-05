using System.Text.RegularExpressions;

public class LanguageWorker_French : LanguageWorker
{
	public override string WithIndefiniteArticle(string str, Gender gender, bool plural = false, bool name = false)
	{
		//Names don't get articles
		if( name )
			return str;

		if( plural )
			return "des " + str;

		return (gender == Gender.Female ? "une " : "un ") + str;
	}

	public override string WithDefiniteArticle(string str, Gender gender, bool plural = false, bool name = false)
	{
		if( str.NullOrEmpty() )
			return str;

		//Names don't get articles
		if( name )
			return str;

		if( plural )
			return "les " + str;

		char first = str[0];

		if( IsVowel(first) )
			return "l'" + str;

		return (gender == Gender.Female ? "la " : "le ") + str;
	}

	public override string OrdinalNumber(int number, Gender gender = Gender.None)
	{
		return number == 1 ? number + "er" : number + "e";
	}

	public override string Pluralize(string str, Gender gender, int count = -1)
	{
		if( str.NullOrEmpty() )
			return str;

		// TODO: should str be lowercased before the tests?

		// words ending with "s", "x" or "z": do not change anything
		char last = str[str.Length - 1];
		if( last == 's' || last == 'x' || last == 'z' )
			return str;

		// exceptions to the next rules; only test words that could possibly be found in Rimworld
		switch( str ) {
			// "bail", "corail", "émail", "gemmail", "soupirail", "travail", "vantail", "vitrail": replace "ail" by "aux"
			case "travail":
				return str.Substring(0, str.Length - 3) + "aux";
			// "bleu", "émeu", "landau", "lieu", "pneu", "sarrau", "bal", "banal", "fatal", "final", "festival": append "s"
			case "bleu":
			case "émeu":
			case "lieu":
			case "banal":
			case "fatal":
			case "final":
				return str + "s";
			// "bijou", "caillou", "chou", "genou", "hibou", "joujou", "pou": append "x"
			case "bijou":
			case "caillou":
			case "genou":
				return str + "x";
		}

		// words ending with "al": replace "al" by "aux"
		if( str.EndsWith("al") )
			return str.Substring(0, str.Length - 2) + "aux";

		// words ending with "au" or "eu": append "x"
		if( str.EndsWith("au") | str.EndsWith("eu") )
			return str + "x";

		// general case: append s
		return str + "s";
	}

	public override string PostProcessed(string str)
	{
		return PostProcessedInt(base.PostProcessed(str));
	}

	public override string PostProcessedKeyedTranslation(string translation)
	{
		return PostProcessedInt(base.PostProcessedKeyedTranslation(translation));
	}

	public bool IsVowel(char ch)
	{
		return "aàâäæeéèêëiîïoôöœuùüûhAÀÂÄÆEÉÈÊËIÎÏOÔÖŒUÙÜÛH".IndexOf(ch) >= 0;
	}

	private Regex ElisionE = new Regex(@"\b([cdjlmnst]|qu|quoiqu|lorsqu)e ([aàâäeéèêëiîïoôöuùüûh])", RegexOptions.Compiled | RegexOptions.IgnoreCase);
	private Regex ElisionLa = new Regex(@"\b(l)a ([aàâäeéèêëiîïoôöuùüûh])", RegexOptions.Compiled | RegexOptions.IgnoreCase);
	private Regex ElisionSi = new Regex(@"\b(s)i (ils?)\b", RegexOptions.Compiled | RegexOptions.IgnoreCase);
	private Regex DeLe = new Regex(@"\b(d)e l(es?)\b", RegexOptions.Compiled | RegexOptions.IgnoreCase);
	private Regex ALe = new Regex(@"\bà les?\b", RegexOptions.Compiled | RegexOptions.IgnoreCase);

	private string PostProcessedInt(string str)
	{
		str = ElisionE.Replace(str, "$1'$2");
		str = ElisionLa.Replace(str, "$1'$2");
		str = ElisionSi.Replace(str, "$1'$2");
		str = DeLe.Replace(str, "$1$2");
		str = ALe.Replace(str, new MatchEvaluator(ReplaceALe));

		return str;
	}

	private string ReplaceALe(Match match) {
		switch (match.ToString()) {
			case "à le": return "au";
			case "à les": return "aux";
			case "\u00c0 le": return "Au";
			case "\u00c0 les": return "Aux";
		}
		return match.ToString();
	}
}
