public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String noSpace = new String();
  for (int i=0;i<word.length();i++){
    if (!(word.charAt(i) == ' ')){
      noSpace = noSpace + word.charAt(i);
    }
  }
  String allLetters = new String();
  for(int i=0; i<word.length();i++){
    if (Character.isLetter(word.charAt(i)) == true){
      allLetters = allLetters + word.charAt(i);
    }
  }
  String backwards = new String();
  backwards = allLetters.toLowerCase();
  if (backwards.equals(reverse(backwards))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i= str.length()-1;i>=0;i--){
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}
