unit Controller.Vinculo;

interface

uses System.SysUtils, System.Generics.Collections, FireDAC.Comp.Client,
     DB,
     Controller.Interfaces, Model.Interfaces,
     Model.Vinculo, Dao.Vinculo;

implementation

type
  TControllerVinculo = class(TInterfacedObject, IControllerVinculo)

  end;

end.
