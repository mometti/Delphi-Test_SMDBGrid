unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    SMDBGrid1: TSMDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Descricao: TStringField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  ClientDataSet1.SaveToFile( 'database.xml' );

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  ClientDataSet1.LoadFromFile( 'database.xml' );

end;

end.