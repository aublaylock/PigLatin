public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  int[] indices = new int[]{sWord.indexOf("a"),sWord.indexOf("e"),sWord.indexOf("i"),sWord.indexOf("o"),sWord.indexOf("u")};
  int cur = sWord.length();
  for(int index:indices)
    if(index!=-1 && index<cur)
      cur = index;
  if(cur == sWord.length())
    return -1;
  return cur;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  if(findFirstVowel(sWord) == 0){
    return sWord + "way";
  }
  if(sWord.substring(0,2).equals("qu")){
    return sWord.substring(2,sWord.length())+"quay";
  }
  else
  {
    return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay";
  }
}
