using System;
using Xunit;

namespace TestProject
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            Console.WriteLine("Tests");
            Assert.Equal(1, 1);

        }
    }
}
