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

        switch (mnemnonic[0]){
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
            for (int t_idx = 0; t_idx < temp.length(); t_idx++){
                char t_char = temp.charAt(t_idx);
                if (t_char!='%'){
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

    public static String register(String s){
        switch (s){
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

        switch (mnemnonic[0]){
            // Jumps
            case "jg":
            case "je":
            case "jge":
            case "jl":
            case "jne":
            case "jle":
            case "jmp":
                if (mnemnonic.length == 1){
                    return "000110000";
                }
                return register(mnemnonic[1]);
            // Mov
            case "movw":
                return register(mnemnonic[1]);

            // Add
            case "addw":
                String registers;
                switch (mnemnonic[1]+mnemnonic[2]){
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
                    default:
                        // S+D
                        // D+S
                        registers = "101";
                        break;
                }
                return registers + "000010";


        }

        return "000000000";
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
