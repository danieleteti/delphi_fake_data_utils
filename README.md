# delphi_fake_data_utils
Simple and flexible unit to generate fake data for demos, samples, testing etc.

```delphi
//Generates random first name
function GetRndFirstName: String;

//Generates random last name
function GetRndLastName: String;

//Generates random full name
function GetRndFullName: String;

//Generates random country
function GetRndCountry: String;

//Generates random email address
function GetRndEMailAddress: String;

//Generates random date between InitialYear and for the next YearsSpan years
function GetRndDate(const InitialYear: Word = 1980; YearsSpan: Word = 40): TDate;

//Generates random integer in the range aFrom..aTo
function GetRndInteger(const aFrom: Integer = 0; aTo: Integer = 1000): Integer;

//Generates random word
function GetRndWord: String;

//Generates random a phrase with a number of word in the range aFrom..aTo
function GetRndPhrase(const aFrom: Integer = 0; aTo: Integer = 1000): String;


//If enabled conditional GENERATE_DATASETS the following functions allows to generate datasets of people, users and blog post. 
{$IF Defined(GENERATE_DATASETS)}
function GetPeople(const Count: Integer = 20): TDataSet;
function GetUsers(const Count: Integer = 10): TDataSet;
function GetPosts(const Count: Integer = 10): TDataSet;
{$ENDIF}
```
