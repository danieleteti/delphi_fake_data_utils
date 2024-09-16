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
  FirstNames: array [0 .. 9] of string = (
    'Daniele',
    'Debora',
    'Mattia',
    'Jack',
    'James',
    'William',
    'Joseph',
    'David',
    'Charles',
    'Thomas'
    );

  LastNames: array [0 .. 9] of string = (
    'Smith',
    'Johnson',
    'Williams',
    'Brown',
    'Jones',
    'Miller',
    'Davis',
    'Wilson',
    'Martinez',
    'Anderson'
    );

  Countries: array [0 .. 12] of string = (
    'Italy',
    'New York',
    'Illinois',
    'Arizona',
    'Nevada',
    'UK',
    'France',
    'Georgia',
    'Spain',
    'Portugal',
    'Germany',
    'Norway',
    'California'
    );

function GetRndFirstName: String;
function GetRndLastName: String;
function GetRndFullName: String;
function GetRndCountry: String;
function GetRndDate: TDate;

implementation


uses
  System.SysUtils, System.DateUtils;

const
  OneDay = OneHour * 24;

function GetRndDate: TDate;
begin
  Result := EncodeDate(1980 + Random(40),1,1) + (OneDay * Random(365));
end;

function GetRndCountry: String;
begin
  Result := Countries[Random(Length(Countries))];
end;

function GetRndFirstName: String;
begin
  Result := FirstNames[Random(Length(FirstNames))];
end;


function GetRndFullName: String;
begin
  Result := GetRndFirstName + ' ' + GetRndLastName;
end;

function GetRndLastName: String;
begin
  Result := LastNames[Random(Length(LastNames))];
end;

end.
