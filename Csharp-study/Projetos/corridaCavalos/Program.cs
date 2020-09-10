using System;
using System.Threading;

namespace corridaCavalos
{
    public class ThreadWork 
    {
        public static void Leonidas()
        {
            for(int i = 0; i<1;i++) {
                Cavalos cavaloLeonidas = new Cavalos("Leonidas");
                    cavaloLeonidas.Correr();
                Thread.Sleep(100);
            }
        }
        public static void Aquiles()
        {
            for(int i = 0; i<1;i++) {
                Cavalos cavaloAquiles = new Cavalos("Aquiles");
                    cavaloAquiles.Correr();
                Thread.Sleep(100);
            }
        }
        public static void Harry()
        {
            for(int i = 0; i<1;i++) {
                Cavalos cavaloHarry = new Cavalos("Harry");
                    cavaloHarry.Correr();
                Thread.Sleep(100);
            }
        }
        public static void Cinzento()
        {
            for(int i = 0; i<1;i++) {
                Cavalos cavaloCinzento = new Cavalos("Cinzento");
                    cavaloCinzento.Correr();
                Thread.Sleep(100);
            }
        }
        public static void Pano()
        {
            for(int i = 0; i<1;i++) {
                Cavalos cavaloPano = new Cavalos("Pano");
                    cavaloPano.Correr();
                Thread.Sleep(100);
            }
        }
    }
    class ThreadTest
    {
        public static void Main()
        {
            Thread cavaloLeonidas = new Thread(ThreadWork.Leonidas);
            Thread cavaloAquiles = new Thread(ThreadWork.Aquiles);
            Thread cavaloHarry = new Thread(ThreadWork.Harry);
            Thread cavaloCinzento = new Thread(ThreadWork.Cinzento);
            Thread cavaloPano = new Thread(ThreadWork.Pano);

            cavaloAquiles.Start();
            cavaloLeonidas.Start();
            cavaloHarry.Start();
            cavaloCinzento.Start();
            cavaloPano.Start();

            for (int i = 0; i<1; i++) {
                Console.WriteLine("Em suas marcas!");
                Thread.Sleep(100);
            }
        }
    }
}