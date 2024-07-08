#INCLUDE "Totvs.ch"
#INCLUDE "RestFul.ch"

WSRESTFUL CustomerController DESCRIPTION "EndPoints de Persistência do Cliente"

    WsData registerByPage as numeric
    WsData page as numeric
    WsData branch as character
    WsData code as character
    WsData store as character

    WsMethod GET GetAll Description "Consulta todos os Clientes" WsSyntax "/All" Path "/All"
    WsMethod GET GetById Description "Consulta um Cliente" WsSyntax "?branch={valueParam1}&code={valueParam1}&store={valueParam1}" Path ""
    WsMethod GET GetPage Description "Consulta clientes de forma paginada" WsSyntax "/Page?page={valueParam1}&registerByPage={valueParam1}" Path "/Page"
    WsMethod GET GetCount Description "Conta a Quantidade Total de Clientes" WsSyntax "/Count" Path "/Count"
    WsMethod POST Post Description "Insere um Clientes" WsSyntax "" Path ""
    WsMethod PUT Put Description "Altera um Clientes" WsSyntax "" Path ""
    WsMethod DELETE Delete Description "Exclui um Clientes" WsSyntax "" Path ""
    
END WSRESTFUL

WSMETHOD GET GetAll WSSERVICE CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   Local response := nil
   ::SetContentType("application/json")

   response := customerHandler:GetAll()
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.

WSMETHOD GET GetById WSRECEIVE branch, code, store WSRESTFUL CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   Local response := nil
   ::SetContentType("application/json")

   response := customerHandler:GetById(::branch, ::code, ::store)
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.

WSMETHOD GET GetPage WSRECEIVE registerByPage, page WSRESTFUL CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   Local response := nil
   ::SetContentType("application/json")

   response := customerHandler:GetPage(::registerByPage, ::page)
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.

WSMETHOD GET GetCount WSSERVICE CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   Local response := nil
   ::SetContentType("application/json")

   response := customerHandler:GetCount()
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.

WSMETHOD POST Post WSRESTFUL CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   local customerRequest := JsonObject():New()
   Local response := nil
   ::SetContentType("application/json")

   customerRequest:FromJson(::GetContent())
   response := customerHandler:Post(customerRequest)
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.

WSMETHOD PUT Put WSRESTFUL CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   local customerRequest := JsonObject():New()
   Local response := nil
   ::SetContentType("application/json")

   customerRequest:FromJson(::GetContent())
   response := customerHandler:Put(customerRequest)
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.

WSMETHOD DELETE Delete WSRESTFUL CustomerController  
   local customerHandler := Infrastructure.Handlers.CustomerHandler():New()
   local customerRequest := JsonObject():New()
   Local response := nil
   ::SetContentType("application/json")

   customerRequest:FromJson(::GetContent())
   response := customerHandler:Delete(customerRequest)
    
   ::SetStatus(response:GetStatusCode())
   ::SetResponse(response)
RETURN .T.
