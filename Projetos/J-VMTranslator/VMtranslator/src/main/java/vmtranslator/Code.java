/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 * Created by Luciano Soares <lpsoares@insper.edu.br>
 * Date: 2/05/2017
 * Adaptado por Rafael Corsi <rafael.corsi@insper.edu.br>
 * Date: 5/2018
 */

package vmtranslator;

import java.util.*;
import java.io.*;
import java.nio.file.*;

/**
 * Traduz da linguagem vm para códigos assembly.
 */
public class Code {

    PrintWriter outputFile = null;  // arquivo .nasm de saída
    String filename = null;         // arquivo .vm de entrada
    int lineCode = 0;               // Linha do codigo vm que gerou as instrucoes

    /**
     * Abre o arquivo de saida e prepara para escrever
     * @param filename nome do arquivo NASM que receberá o código traduzido.
     */
    public Code(String filename) throws FileNotFoundException,IOException {
        File file = new File(filename);
        this.outputFile = new PrintWriter(new FileWriter(file));
    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para executar o comando aritmético.
     * @param  command comando aritmético a ser analisado.
     */
    public void writeArithmetic(String command) {

        if ( command.equals("")) {
            Error.error("Instrução invalida");
        }

        List<String> commands = new ArrayList<String>();

        if(command.equals("add")) {
            commands.add(String.format("; %d - ADD", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("addw %D,%S,%D \n");
            commands.add("movw %D,(%A) \n");
            commands.add("incw %A \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");

        } else if (command.equals("sub")) {
            commands.add(String.format("; %d - SUB", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("subw %S,%D,%D \n");
            commands.add("movw %D,(%A) \n");
            commands.add("incw %A \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");

        } else if (command.equals("neg")) {
            commands.add(String.format("; %d - NEG", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("negw %D \n");
            commands.add("movw %D,(%A) \n");
            commands.add("incw %A \n");
            commands.add("movw %A,%D \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %D,(%A) \n");



        } else if (command.equals("eq")) {
            commands.add(String.format("; %d - EQ", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("subw %S,%D,%D \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $TRUE,%A \n");
            commands.add("je %D \n");
            commands.add("nop \n");
            commands.add("leaw $FALSE,%A \n");
            commands.add("jmp \n");
            commands.add("nop \n");
            commands.add("TRUE: \n");
            commands.add("leaw $0,%A \n");
            commands.add("notw %A \n");
            commands.add("movw %A,%D \n");
            commands.add("movw %S, %A \n");
            commands.add("movw %D, (%A) \n");
            commands.add("leaw $END,%A \n");
            commands.add("jmp \n");
            commands.add("nop \n");
            commands.add("FALSE: \n");
            commands.add("leaw $0,%A \n");
            commands.add("movw %A,%D \n");
            commands.add("movw %S, %A \n");
            commands.add("movw %D, (%A) \n");
            commands.add("END: \n");
            commands.add("incw %S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");

        } else if (command.equals("gt")) {
            commands.add(String.format("; %d - GT", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("subw %S,%D,%D \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $TRUE,%A \n");
            commands.add("jg %D \n");
            commands.add("nop \n");
            commands.add("leaw $FALSE,%A \n");
            commands.add("jmp \n");
            commands.add("nop \n");
            commands.add("TRUE: \n");
            commands.add("leaw $0,%A \n");
            commands.add("notw %A \n");
            commands.add("movw %A,%D \n");
            commands.add("movw %S, %A \n");
            commands.add("movw %D, (%A) \n");
            commands.add("leaw $END,%A \n");
            commands.add("jmp \n");
            commands.add("nop \n");
            commands.add("FALSE: \n");
            commands.add("leaw $0,%A \n");
            commands.add("movw %A,%D \n");
            commands.add("movw %S, %A \n");
            commands.add("movw %D, (%A) \n");
            commands.add("END: \n");
            commands.add("incw %S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");

        } else if (command.equals("lt")) {
            commands.add(String.format("; %d - LT", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("subw %S,%D,%D \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $TRUE,%A \n");
            commands.add("jl %D \n");
            commands.add("nop \n");
            commands.add("leaw $FALSE,%A \n");
            commands.add("jmp \n");
            commands.add("nop \n");
            commands.add("TRUE: \n");
            commands.add("leaw $0,%A \n");
            commands.add("notw %A \n");
            commands.add("movw %A,%D \n");
            commands.add("movw %S, %A \n");
            commands.add("movw %D, (%A) \n");
            commands.add("leaw $END,%A \n");
            commands.add("jmp \n");
            commands.add("nop \n");
            commands.add("FALSE: \n");
            commands.add("leaw $0,%A \n");
            commands.add("movw %A,%D \n");
            commands.add("movw %S, %A \n");
            commands.add("movw %D, (%A) \n");
            commands.add("END: \n");
            commands.add("incw %S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");

        } else if (command.equals("and")) {
            commands.add(String.format("; %d - AND", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("andw %S,%D,%D \n");
            commands.add("movw %D,(%A) \n");
            commands.add("incw %A \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");



        } else if (command.equals("or")) {
            commands.add(String.format("; %d - OR", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%S \n");
            commands.add("orw %S,%D,%D \n");
            commands.add("movw %D,(%A) \n");
            commands.add("incw %A \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");

        } else if (command.equals("not")) {
            commands.add(String.format("; %d - NOT", lineCode++));
            commands.add("leaw $SP,%A \n");
            commands.add("movw (%A),%D \n");
            commands.add("movw %D,%A \n");
            commands.add("decw %A \n");
            commands.add("movw (%A),%D \n");
            commands.add("notw %D \n");
            commands.add("movw %D,(%A) \n");
            commands.add("incw %A \n");
            commands.add("movw %A,%S \n");
            commands.add("leaw $SP,%A \n");
            commands.add("movw %S,(%A) \n");
        }

        String[] stringArray = new String[ commands.size() ];
        commands.toArray( stringArray );
        write(stringArray);

    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para executar o comando de Push ou Pop.
     * @param  command comando de push ou pop a ser analisado.
     * @param  segment segmento de memória a ser usado pelo comando.
     * @param  index índice do segkento de memória a ser usado pelo comando.
     */
    public void writePushPop(Parser.CommandType command, String segment, Integer index) {

        if ( command.equals("")) {
            Error.error("Instrução invalida");
        }

        List<String> commands = new ArrayList<String>();

        if(command == Parser.CommandType.C_POP) {
            commands.add(String.format("; %d - POP %s %d", lineCode++ ,segment, index));

            if (segment.equals("constant")) {
                Error.error("Não faz sentido POP com constant");
            }
            else if (segment.equals("local")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %D,%A \n");
                commands.add("decw %A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A)\n");
                commands.add("leaw $1,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("leaw $"+index.toString()+",%A \n");
                commands.add("addw %S,%A,%A \n");
                commands.add("movw %D,(%A) \n");


            } else if (segment.equals("argument")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %D,%A \n");
                commands.add("decw %A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A)\n");
                commands.add("leaw $2,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("leaw $"+index.toString()+",%A \n");
                commands.add("addw %S,%A,%A \n");
                commands.add("movw %D,(%A) \n");

            } else if (segment.equals("this")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %D,%A \n");
                commands.add("decw %A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A)\n");
                commands.add("leaw $3,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("leaw $"+index.toString()+",%A \n");
                commands.add("addw %S,%A,%A \n");
                commands.add("movw %D,(%A) \n");

            } else if (segment.equals("that")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %D,%A \n");
                commands.add("decw %A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A)\n");
                commands.add("leaw $4,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("leaw $"+index.toString()+",%A \n");
                commands.add("addw %S,%A,%A \n");
                commands.add("movw %D,(%A) \n");

            } else if (segment.equals("static")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %D,%A \n");
                commands.add("decw %A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A)\n");
                commands.add("leaw $16,%A \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $"+index.toString()+",%A \n");
                commands.add("addw %S,%A,%A \n");
                commands.add("movw %D,(%A) \n");

            } else if (segment.equals("temp")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %D,%A \n");
                commands.add("decw %A \n");
                commands.add("movw (%A),%D \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A)\n");
                commands.add("leaw $5,%A \n");
                commands.add("movw %A,%S \n");
                commands.add("leaw $"+index.toString()+",%A \n");
                commands.add("addw %S,%A,%A \n");
                commands.add("movw %D,(%A) \n");


            } else if (segment.equals("pointer")) {
                if(index==0) {
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw (%A),%D \n");
                    commands.add("decw %D \n");
                    commands.add("movw %D,%A \n");
                    commands.add("movw (%A),%S \n");
                    commands.add("leaw $3,%A");
                    commands.add("movw %S,(%A) \n");
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw %D,(%A) \n");

                } else {
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw (%A),%D \n");
                    commands.add("decw %D \n");
                    commands.add("movw %D,%A \n");
                    commands.add("movw (%A),%S \n");
                    commands.add("leaw $4,%A");
                    commands.add("movw %S,(%A) \n");
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw %D,(%A) \n");

                }
            }
        } else if (command == Parser.CommandType.C_PUSH) {
            commands.add(String.format("; %d - PUSH %s %d", lineCode++ ,segment, index));

            if (segment.equals("constant")) {
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("movw %A,%S \n");
                commands.add("movw %D,%A \n");
                commands.add("movw %S,(%A) \n");
                commands.add("incw %D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %D,(%A) \n");
               
            } else if (segment.equals("local")) {
                commands.add("leaw $1,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("addw %D,%A,%D \n");
                commands.add("movw %D,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("movw %S,%A \n");
                commands.add("movw %D,(%A) \n");
                commands.add("incw %A \n");
                commands.add("movw %A,%S\n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A) \n");

            } else if (segment.equals("argument")) {
                commands.add("leaw $2,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("addw %D,%A,%D \n");
                commands.add("movw %D,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("movw %S,%A \n");
                commands.add("movw %D,(%A) \n");
                commands.add("incw %A \n");
                commands.add("movw %A,%S\n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A) \n");


            } else if (segment.equals("this")) {
                commands.add("leaw $3,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("addw %D,%A,%D \n");
                commands.add("movw %D,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("movw %S,%A \n");
                commands.add("movw %D,(%A) \n");
                commands.add("incw %A \n");
                commands.add("movw %A,%S\n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A) \n");


            } else if (segment.equals("that")) {
                commands.add("leaw $4,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("addw %D,%A,%D \n");
                commands.add("movw %D,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("movw %S,%A \n");
                commands.add("movw %D,(%A) \n");
                commands.add("incw %A \n");
                commands.add("movw %A,%S\n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A) \n");


            } else if (segment.equals("static")) {
                commands.add("leaw $16,%A \n");
                commands.add("movw %A,%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("addw %D,%A,%D \n");
                commands.add("movw %D,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("movw %S,%A \n");
                commands.add("movw %D,(%A) \n");
                commands.add("incw %A \n");
                commands.add("movw %A,%S\n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A) \n");


            } else if (segment.equals("temp")) {
                commands.add("leaw $5,%A \n");
                commands.add("movw %A,%D \n");
                commands.add("leaw $"+index+",%A \n");
                commands.add("addw %D,%A,%D \n");
                commands.add("movw %D,%A \n");
                commands.add("movw (%A),%D \n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw (%A),%S \n");
                commands.add("movw %S,%A \n");
                commands.add("movw %D,(%A) \n");
                commands.add("incw %A \n");
                commands.add("movw %A,%S\n");
                commands.add("leaw $SP,%A \n");
                commands.add("movw %S,(%A) \n");


            } else if (segment.equals("pointer")) {
                if(index==0) {
                    commands.add("leaw $3,%A \n");
                    commands.add("movw (%A),%D \n");
                    commands.add("leaw $"+index+",%A \n");
                    commands.add("addw %D,%A,%D \n");
                    commands.add("movw %D,%A \n");
                    commands.add("movw (%A),%D \n");
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw (%A),%S \n");
                    commands.add("movw %S,%A \n");
                    commands.add("movw %D,(%A) \n");
                    commands.add("incw %A \n");
                    commands.add("movw %A,%S\n");
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw %S,(%A) \n");
                } else {
                    commands.add("leaw $4,%A \n");
                    commands.add("movw (%A),%D \n");
                    commands.add("leaw $"+index+",%A \n");
                    commands.add("addw %D,%A,%D \n");
                    commands.add("movw %D,%A \n");
                    commands.add("movw (%A),%D \n");
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw (%A),%S \n");
                    commands.add("movw %S,%A \n");
                    commands.add("movw %D,(%A) \n");
                    commands.add("incw %A \n");
                    commands.add("movw %A,%S\n");
                    commands.add("leaw $SP,%A \n");
                    commands.add("movw %S,(%A) \n");

                }
            }
        }

        String[] stringArray = new String[ commands.size() ];
        commands.toArray( stringArray );
        write(stringArray);

    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para inicializar o processo da VM (bootstrap).
     * Também prepara a chamada para a função Sys.init
     * O código deve ser colocado no início do arquivo de saída.
     */
    public void writeInit(boolean bootstrap, boolean isDir) {

        List<String> commands = new ArrayList<String>();

        if(bootstrap || isDir)
            commands.add( "; Inicialização para VM" );

        if(bootstrap) {
            commands.add("leaw $256,%A");
            commands.add("movw %A,%D");
            commands.add("leaw $SP,%A");
            commands.add("movw %D,(%A)");
        }

        if(isDir){
            commands.add("leaw $Main.main, %A");
            commands.add("jmp");
            commands.add("nop");
        }

        if(bootstrap || isDir) {
            String[] stringArray = new String[commands.size()];
            commands.toArray(stringArray);
            write(stringArray);
        }
    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para gerar o labels (marcadores de jump).
     * @param  label define nome do label (marcador) a ser escrito.
     */
    public void writeLabel(String label) {

        List<String> commands = new ArrayList<String>();
        commands.add( "; Label (marcador)" );
        commands.add(label+": \n");

    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para gerar as instruções de goto (jumps).
     * Realiza um jump incondicional para o label informado.
     * @param  label define jump a ser realizado para um label (marcador).
     */
    public void writeGoto(String label) {

        List<String> commands = new ArrayList<String>();
        commands.add(String.format("; %d - Goto Incondicional", lineCode++));
        commands.add("leaw $"+label+",%A \n");
        commands.add("jmp \n");
        commands.add("nop \n");


    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para gerar as instruções de goto condicional (jumps condicionais).
     * Realiza um jump condicional para o label informado.
     * @param  label define jump a ser realizado para um label (marcador).
     */
    public void writeIf(String label) {

        List<String> commands = new ArrayList<String>();
        commands.add(String.format("; %d - Goto Condicional", lineCode++));
        commands.add("leaw $SP,%A \n");
        commands.add("movw (%A).%D \n");
        commands.add("decw %D\n");
        commands.add("movw %D,%A \n");
        commands.add("movw (%A),%D \n");
        commands.add("leaw $END,%A \n");
        commands.add("je %D \n");
        commands.add("nop \n");
        writeLabel("TRUE");
        commands.add("movw %A,%S \n");
        commands.add("leaw $SP,%A \n");
        commands.add("movw %S,(%A) \n");
        writeGoto(label);
        writeLabel("END");
        commands.add("movw %A,%S \n");
        commands.add("leaw $SP,%A \n");
        commands.add("movw %S,(%A) \n");

     }

    /**
     * Grava no arquivo de saida as instruções em Assembly para uma chamada de função (Call).
     * @param  functionName nome da função a ser "chamada" pelo call.
     * @param  numArgs número de argumentos a serem passados na função call.
     */
    public void writeCall(String functionName, Integer numArgs) {

        List<String> commands = new ArrayList<String>();
        commands.add(String.format("; %d - chamada de funcao %s", lineCode++, functionName));
        for(int i=numArgs;i>=0;i--) {
            writePushPop(Parser.CommandType.C_POP, "argument", i);
        }

    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para o retorno de uma sub rotina.
     */
    public void writeReturn() {

        List<String> commands = new ArrayList<String>();
        commands.add(String.format("; %d - Retorno de função", lineCode++));

    }

    /**
     * Grava no arquivo de saida as instruções em Assembly para a declaração de uma função.
     * @param  functionName nome da função a ser criada.
     * @param  numLocals número de argumentos a serem passados na função call.
     */
    public void writeFunction(String functionName, Integer numLocals) {

        List<String> commands = new ArrayList<String>();
        commands.add(String.format("; %d - Declarando função %s", lineCode++, functionName));

    }

    /**
     * Armazena o nome do arquivo vm de origem.
     * Usado para definir os dados estáticos do código (por arquivo).
     * @param file nome do arquivo sendo tratado.
     */
    public void vmfile(String file) {

        int i = file.lastIndexOf(File.separator);
        int j = file.lastIndexOf('.');
        this.filename = file.substring(i+1,j);

    }

    // grava as instruções em Assembly no arquivo de saída
    public void write(String[] stringArray) {
        // gravando comandos no arquivos
        for (String s: stringArray) {
            this.outputFile.println(s);
        }
    }

    // fecha o arquivo de escrita
    public void close() throws IOException {
        this.outputFile.close();
    }

}
