Program concesionaria;

//JUAN FERNANDES DIAS - RA: 2220959

type
    lista_de_carros = record
        marca: string;
        modelo: string;
        valor_compra: real;
        valor_venda: real;
        valor_opcional: real;
        opcional: string;
 end;
var
    i: integer;
    cliente: array[1..5] of lista_de_carros;
    opcao :char;
    spoiler : real;
   	alarme : real;
   	ar : real;
   	trava :real;
    
Begin
	 
   spoiler := 2000.00;
   alarme := 100.00;
   ar := 1200.00;
   trava := 900.00;
   
   
   for i:= 1 to 2 do
    begin
        write('marca do carro........: ');
        readln(cliente[i].marca); 
        write('modelo do carro........: ');
        readln(cliente[i].modelo);
        write('valor da compra........: ');
        readln(cliente[i].valor_compra);
        write('valor da venda........: ');                           
        readln(cliente[i].valor_venda);
        clrscr;                                  
        
    
    writeln;                                                                        
    writeln('----------------- Escolha dos Opcionais --------------------');
    writeln;
    writeln('Selecione um item para o veículo ',(cliente[i].marca),' ', cliente[i].modelo);
    writeln;
    writeln('________________________________________________________________________');
     writeln;
    writeln('            Opcional           Preço/Custo          Preço/Revenda       ');
     writeln;
    writeln('________________________________________________________________________');
    writeln(' [1] - Spoiler                  R$2000.00            R$2500.00          ');
     writeln;
    writeln(' [2] - Alarme                   R$100.00             R$170.00 			     ');
     writeln;
    writeln(' [3] - Ar Condicionado          R$1200.00            R$1900.00          ');
     writeln;
    writeln(' [4]- Trava Elétrica            R$900.00             R$1400.00          ');
     writeln;
    writeln('________________________________________________________________________');
     writeln;
    writeln(' 0 - Opcionais não compatíveis/ Cancelar seleção                        ');
     writeln;
    writeln('________________________________________________________________________');
    writeln;
    writeln('Digite o número do opcional desejado (0 a 4)');  
    write  (' => ');
    readln(opcao);
    
    case opcao of                      
        '1' :begin
           WriteLN;
           WriteLN('Você adquiriu um Spoiler para o carro ', cliente[i].marca, ' ', cliente[i].modelo, ' seminovo por + R$', spoiler:0:2);
           writeln;
           writeln;
           end;
           
                                                                    
      '2' :begin
           WriteLN;
           WriteLN('Você adquiriu um Alarme para o carro ', cliente[i].marca, ' ', cliente[i].modelo, ' seminovo por + R$', alarme:0:2);
           writeln;
           writeln;
           end;
           
           
      '3' :begin
           WriteLN;
           WriteLN('Você adquiriu um Ar condicionado para o carro ', cliente[i].marca, ' ', cliente[i].modelo, ' seminovo por + R$', ar:0:2);
           writeln;
           writeln;                                                             
           end;
           
      '4' :begin
           WriteLN;
           WriteLN('Você adquiriu uma Trava Elétrica para o carro ', cliente[i].marca, ' ', cliente[i].modelo, ' seminovo por + R$', trava:0:2);
           writeln;
           writeln;
           end;
           
      '0' :begin
           WriteLN;
           WriteLN('Operação cancelada.');
           break;
           writeln;
           writeln;
           end;       
     end;
     end;
    clrscr;
    
    
    if opcao = '1' then
    	begin
    	cliente[i].opcional := 'Spoiler' ;
      cliente[i].valor_opcional := spoiler;
      cliente[i].valor_compra := cliente[i].valor_compra + cliente[i].valor_opcional
      end
    else if opcao = '2' then
    	begin
    	cliente[i].opcional := 'Alarme' ;
      cliente[i].valor_opcional := alarme;
      cliente[i].valor_compra := cliente[i].valor_compra + cliente[i].valor_opcional
      end
    else if opcao = '3' then
    	begin
    	cliente[i].opcional := 'Ar - Condicionado' ;
      cliente[i].valor_opcional := ar;
      cliente[i].valor_compra := cliente[i].valor_compra + cliente[i].valor_opcional
      end
    else if opcao = '4' then
    	begin
    	cliente[i].opcional := 'Trava Elétrica' ;
      cliente[i].valor_opcional := trava;
      cliente[i].valor_compra := cliente[i].valor_compra + cliente[i].valor_opcional
      end;

    
		writeln('-----------Informações gerais do caro + Opcional----------');
		writeln;
		writeln('Cadastro 1');
		writeln;
	  writeln('Marca................................:  ' , cliente[1].marca);
	  writeln;
  	writeln('Modelo................................:  ' , cliente[1].modelo);
  	writeln;
  	writeln('Valor de Compra................................:  ' , cliente[1].valor_compra:0:2);
  	writeln;
  	writeln('Valor de Venda................................:  ' , cliente[1].valor_venda:0:2);
  	writeln;
  	writeln('Opcional   ................................:  ' , cliente[i].opcional);
  	writeln;
  	writeln('Valor do Opcional ..........................:  '  , cliente[i].valor_opcional:0:2);  //mantive o [i], pois o número 1 não está puxando os valores do cadastro 1
  	writeln;
  	writeln;
		writeln;
		writeln('----------------------------------------------------');
		writeln(' TOTAL COMPRA = R$', (cliente[1].valor_venda + cliente[i].valor_opcional):0:2);
		writeln('----------------------------------------------------');
		writeln;
		writeln;
		writeln;
	  writeln('Cadastro 2'); 
		writeln;
		 writeln('Marca................................:  ' , cliente[2].marca);
		 writeln;
  	writeln('Modelo................................:  ' , cliente[2].modelo);
  	writeln;
  	writeln('Valor de Compra................................:  ' , cliente[2].valor_compra:0:2);
  	writeln;
  	writeln('Valor de Venda................................:  ' , cliente[2].valor_venda:0:2);
  	writeln;
  	writeln('Opcional   ................................:  ' , cliente[2].opcional);
  	writeln;
  	writeln('Valor do Opcional ..........................:  '  , cliente[2].valor_opcional:0:2);
  	writeln;
  	writeln;
		writeln;
		writeln('----------------------------------------------------');
		writeln(' TOTAL COMPRA = R$', (cliente[2].valor_venda + cliente[2].valor_opcional):0:2);
		writeln('----------------------------------------------------');
		writeln;
		
		 writeln('O LUCRO TOTAL foi de ', (cliente[i].valor_venda - cliente[i].valor_compra):0:2);
		 writeln;
		 writeln;
End.