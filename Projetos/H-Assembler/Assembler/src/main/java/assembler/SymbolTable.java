/**
 * Curso: Elementos de Sistemas
 * Arquivo: SymbolTable.java
 */

package assembler;

import java.util.HashMap;

/**
 * Mantém uma tabela com a correspondência entre os rótulos simbólicos e endereços numéricos de memória.
 */
public class SymbolTable {

    private HashMap<String, Integer> symbolTable;


    /**
     * Cria a tabela de símbolos.
     */
    public SymbolTable() {
        symbolTable = new HashMap<String, Integer>();

        // Inicializa tabela com valores padroes
        initialize();
    }

    /**
     * Insere uma entrada de um símbolo com seu endereço numérico na tabela de símbolos.
     * @param  symbol símbolo a ser armazenado na tabela de símbolos.
     * @param  address símbolo a ser armazenado na tabela de símbolos.
     */
    public void addEntry(String symbol, int address) {
        symbolTable.put(symbol,address);
    }

    /**
     * Confere se o símbolo informado já foi inserido na tabela de símbolos.
     * @param  symbol símbolo a ser procurado na tabela de símbolos.
     * @return Verdadeiro se símbolo está na tabela de símbolos, Falso se não está na tabela de símbolos.
     */
    public boolean contains(String symbol){
        return symbolTable.containsKey(symbol);
    }

    /**
     * Retorna o valor númerico associado a um símbolo já inserido na tabela de símbolos.
     * @param  symbol símbolo a ser procurado na tabela de símbolos.
     * @return valor numérico associado ao símbolo procurado.
     */
    public Integer getAddress(String symbol) {
        int address = symbolTable.get(symbol);
        return address;

    }

    /**
    * Cria os simbolos padroes na tabela
    * ref:
    */
    public void initialize() {
        this.addEntry("R0", 0);
        for(int i =0; i <= 15; ++i){
            symbolTable.put("R".concat(String.valueOf(i)), i);
        }
        this.addEntry("SP", 	0);
        symbolTable.put("LCL", 	1);
        symbolTable.put("ARG",	2);
        symbolTable.put("THIS", 3);
        symbolTable.put("THAT", 4);
        symbolTable.put("SCREEN",16384);
        symbolTable.put("LED", 21184);
        symbolTable.put("SW", 21185);
    }

}
