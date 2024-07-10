using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace forms_train
{
    [Serializable()]
    public class Comboio
    {
        private String _id_comboio;
        private String _capacidade;
        private String _data_fabrico;
        private String _modelo;

        public String id_comboio
        {
            get { return _id_comboio; }
            set
            {
                if(value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Comboio ID can't be empty!");
                    return;
                }
                _id_comboio = value;
            }
        }

        public String capacidade
        {
            get { return _capacidade; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Capacidade can't be empty!");
                    return;
                }
                _capacidade = value;
            }
        }

        public String data_fabrico
        {
            get { return _data_fabrico; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Data de fabrico can't be empty!");
                    return;
                }
                _data_fabrico = value;
            }
        }

        public String modelo
        {
            get { return _modelo; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Modelo can't be empty!");
                    return;
                }
                _modelo = value;
            }
        }

        public override string ToString()
        {
            return _id_comboio + " " + _data_fabrico + " " + _modelo;
        }



    }
}
