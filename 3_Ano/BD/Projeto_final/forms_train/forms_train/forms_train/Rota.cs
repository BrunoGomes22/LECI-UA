using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace forms_train
{

	[Serializable()]
	public class Rota
	{
		private String _id_rota;
		private String _horario_partida;
		private String _horario_chegada;
		private String _estacao_partida;
		private String _estacao_chegada;
		private String _FK_Comboio;

		public String id_rota
		{
			get { return _id_rota; }
			set {
				if (value == null | String.IsNullOrEmpty(value))
				{
					throw new Exception("Route ID field can't be empty!");
					return;
				}
				_id_rota = value;

			}
		}

		public String horario_partida
		{
			get { return _horario_partida; }
			set { _horario_partida = value; }

		}

		public String horario_chegada
		{
			get { return _horario_chegada; }
			set { _horario_chegada = value; }

		}

		public String estacao_partida
		{
			get { return _estacao_partida; }
			set { _estacao_partida = value; }
		}

		public String estacao_chegada
		{
			get { return _estacao_chegada; }
			set { _estacao_chegada = value; }
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
			return _id_rota + " " + _estacao_partida + " " + _estacao_chegada;
		}

		/*
		public Contact() : base()
		{
		}
		*/
	}

}
