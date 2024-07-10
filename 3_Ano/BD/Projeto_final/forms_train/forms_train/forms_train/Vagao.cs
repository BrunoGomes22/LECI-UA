using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace forms_train
{
    [Serializable()]
    public class Vagao
    {
        private String _id_vagao;
        private String _descricao;
        private String _capacidade;
        private String _FK_Comboio;
        private String _modelo;

        public String id_vagao
        {
            get { return _id_vagao; }
            set
            {
                if (value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Vagao ID field can't be empty!");
                    return;
                }
                _id_vagao = value;
            }
        }

        public String descricao
        {
            get { return _descricao; }
            set { _descricao = value; }
        }

        public String capacidade
        {
            get { return _capacidade; }
            set
            {
                if(value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Capacidade field can't be empty!");
                    return;
                }
                _capacidade = value;
            }
        }

        public String FK_Comboio
        {
            get { return _FK_Comboio; }
            set { _FK_Comboio = value; }
        }

        public String modelo
        {
            get { return _modelo; }
            set
            {
                if(value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Modelo field can't be empty!");
                    return;
                }
                _modelo = value;
            }
        }

        public override string ToString()
        {
            return _id_vagao + " " + _descricao + " " + _modelo;
        }
    }

   
}
