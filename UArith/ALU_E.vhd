library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Definición de la entidad ALU_E
entity ALU_E is
    port (
        -- Puertos de entrada
        Ai, Bi : in std_logic_vector (3 downto 0);  -- Números a operar
        SA, SB : in std_logic;                      -- Signos de los números
        S      : in std_logic_vector (2 downto 0);  -- Selector de operación

        -- Puertos de salida
        UN  : out std_logic_vector (6 downto 0);    -- unidades display
		  DE  : out std_logic_vector (6 downto 0);    -- decenas display
        SI_G: out std_logic_vector (6 downto 0)   -- Signo a mostrar en display
    );
end ALU_E;

architecture arch_ALU_E of ALU_E is
	
	-- Declaración del componente UArith
	component UArith
        port (
            A1, B1     : in std_logic_vector (3 downto 0);  -- Números de entrada
            SIGA,SIGB: in std_logic;                      -- Signos de los números
            SELECTOR        : in std_logic_vector (1 downto 0);  -- Selector de operaciones
            S_Out     : out std_logic_vector (4 downto 0); -- Resultado de las operaciones
            S_OutAB   : out std_logic                      -- Signo de salida
        );
    end component;

	-- Declaración del componente U_logic
	Component U_logic 
	port
	( -- Puertos de entrada
		A2,B2	: in  std_logic_vector (3 downto 0);    -- Dos números de entrada
		SELEC     : in  std_logic_vector (1 downto 0);    -- Selector de operaciones
		-- Puertos de salida
		SOUT	: out std_logic_vector (3 downto 0));   -- Resultado de las operaciones
	end Component;
	
	-- Declaración del componente Conversor
	Component Conversor
	port
	(-- Puertos de entrada
		Sum_Con : in  std_logic_vector (4 downto 0);  -- Número de 4 bits
		-- Puertos de salida
		Dec     : out std_logic_vector (3 downto 0);  -- Decenas del número ingresado
		Uni     : out std_logic_vector (3 downto 0)); -- Unidades del número ingresado
	end Component;
	
	-- Declaración del componente BCD7Seg
	Component BCD7Seg2
    port
    (
        -- Input ports
		  EN : in STD_LOGIC;
        IA : in STD_LOGIC;
        IB : in STD_LOGIC;
        IC : in STD_LOGIC;
        ID : in STD_LOGIC;
        -- Output ports
        F : out std_logic_vector (6 downto 0)
    );
	end Component;

	-- Declaración de señales
	signal Si     : std_logic_vector(1 downto 0);   -- Selector de las operaciones en cada componente
	signal S2     : std_logic;                      -- Selector aritmético o lógico
	signal ump    : std_logic_vector(3 downto 0);   -- Señal para el resultado del componente lógico
	signal ump1    : std_logic_vector(4 downto 0);  --Señal para concatenar resultado del componente lógico
	signal ump2   : std_logic_vector(4 downto 0);   -- Señal para el resultado del componente aritmético
	signal SS     : std_logic;  -- Signo del resultado componente aritmético 
	signal SALUi : std_logic_vector (4 downto 0);   --salida multiplexor
	signal UN_S, DEC_S :std_logic_vector(3 downto 0); --Decenas y unidades de SALUI 
	signal complemento   : std_logic_vector(4 downto 0);  --Complemento a 2 de ump2
	
	-- complemento a 2 numeros negativos
	
	
begin
	-- Concatenación de los bits de selección
	Si <= S(0) & S(1);                                      -- Selector de las operaciones en cada componente
	S2 <= S(2);	                                            -- Selector aritmético o lógico
	UNi_a : UArith port map (Ai, Bi, SA, SB, Si, ump2, SS);
	UNi_l : U_logic port map (Ai, Bi, Si, ump);
	BCD_Con : Conversor port map (SALUi, DEC_S, UN_S);
	DIS_DEC : BCD7Seg2 port map ('1', DEC_S(3), DEC_S(2), DEC_S(1), DEC_S(0), DE);
	DIS_UNI : BCD7Seg2 port map ('1', UN_S(3),  UN_S(2),  UN_S(1),  UN_S(0),  UN);
	DIS_SIG : BCD7Seg2 port map (SS, '1','0','1','0', SI_G);--'1','0','1','0' codigo para q aparezca - en display
	ump1<='0' & ump;                                        --ump1 concatenacion del resultado del componente lógico (ump)



	--Proceso para seleccionar y configurar los componentes según la operación
	mux2a1 : process (S2,ump1,ump2,SS) is
	variable comp1,comp2 : std_logic_vector(4 downto 0);
	begin
	 	if S2 = '1' then  -- Operaciones lógicas
            SALUi<=ump1;
  	   else              -- Operaciones aritméticas
				SALUi<=ump2;
		end if;
	end process;

end arch_ALU_E;
