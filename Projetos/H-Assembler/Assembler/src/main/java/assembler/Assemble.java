/**
 * Curso: Elementos de Sistemas
 * Arquivo: Assemble.java
 * Created by Luciano <lpsoares@insper.edu.br> 
 * Date: 04/02/2017
 *
 * 2018 @ Rafael Corsi
 */

package assembler;

import java.io.*;
import java.util.*;

/**
 * Faz a geração do código gerenciando os demais módulos
 */
public class Assemble {
    private String inputFile;              // arquivo de entrada nasm
    File hackFile = null;                  // arquivo de saída hack
    private PrintWriter outHACK = null;    // grava saida do código de máquina em Hack
    boolean debug;                         // flag que especifica se mensagens de debug são impressas
    private SymbolTable table;             // tabela de símbolos (variáveis e marcadores)

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public Assemble(String inFile, String outFileHack, boolean debug) throws IOException {
        this.debug = debug;
        inputFile  = inFile;
        hackFile   = new File(outFileHack);                      // Cria arquivo de saída .hack
        outHACK    = new PrintWriter(new FileWriter(hackFile));  // Cria saída do print para
                                                                 // o arquivo hackfile
        table      = new SymbolTable();                          // Cria e inicializa a tabela de simbolos

    }

    /**
     * primeiro passo para a construção da tabela de símbolos de marcadores (labels)
     * varre o código em busca de Símbolos novos Labels e Endereços de memórias
     * e atualiza a tabela de símbolos com os endereços.
     *
     * Dependencia : Parser, SymbolTable
     */
    public SymbolTable fillSymbolTable() throws FileNotFoundException, IOException {
        int line = 0;
        int ram = 16;
        Parser parser = new Parser(inputFile);
        Parser.CommandType LC = Parser.CommandType.L_COMMAND;
        Parser.CommandType AC = Parser.CommandType.A_COMMAND;

        while (parser.advance()) {
            String command = parser.command();
            Parser.CommandType commandType = parser.commandType(command);
            if (commandType == LC) {
                String label = parser.label(command);
                if (!table.contains(label)) table.addEntry(label, line);
            }
            else {
                line++;
            }
        }

        parser = new Parser(inputFile); // Reset do parser
        while (parser.advance()) {
            String command = parser.command();
            Parser.CommandType commandType = parser.commandType(command);
            if (commandType == AC) {
                String symbol = parser.symbol(command);
                if (!symbol.matches("[0-9]+") && !table.contains(symbol)) {
                    table.addEntry(symbol, ram);
                    ram++;
                }
            }
        }
        return table;
    }

    /**
     * Segundo passo para a geração do código de máquina
     * Varre o código em busca de instruções do tipo A, C
     * gerando a linguagem de máquina a partir do parse das instruções.
     *
     * Dependencias : Parser, Code
     */
    public void generateMachineCode() throws FileNotFoundException, IOException{

        Parser parser = new Parser(inputFile);  // abre o arquivo e aponta para o começo
        String instruction  = null;

        /**
         * Aqui devemos varrer o código nasm linha a linha
         * e gerar a string 'instruction' para cada linha
         * de instrução válida do nasm
         */
        while (parser.advance()){

            switch (parser.commandType(parser.command())){
                case C_COMMAND:
                    String[] mnemonico = parser.instruction(parser.command());
                    String comp = Code.comp(mnemonico);
                    String dest = Code.dest(mnemonico);
                    String jump = Code.jump(mnemonico);
                    instruction = "10"+comp+dest+jump;
                    break;
                case A_COMMAND:
                    String binaryValue;
                    if (parser.symbol(parser.command()).matches("[0-9]+")) {
                        String symbol = parser.symbol(parser.command());
                        binaryValue = Code.toBinary(symbol);
                    } else{
                        System.out.println(parser.symbol(parser.command()));
                        System.out.println(table.contains(parser.symbol(parser.command())));
                        Integer symbol = table.getAddress(parser.symbol(parser.command()));
                        binaryValue = Code.toBinary(symbol.toString());
                    }

                    instruction = "00"+binaryValue;
                    break;
                default:
                    continue;
            }
            // Escreve no arquivo .hack a instrução
            if(outHACK!=null) {
                outHACK.println(instruction);
            }
            instruction = null;
        }

    }

    /**
     * Fecha arquivo de escrita
     */
    public void close() throws IOException {
        if(outHACK!=null) {
            outHACK.close();
        }
    }

    /**
     * Remove o arquivo de .hack se algum erro for encontrado
     */
    public void delete() {
        try{
            if(hackFile!=null) {
                hackFile.delete();
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

}
