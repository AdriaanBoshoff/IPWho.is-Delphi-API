# IPWho.is Delphi API
 Delphi API to interface with https://ipwho.is/

## Usage

### Example Code
```delphi
uses
  IPWhoAPI;

procedure Main;
begin
  // Get Info
  var ipInfo := TIPWho.GetIPInfo('127.0.0.1');

  if ipInfo.success then
  begin
    Writeln('IP: ' + ipInfo.ip);
    Writeln('Country: ' + ipInfo.country);

    Writeln('Current DateTime: ' + ipInfo.timezone.currentTime.ToString);
  end
  else
    Writeln(ipInfo.aMessage);

  Writeln('Raw Data:');
  Writeln(ipInfo.rawData);
end;
```

### Get Current IP Info
```delphi
var ipInfo := TIPWho.GetIPInfo();
```

### Get Provided IP Info
```delphi
var ip := '154.186.215.13';
var ipInfo := TIPWho.GetIPInfo(ip);
```

### Result
```delphi
type
  TIPWhoInfo = record
    ip: string;
    success: boolean;
    ipType: string;
    continent: string;
    continentCode: string;
    country: string;
    countryCode: string;
    region: string;
    regionCode: string;
    city: string;
    latitude: Double;
    longitude: Double;
    isEU: Boolean;
    postal: string;
    callingCode: string;
    capital: string;
    borders: string;
    flag: TIPWhoFlag;
    connection: TIPWhoConnection;
    timezone: TIPWhoTimezone;
    rawData: string;
  end;
```

### Result Types
```delphi
type
  TIPWhoFlag = record
    imgURL: string;
    emoji: string;
    emojiUnicode: string;
  end;

type
  TIPWhoConnection = record
    asn: integer;
    org: string;
    isp: string;
    domain: string;
  end;

type
  TIPWhoTimezone = record
    id: string;
    abbr: string;
    isDST: boolean;
    offset: integer;
    utc: string;
    currentTime: TDateTime;
  end;
```