﻿program IPWho.is_Test;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.DateUtils,
  IPWhoAPI in 'API\IPWhoAPI.pas';

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

