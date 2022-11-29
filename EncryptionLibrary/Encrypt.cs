using System;
using System.Collections;

namespace EncryptionLibrary
{
    public class Encrypt
    {
        public string EncryptString(string password)
        {
            try
            {
                string stRet;
                string stSub;
                ArrayList arrayOffsets = new ArrayList();

                int intCtr = 0;
                int intMod = 0;
                int intValue = 0;
                int intNewValue = 0;

                arrayOffsets.Insert(0, 73);
                arrayOffsets.Insert(1, 56);
                arrayOffsets.Insert(2, 31);
                arrayOffsets.Insert(3, 58);
                arrayOffsets.Insert(4, 77);
                arrayOffsets.Insert(5, 75);

                stRet = "";

                for (intCtr = 0; intCtr <= password.Length - 1; intCtr++)
                {
                    stSub = password.Substring(intCtr, 1);
                    intValue =
                    (int)System.Text.Encoding.ASCII.GetBytes(stSub)[0];
                    intMod = intCtr % arrayOffsets.Count;
                    intNewValue = intValue + Convert.ToInt32(arrayOffsets[intMod]);
                    intNewValue %= 256;
                    stRet += intNewValue.ToString("X2");
                }
                return stRet;
            }
            catch (Exception exc)
            {
                throw exc;
            }
        }
    }
}