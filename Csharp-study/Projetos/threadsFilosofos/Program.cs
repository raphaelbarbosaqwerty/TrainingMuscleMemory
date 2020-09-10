using System;
using System.Threading;

namespace threadsPhilosopher
{
    class Program
    {
        public class ThreadPhilosopher
        {
            public static void Platao() {
                Philosopher platao = new Philosopher("Platao");
                Employee employee = new Employee();
                lock(platao) {
                    platao.thinking();
                    platao.hungry();
                        lock(platao) {
                            platao.pickForkRight();
                            platao.pickForkLeft();
                        }
                    platao.eat();
                    employee.employeeServes();
                }
            }

            public static void Epicurus() {
                Thread.Sleep(2000);
                Philosopher epicurus = new Philosopher("Epicurus");
                Employee employee = new Employee();
                lock(epicurus) {
                    epicurus.thinking();
                    epicurus.hungry();
                        lock(epicurus) {
                            epicurus.pickForkRight();
                            epicurus.pickForkLeft();
                        }
                    epicurus.eat();
                    employee.employeeServes();
                }
            }

            public static void Socrates() {
                Thread.Sleep(3000);
                Philosopher socrates = new Philosopher("Socrates");
                Employee employee = new Employee();
                lock(socrates) {
                    socrates.thinking();
                    socrates.hungry();
                        lock(socrates) {
                            socrates.pickForkRight();
                            socrates.pickForkLeft();
                        }
                    socrates.eat();
                    employee.employeeServes();
                }
            }

            public static void Aristotales() {
                Thread.Sleep(4000);
                Philosopher aristotales = new Philosopher("Aristotales");
                Employee employee = new Employee();
                lock(aristotales) {
                    aristotales.thinking();
                    aristotales.hungry();
                        lock(aristotales) {
                            aristotales.pickForkRight();
                            aristotales.pickForkLeft();
                        }
                    aristotales.eat();
                    employee.employeeServes();
                }
            }

            public static void Kant() {
                Thread.Sleep(5000);
                Philosopher kant = new Philosopher("Kant");
                Employee employee = new Employee();
                lock(kant) {
                    kant.thinking();
                    kant.hungry();
                        lock(kant) {
                            kant.pickForkRight();
                            kant.pickForkLeft();
                        }
                    kant.eat();
                    employee.employeeServes();
                }
            }
        }
            class ThreadMesa {
                public static void Main() {

                Thread platao = new Thread(ThreadPhilosopher.Platao);
                Thread epicurus = new Thread(ThreadPhilosopher.Epicurus);
                Thread socrates = new Thread(ThreadPhilosopher.Socrates);
                Thread aristotales = new Thread(ThreadPhilosopher.Aristotales);
                Thread kant = new Thread(ThreadPhilosopher.Kant);

                platao.Start();
                epicurus.Start();
                socrates.Start();
                aristotales.Start();
                kant.Start();
            }
        }
    }
}
