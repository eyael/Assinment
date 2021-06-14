using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeekTwoExample
{
    class ReadFile
    {
        public void readfromfile()

        {

            string txtFile = @"C:\Users\Eyael\Desktop\Pyramid\Pyramid's stuffs\Examples\WeekTwo\FileContentTwo.txt";


            // First way of print out the text file..

            if (File.Exists(txtFile))
            {

                string txt = File.ReadAllText(txtFile);

                Console.WriteLine(txt);
            }

            // The second way of printing out the file

            if (File.Exists(txtFile))
            {

                string[] fileLines = File.ReadAllLines(txtFile);

                foreach (string line in fileLines)
                {
                    Console.WriteLine(line);
                }
            }

            // The third way of reading the file 

            using (StreamReader sr = new StreamReader(txtFile))
            {

                int counter = 0;

                string ln;

                while ((ln = sr.ReadLine()) != null)
                {
                    Console.WriteLine(ln);

                    counter++;
                }
            }


            StreamWriter log;

            string writeval = "Let us write this in \n";

            log = File.AppendText(txtFile);

            log.WriteLine(writeval);

            log.Close();

            string readval = File.ReadAllText(txtFile);

            Console.WriteLine(readval);


        }


    }
}

