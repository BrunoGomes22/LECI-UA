using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace forms_train
{

    [Serializable()]
    public class Manuntencao
    {
        private String _id_manuntencao;
        private String _descricao;
        private String _data_manuntencao;
        private String _FK_Comboio;

        public String id_manuntencao
        {
            get { return _id_manuntencao; }
            set
            {
                if(value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Manutencao ID field can't be empty!");
                    return;
                }
                _id_manuntencao = value;
            }
        }

        public String descricao
        {
            get { return _descricao; }
            set { _descricao = value; }
        }

        public String data_manuntencao
        {
            get { return _data_manuntencao; }
            set
            {
                if(value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Data de manutencao field can't be empty!");
                    return;
                }
                _data_manuntencao = value;
            }
        }

        public String FK_Comboio
        {
            get { return _FK_Comboio; }
            set
            {
                if(value == null | String.IsNullOrEmpty(value))
                {
                    throw new Exception("Comboio field can't be empty!");
                    return;
                }
                _FK_Comboio = value;
            }
        }

        public override string ToString()
        {
            return _id_manuntencao + " " + _descricao + " " + _FK_Comboio;
        }


    }
}
