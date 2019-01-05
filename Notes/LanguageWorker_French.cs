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

		if( str[str.Length - 1] == 's' || str[str.Length - 1] == 'x' )
			return str;
		else
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
		return "iuyeøoɛœəɔaãɛ̃œ̃ɔ̃IUYEØOƐŒƏƆAÃƐ̃Œ̃Ɔ̃".IndexOf(ch) >= 0;
	}

	private string PostProcessedInt(string str)
	{
		return str.Replace(" de le ", " du ")
			.Replace(" de les ", " des ")
			.Replace(" de des ", " des ");
	}
}
