using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate.Cfg;
using NHibernate.Dialect;
using NHibernate.Driver;
using System.Reflection;
using EncjeUczelnii;
using System.Data;

namespace TestowanieNHibernate
{
    class Program
    {
        /*
         * Co trzeba miec aby to dzialalo?
         * 1. DataSource trzeba zmienic na swoje
         * 2. InitialCatalog -> nazwa bazy danych
         * 3. 
         */
        static void Main(string[] args)
        {
            var cfg = new Configuration()
                .Configure("D:\\Projekty\\C#\\Uczelnia\\TestowanieNHibernate\\hibernate.cfg.xml")
                .AddFile("D:\\Projekty\\C#\\Uczelnia\\EncjeUczelnii\\Tutor.hbm.xml");

            cfg.AddAssembly(Assembly.GetExecutingAssembly());
            var sefact = cfg.BuildSessionFactory();
            using (var session = sefact.OpenSession())
            {

                using (var tx = session.BeginTransaction())
                {
                    Tutor buff = new Tutor();
                    session.Save(buff);
                    tx.Commit();
                }
            }
            Console.WriteLine("THE END - sprawdź tabele");
        }
    }
}
