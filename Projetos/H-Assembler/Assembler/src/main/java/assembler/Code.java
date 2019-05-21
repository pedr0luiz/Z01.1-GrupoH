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
        char d3, d2, d1, d0;
        d3 = '0'; d2 = '0'; d1 = '0'; d0 = '0';
        if (mnemnonic.length < 2)
            return "0000";

        int idx_start;
        switch (mnemnonic[0]) {
            case "incw":
            case "decw":
            case "notw":
            case "negw":
                idx_start = 1;
                break;
            case "movw":
                idx_start = 2;
                break;
            default:
                idx_start = 3;
                break;
        }

        for (int idx = idx_start; idx < mnemnonic.length; idx++) {
            String temp = mnemnonic[idx];
            String s = "";
            for (int t_idx = 0; t_idx < temp.length(); t_idx++) {
                char t_char = temp.charAt(t_idx);
                if (t_char!='%') {
                    s += t_char;
                }
            }

            switch (s) {
                case "A":
                    d3 = '1';
                    break;
                case "S":
                    d2 = '1';
                    break;
                case "D":
                    d1 = '1';
                    break;
                case "(A)":
                    d0 = '1';
                    break;
            }
        }
        return new StringBuilder().append(d3).append(d2).append(d1).append(d0).toString();
    }

    public static String register(String s) {
        switch (s) {
        case "(%A)":
            return "010110000";
        case "%A":
            return "000110000";
        case "%D":
            return "000001100";
        case "%S":
            return "001001100";
        }
        return "000000000";
    }
    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 9 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {

        switch (mnemnonic[0]) {
            // Add, and, or
            case "addw":
            case "andw":
            case "orw":
                String registers;
                switch (mnemnonic[1] + mnemnonic[2]) {
                    case "%D%A":
                    case "%A%D":
                        registers = "000";
                        break;
                    case "%S%A":
                    case "%A%S":
                        registers = "001";
                        break;
                    case "%D(%A)":
                    case "(%A)%D":
                        registers = "010";
                        break;
                    case "%S(%A)":
                    case "(%A)%S":
                        registers = "011";
                        break;
                    // Suporte para $1
                    case "(%A)$1":
                    case "$1(%A)":
                        return "010110111";
                    case "%A$1":
                    case "$1%A":
                        return "000110111";
                    case "$1%D":
                    case "%D$1":
                        return "000011111";
                    case "%S$1":
                    case "$1%S":
                        return "001011111";

                    default:
                        // SD
                        // DS
                        registers = "101";
                        break;
                }
                switch (mnemnonic[0]) {
                    case "addw":
                        return registers + "000010";
                    case "andw":
                        return registers + "000000";
                    case "orw":
                        return registers + "010101";
                }
            // Sub e rsub
            case "subw":
            case "rsubw":
                String joined;
                if (mnemnonic[0].equals("rsubw")) {
                    joined = mnemnonic[2] + mnemnonic[1];
                } else {
                    joined = mnemnonic[1] + mnemnonic[2];
                }
                switch (joined) {
                    case "%D%A":
                        return "000010011";
                    case "%S%A":
                        return "001010011";
                    case "%D(%A)":
                        return "010010011";
                    case "%S(%A)":
                        return "011010011";
                    case "%S%D":
                        return "101010011";

                    case "%A%D":
                        return "000000111";
                    case "%A%S":
                        return "001000111";
                    case "(%A)%D":
                        return "010000111";
                    case "(%A)%S":
                        return "011000111";
                    case "%D%S":
                        return "101000111";

                    case "(%A)$1":
                        return "010110010";
                    case "%A$1":
                        return "000110010";
                    case "%D$1":
                        return "000001110";
                    case "%S$1":
                        return "001011111";
                }
                break;


            // Inc, dec, not, neg, mov, jmp
            case "jg":
            case "je":
            case "jge":
            case "jl":
            case "jne":
            case "jle":
            case "jmp":
            case "incw":
            case "decw":
            case "notw":
            case "negw":
            case "movw":
                if (mnemnonic.length == 1) {
                    return "000110000";
                }

                String top;
                String bottom;

                switch (mnemnonic[0]) {
                    case "incw":
                        top = "011111";
                        bottom = "110111";
                        break;
                    case "decw":
                        top = "001110";
                        bottom = "110010";
                        break;
                    case "notw":
                        top = "001101";
                        bottom = "110001";
                        break;
                    case "negw":
                        top = "001111";
                        bottom = "110011";
                        break;

                    default:
                        top = "001100";
                        bottom = "110000";
                        break;
                }

                switch (mnemnonic[1]) {
                    case "(%A)":
                        return "010" + bottom;
                    case "%A":
                        return "000" + bottom;
                    case "%D":
                        return "000" + top;
                    case "%S":
                        return "001" + top;
                    case "$0":
                        return "000101010";
                    case "$1":
                        return "000111111";
                    case "$-1":
                        return "001111010";

                }

        }

        return "000000000";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch(mnemnonic[0]) {
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
