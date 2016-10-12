#include "bob.h"

bool is_yelled_at(string s)
{
    // all alpha characters should be uppercase and there should be atleast of uppercase character
    return any_of(s.begin(), s.end(), [](char c) { return isupper(c); }) && 
     all_of(s.begin(), s.end(), [](char c) { return !isalpha(c) || isupper(c);});
}

void trim(string& greeting)
{
    greeting.erase(remove_if(greeting.begin(), greeting.end(), isspace), greeting.end());
}


string bob::hey(string greeting)
{
    trim(greeting);
    
    if (greeting.empty())
        return "Fine. Be that way!";
    
    if(is_yelled_at(greeting))
        return "Whoa, chill out!";
    
    if (greeting.back() == '?')
        return "Sure.";
    
    return "Whatever.";
}
