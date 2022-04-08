# Onde utilizar os paradigmas de programação?

## Paradigma Funcional 

Quando pensamos no paradigma funcional, logos somos levados a considerar que o termo função vai ser
muito importante neste paradigma e isto é correto de se afirmar. Nesse sentindo, temos que levar em consideração que no paradigma funcional
o problema é divido em blocos e, para sua resolução, são implementadas funções que definem variáveis em seu escopo e retornam algum resultado.

É indicado quando **a solução requirada é formente dependente de uma base matemática**. Desse modo, o problema é quebrado em funções menores que farão o processamento dos dados atráves de cálculos matemáticos.

As linguagens que suportam o paradigma funcional - LISP, Scheme e o Haskell.

 - Exemplo de código em Haskell - Fibonnacci

```haskell
fib x 
    | x < 2 = 1
    | otherwise = fib (x - 1) + fib (x - 2)
```

## Paradigma Lógico

O paradigma lógico é um distinto dos demais paradigmas e derida do declativo. Fundamentalmente, **utilza formas de lógica simbólica como padrões de entrada e saída**. A partir daí, realiza inferências para produzir os resultados.

Para exemplificar bem seu uso, podemos imaginar a tentativa de prova de um dado teorema, na qual são explicitadas algumas premissas e, sendo elas verdadeiras, a conclusão de tal teorema torna-se verdade também.

As linguagens que suportam o paradigma lógico - QLISP, Mercury e Prolog.

## Paradigma Orientado a objetos

O paradigma orientado a objetos surgiu como uma grande aposta para resolver gargalos da indústria de software, como produzir programas de forma mais rápida, com maior confiabilidade e a um custo menor. Para isso, buscou apoiar-se nas características de class e objeto ao tenta retratar a programção tal qual se enxegar o mundo real.

Desse modo, usamos a orientação a objetos quando queremos nos basear na vida real e resolver problemas de software, assim podemos utilzar os pilares da orientação a objetos como herança, polimorfismo e encapsulamento.

As linguagens que suportam o paradigma orientado a objetos - Java, C#, Python, Javascript.


 - Exemplo de Código em C#

 ```c#
    public class Carro
    {
        public string Modelo { get; set; }

        public void IniciarViagem(int distancia)
        {
        }
    }
    static void ManipularCarro()
    {
        IList<Carro> carros = new List<Carro>();

        Carro carro = new Carro();
        carro.Modelo = "Ferrari";
        carros.Add(carro);

        foreach (Carro c in carros)
        {
            c.IniciarViagem(200);
        }
     }
 ```

## Paradigms orientado a eventos

O paradigma de orientação a eventos é usado por toda linguagem dee programação que tem uso de recursos principalmente de gráficos, comos jogos dentre outros. Nesse sentido, a execução do programa se dá a medida que determinados eventos são disparados pelo usuário. Portanto, quem usa é responsáveel pelo momento em que o programa é executado.

As linguagens que suportam o paradigma orientado a eventos - C#, C++, UnrealScript

```c#
public class SampleEventArgs
{
    public SampleEventArgs(string text) { Text = text; }
    public string Text { get; } // readonly
}

public class Publisher
{
    // Declare the delegate (if using non-generic pattern).
    public delegate void SampleEventHandler(object sender, SampleEventArgs e);

    // Declare the event.
    public event SampleEventHandler SampleEvent;

    // Wrap the event in a protected virtual method
    // to enable derived classes to raise the event.
    protected virtual void RaiseSampleEvent()
    {
        // Raise the event in a thread-safe manner using the ?. operator.
        SampleEvent?.Invoke(this, new SampleEventArgs("Hello"));
    }
}
```

