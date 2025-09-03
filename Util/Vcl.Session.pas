unit Vcl.Session;

interface

type
  TSession = class
  private
    class var FidUsuario: integer;
    class var FemailUsuario: string;
    class var FloginUsuario: string;
    class var Fambiente: string;
    class var FidSinistro: integer;

  public
     class property idUsuario: integer read FidUsuario write FidUsuario;
     class property emailUsuario: string read FemailUsuario write FemailUsuario;
     class property loginUsuario: string read FloginUsuario write FloginUsuario;
     class property ambiente: string read Fambiente write Fambiente;
     class property idSinistro: integer read FidSinistro write FidSinistro;

  end;

implementation

end.
