unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, DBAccess, Uni, MemDS,
  UniProvider, PostgreSQLUniProvider;

type
  TUniMainModule = class(TUniGUIMainModule)
    UniConnection1: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
