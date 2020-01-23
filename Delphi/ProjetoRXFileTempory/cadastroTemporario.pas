unit cadastroTemporario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, RxMemDS, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    RxMemoryData1: TRxMemoryData;
    RxMemoryData1codigo: TIntegerField;
    RxMemoryData1nome: TStringField;
    edtCod: TEdit;
    edtNome: TEdit;
    label1: TLabel;
    Label2: TLabel;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
 RxMemoryData1.Delete;

end;

procedure TForm1.btnIncluirClick(Sender: TObject);
begin
  RxMemoryData1.Active := True;

  RxMemoryData1.Append;

  RxMemoryData1codigo.AsInteger := StrToInt(edtCod.Text);
  RxMemoryData1nome.AsString := edtNome.Text;

  RxMemoryData1.Post;

end;

end.
