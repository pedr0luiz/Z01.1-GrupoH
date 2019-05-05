/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        String joined = "";

        for (int idx = 2; idx < mnemnonic.length; idx++){
            String str = mnemnonic[idx];
            int str_len = str.length();
            for (int char_idx = 0; char_idx < str_len ; char_idx++){
                char temp_char = str.charAt(idx);
                if (temp_char != '%'){
                    joined += temp_char;
                }
            }
        }

        switch (joined) {
            case "A":
                return "1000";
            case "D":
                return "0010";
            case "S":
                return "0100";
            case "(A)":
                return "0001";
            case "D(A)":
                return "0011";
            case "S(A)":
                return "0101";
            case "SD":
                return "0110";
            case "SD(A)":
                return "0111";
            case "A(A)":
                return "1001";
            case "AD":
                return "1010";
            case "AD(A)":
                return "1011";
            case "AS":
                return "1100";
            case "AS(A)":
                return "1101";
            case "ASD":
                return "1110";
            case "ASD(A)":
                return "1111";
            default:
                return "0000";

        }
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {


        return "";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch(mnemnonic[0]){
            case "jg":
                return "001";
            case "je":
                return "010";
            case "jge":
                return "011";
            case "jl":
                return "100";
            case "jne":
                return "101";
            case "jle":
                return "110";
            case "jmp":
                return "111";
            default:
                return "000";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int value = Integer.valueOf(symbol);
        String binary = Integer.toBinaryString(value);
        return String.format("%1$16s", binary).replace(" ", "0");
    }

}
