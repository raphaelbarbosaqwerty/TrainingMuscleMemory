using System;
using System.Threading;

namespace threadsPhilosopher {
    public class Philosopher {
        string nome;

        public Philosopher(string defineNome) {
            nome = defineNome;
        }

        public void thinking() {
            Console.WriteLine("Philosopher "+ nome + " is thinking");
        }

        public void hungry() {
            Console.WriteLine("Philosopher "+ nome +" is hungry!");
        }

        public void pickForkRight() {
            Thread.Sleep(1000);
            Console.WriteLine("Philosopher "+ nome + " picking up fork right");
        }

        public void pickForkLeft() {
            Console.WriteLine("Philosopher "+ nome + " picking up fork left");
        }

        public void eat() {
            Console.WriteLine("Philosopher "+ nome + " eating");
        }
    }
}
