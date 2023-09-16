program IPWho.is_Test;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.DateUtils,
  IPWhoAPI in 'API\IPWhoAPI.pas';

procedure Main;
begin
  var ipInfo := TIPWho.GetIPInfo();
  Writeln(ipInfo.ip);
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

