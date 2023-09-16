program IPWho.is_Test;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.DateUtils,
  IPWhoAPI in 'API\IPWhoAPI.pas';

procedure Main;
begin
  // Get Info
  var ipInfo := TIPWho.GetIPInfo();

  Writeln('IP: ' + ipInfo.ip);
  Writeln('Country: ' + ipInfo.country);

  Writeln('Raw Data:');
  Writeln(ipInfo.rawData);
end;

begin
  try
    Main;

    ReadLn;
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      ReadLn;
    end;
  end;
end.

