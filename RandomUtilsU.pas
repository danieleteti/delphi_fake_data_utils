// *************************************************************************** }
//
// Delphi Fake Data Utils
//
// Copyright (c) 2010-2024 Daniele Teti and the DMVCFramework Team
//
// https://github.com/danieleteti/delphi_fake_data_utils
//
// ***************************************************************************
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// ***************************************************************************


unit RandomUtilsU;

interface

const
  FirstNames: array [0 .. 29] of string = (
    'Daniele',
    'Debora',
    'Mattia',
    'Jack',
    'James',
    'William',
    'Joseph',
    'David',
    'Charles',
    'Thomas',
    'Ethan',
    'Liam',
    'Noah',
    'Logan',
    'Lucas',
    'Mason',
    'Benjamin',
    'Alexander',
    'Elijah',
    'Jordan',
    'Alexander',
    'Jamie',
    'Tyler',
    'Caleb',
    'Kieran',
    'Ryan',
    'Colton',
    'Jaxon',
    'Gavin',
    'Ryder'
    );

  LastNames: array [0 .. 13] of string = (
    'Smith',
    'Johnson',
    'Williams',
    'Brown',
    'Black',
    'Red',
    'Green',
    'Willis',
    'Jones',
    'Miller',
    'Davis',
    'Wilson',
    'Martinez',
    'Anderson'
    );

  Countries: array [0 .. 24] of string = (
    'italy',
    'new york',
    'illinois',
    'arizona',
    'nevada',
    'uk',
    'france',
    'georgia',
    'spain',
    'portugal',
    'germany',
    'norway',
    'california',
    'usa',
    'japan',
    'australia',
    'singapore',
    'hong kong',
    'taiwan',
    'south africa',
    'canada',
    'switzerland',
    'sweden',
    'netherlands',
    'belgium'
  );

function GetRndFirstName: String;
function GetRndLastName: String;
function GetRndFullName: String;
function GetRndCountry: String;
function GetRndDate(const InitialYear: Word = 1980; YearsSpan: Word = 40): TDate;
function GetRndInteger(const aFrom: Integer = 0; aTo: Integer = 1000): Integer;

implementation


uses
  System.SysUtils, System.DateUtils, System.Math;

const
  OneDay = OneHour * 24;

function GetRndDate(const InitialYear: Word; YearsSpan: Word): TDate;
begin
  Result := EncodeDate(InitialYear + Random(YearsSpan),1,1) + (OneDay * Random(365));
end;

function GetRndCountry: String;
begin
  Result := Countries[Random(High(Countries)+1)];
end;

function GetRndFirstName: String;
begin
  Result := FirstNames[Random(High(FirstNames)+1)];
end;

function GetRndFullName: String;
begin
  Result := GetRndFirstName + ' ' + GetRndLastName;
end;

function GetRndLastName: String;
begin
  Result := LastNames[Random(High(LastNames)+1)];
end;

function GetRndInteger(const aFrom: Integer; aTo: Integer): Integer;
begin
  if aFrom >= aTo then
  begin
    raise Exception.Create('FROM cannot be greater nor equal to TO');
  end;
  Result := RandomRange(aFrom, aTo);
end;

initialization

Randomize;

end.

