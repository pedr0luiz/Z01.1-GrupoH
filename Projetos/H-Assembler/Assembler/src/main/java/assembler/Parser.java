/**
 * Curso: Elementos de Sistemas
 * Arquivo: Parser.java
 */

package assembler;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * Encapsula o código de leitura. Carrega as instruções na linguagem assembly,
 * analisa, e oferece acesso as partes da instrução  (campos e símbolos).
 * Além disso, remove todos os espaços em branco e comentários.
 */
public class Parser {

    public String currentCommand = "";  // comando atual
    public String inputFile;		    // arquivo de leitura
    public int lineNumber = 0;			// linha atual do arquivo (nao do codigo gerado)
    public String currentLine;			// linha de codigo atual
    private BufferedReader fileReader;  // leitor de arquivo


    /** Enumerator para os tipos de comandos do Assembler. */
    public enum CommandType {
        A_COMMAND,      // comandos LEA, que armazenam no registrador A
        C_COMMAND,      // comandos de calculos
        L_COMMAND       // comandos de Label (símbolos)
    }

    /**
     * Abre o arquivo de entrada NASM e se prepara para analisá-lo.
     * @param file arquivo NASM que será feito o parser.
     */
    public Parser(String file) throws FileNotFoundException {
        this.lineNumber = 0
        ;
        this.inputFile = file;
        this.fileReader = new BufferedReader(new FileReader(file));
    }

    /**
     * Carrega uma instrução e avança seu apontador interno para o próxima
     * linha do arquivo de entrada. Caso não haja mais linhas no arquivo de
     * entrada o método retorna "Falso", senão retorna "Verdadeiro".
     * @return Verdadeiro se ainda há instruções, Falso se as instruções terminaram.
     */
    public Boolean advance() throws IOException {
        this.currentCommand = "";
        boolean passa = true;
        while(passa) {
            String line = fileReader.readLine();
            if(line == null){
                passa = false;
                fileReader.close();
                return false;
            }
            if(line.length() > 0 && line.charAt(0) != ';'){
                String[] lineSplit = line.split(";");
                if(commandType(lineSplit[0].trim().split(" ")[0]) != CommandType.L_COMMAND){
                    lineNumber++;
                }

                currentLine = lineSplit[0].trim();
                currentCommand = currentLine;
                return true;
            }
        }
        return true;
    }

    /**
     * Retorna o comando "intrução" atual (sem o avanço)
     * @return a instrução atual para ser analilisada
     */
    public String command() {
        return currentCommand;

    }

    /**
     * Retorna o tipo da instrução passada no argumento:
     *  A_COMMAND para leaw, por exemplo leaw $1,%A
     *  L_COMMAND para labels, por exemplo Xyz: , onde Xyz é um símbolo.
     *  C_COMMAND para todos os outros comandos
     * @param  command instrução a ser analisada.
     * @return o tipo da instrução.
     */
    public CommandType commandType(String command) {
    	switch (command.split(" ")[0]){
            case "leaw":
                return CommandType.A_COMMAND;
            case "movw":
                return CommandType.C_COMMAND;
            case "addw":
                return CommandType.C_COMMAND;
            case "subw":
                return CommandType.C_COMMAND;
            case "rsubw":
                return CommandType.C_COMMAND;
            case "incw":
                return CommandType.C_COMMAND;
            case "decw":
                return CommandType.C_COMMAND;
            case "notw":
                return CommandType.C_COMMAND;
            case "negw":
                return CommandType.C_COMMAND;
            case "andw":
                return CommandType.C_COMMAND;
            case "orw":
                return CommandType.C_COMMAND;
            case "jmp":
                return CommandType.C_COMMAND;
            case "je":
                return CommandType.C_COMMAND;
            case "jne":
                return CommandType.C_COMMAND;
            case "jg":
                return CommandType.C_COMMAND;
            case "jge":
                return CommandType.C_COMMAND;
            case "jl":
                return CommandType.C_COMMAND;
            case "jle":
                return CommandType.C_COMMAND;
            case "nop":
                return CommandType.C_COMMAND;
            default:
                return CommandType.L_COMMAND;

        }
    }

    /**
     * Retorna o símbolo ou valor numérico da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é A_COMMAND.
     * @param  command instrução a ser analisada.
     * @return somente o símbolo ou o valor número da instrução.
     */
    public String symbol(String command) {
    	if(commandType(command) == CommandType.A_COMMAND){
    	    return command.split(" ")[1].split(",")[0].replace("$","");
        }
    	else{
    	    return null;
        }
    }

    /**
     * Retorna o símbolo da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é L_COMMAND.
     * @param  command instrução a ser analisada.
     * @return o símbolo da instrução (sem os dois pontos).
     */
    public String label(String command) {
    	if(commandType(command) == CommandType.L_COMMAND){
    	    return command.replace(":","");
        }
    	else{
    	    return null;
        }
    }

    /**
     * Separa os mnemônicos da instrução fornecida em tokens em um vetor de Strings.
     * Deve ser chamado somente quando CommandType () é C_COMMAND.
     * @param  command instrução a ser analisada.
     * @return um vetor de string contento os tokens da instrução (as partes do comando).
     */
    public String[] instruction(String command) {
        if (commandType(command) == CommandType.C_COMMAND) {
            String[] comandos = command.split(",");
            String[] comando1 = comandos[0].split(" ");

            if(comando1.length > 1){
                String[] mnemonico = new String[comandos.length +1];
                mnemonico[0] = comando1[0];
                mnemonico[1] = comando1[1];
                for(int i=2;i<mnemonico.length;i++){
                    mnemonico[i] = comandos[i-1].trim();
                }
                return mnemonico;
            }
            else{
                String[] mnemonico = new String[1];
                mnemonico[0] = comando1[0];
                return mnemonico;
            }

        } else {
            return null;

        }
    }

    // fecha o arquivo de leitura
    public void close() throws IOException {
        fileReader.close();
    }


}
