package debug.info;

import javax.enterprise.context.ApplicationScoped;
import java.time.LocalDate;
import java.util.Random;

@ApplicationScoped
public class GreetingService
{
    public String greeting(String name)
    {
        final var length = name.length();
        if (length % 2 == 0)
        {
            return String.format(
                "hello %s - %tc - %s"
                , name
                , LocalDate.now()
                , cipher1(name, new Random().nextInt(26))
            );
        }
        else
        {
            return String.format(
                "hola %s - %tc - %s"
                , name
                , LocalDate.now()
                , cipher2(name, cipher1(name, new Random().nextInt(26)))
            );
        }
    }

    String cipher1(String msg, int shift)
    {
        StringBuilder result = new StringBuilder();
        int len = msg.length();
        for (int x = 0; x < len; x++)
        {
            char c = (char) (msg.charAt(x) + shift);
            if (c > 'z')
                result.append((char) (msg.charAt(x) - (26 - shift)));
            else
                result.append((char) (msg.charAt(x) + shift));
        }
        return result.toString();
    }

    public static String cipher2(String text, final String key)
    {
        StringBuilder result = new StringBuilder();
        text = text.toUpperCase();
        for (int i = 0, j = 0; i < text.length(); i++)
        {
            char c = text.charAt(i);
            if (c < 'A' || c > 'Z')
                continue;
            result.append((char) ((c + key.charAt(j) - 2 * 'A') % 26 + 'A'));
            j = ++j % key.length();
        }
        return result.toString();
    }

}
