import javax.swing.*;
import java.awt.*;

public class Eje_15 extends JFrame {
    private JLabel label;

    public Eje_15() {
        super("Eje_15");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        ImageIcon imagenFondo = new ImageIcon("src/chandoswing/image15.png");

        JLabel imagenLabel = new JLabel(imagenFondo);
        imagenLabel.setLayout(new BorderLayout());

        label = new JLabel();
        imagenLabel.add(label, BorderLayout.CENTER);

        // Creamos el JScrollPane y lo agregamos al JLabel
        JScrollPane scrollPane = new JScrollPane(imagenLabel);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);

        // Agregamos el JScrollPane al marco
        setContentPane(scrollPane);

        setSize(500, 500);
        setVisible(true);
    }
    public static void main(String[] args) {
        new Eje_15();
    }
}
