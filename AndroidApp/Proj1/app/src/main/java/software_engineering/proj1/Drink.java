package software_engineering.proj1;

/**
 * Created by eric on 2/6/2016.
 */
public class Drink {
    private String drinkName;
    private int quantity;

    public Drink(String s){
        drinkName = s; }
    public Drink(String s, int i){
        drinkName = s;
        quantity = convert_quantity(i);
    }

    private int convert_quantity(int toConvert){
        int converted_Amount = 0;
        return converted_Amount;
    }
}
