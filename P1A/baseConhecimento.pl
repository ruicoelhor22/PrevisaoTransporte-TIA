if origem_braga and destino_porto then viagem_curta.
if origem_braga and destino_lisboa then viagem_longa.
if origem_braga and destino_faro then viagem_longa.

if origem_porto and destino_braga then viagem_curta.
if origem_porto and destino_lisboa then viagem_longa.
if origem_porto and destino_faro then viagem_longa.


if origem_lisboa and destino_braga then viagem_longa.
if origem_lisboa and destino_porto then viagem_longa.
if origem_lisboa and destino_faro then viagem_longa.


if origem_faro and destino_braga then viagem_longa.
if origem_faro and destino_porto then viagem_longa.
if origem_faro and destino_lisboa then viagem_longa.

/*curta caro*/
if viagem_curta and custo_caro then cc.
	/* curta caro muitotempo*/
	if cc and tempod_muito then ccm.
		/* curta caro muitotempo mb_sim*/
		if ccm and mb_sim then ccm_mb_sim.
			/* curta caro muitotempo mb_sim conduz*/
			if ccm_mb_sim and conduz then ccm_mb_sim_c.
				if ccm_mb_sim_c and c_sozinho then carro.
				if ccm_mb_sim_c and c_1a4 then carro. 
				if ccm_mb_sim_c and c_mais4 then comboio. 
			/* curta caro muitotempo mb_sim nconduz*/
			if ccm_mb_sim and nconduz then ccm_mb_sim_nc.
				if ccm_mb_sim_nc and c_sozinho then comboio.
				if ccm_mb_sim_nc and c_1a4 then comboio.
				if ccm_mb_sim_nc and c_mais4 then comboio.
		/* curta caro muitotempo mb_nao*/
		if ccm and mb_nao then ccm_mb_nao.
			/* curta caro muitotempo mb_nao conduz*/
			if ccm_mb_nao and conduz then ccm_mb_nao_c.
				if ccm_mb_nao_c and c_sozinho then carro.
				if ccm_mb_nao_c and c_1a4 then carro. 
				if ccm_mb_nao_c and c_mais4 then comboio.
			/* curta caro muitotempo mb_nao nconduz*/				
			if ccm_mb_nao and nconduz then ccm_mb_nao_nc.
				if ccm_mb_nao_nc and c_sozinho then comboio.
				if ccm_mb_nao_nc and c_1a4 then comboio.
				if ccm_mb_nao_nc and c_mais4 then comboio.
	
	/* curta caro poucotempo*/
	if cc and tempod_pouco then ccp.
		/* curta caro poucotempo mb_sim*/
		if ccp and mb_sim then ccp_mb_sim.
			/* curta caro poucotempo mb_sim conduz*/
			if ccp_mb_sim and conduz then ccp_mb_sim_c.
				if ccp_mb_sim_c and c_sozinho then carro.
				if ccp_mb_sim_c and c_1a4 then carro. 
				if ccp_mb_sim_c and c_mais4 then comboio. 
			/* curta caro poucotempo mb_sim nconduz*/
			if ccp_mb_sim and nconduz then ccp_mb_sim_nc.
				if ccp_mb_sim_nc and c_sozinho then comboio.
				if ccp_mb_sim_nc and c_1a4 then comboio.
				if ccp_mb_sim_nc and c_mais4 then comboio.
		/* curta caro poucotempo mb_nao*/
		if ccp and mb_nao then ccp_mb_nao.
			/* curta caro poucotempo mb_nao conduz*/
			if ccp_mb_nao and conduz then ccp_mb_nao_c.
				if ccp_mb_nao_c and c_sozinho then carro.
				if ccp_mb_nao_c and c_1a4 then carro. 
				if ccp_mb_nao_c and c_mais4 then comboio. 
			/* curta caro poucotempo mb_nao nconduz*/
			if ccp_mb_nao and nconduz then ccp_mb_nao_nc.
				if ccp_mb_nao_nc and c_sozinho then comboio.
				if ccp_mb_nao_nc and c_1a4 then comboio.
				if ccp_mb_nao_nc and c_mais4 then comboio.
				
/*curta barato*/
if viagem_curta and custo_barato then cb.
	/* curta barato muitotempo*/
	if cb and tempod_muito then cbm.
		/* curta barato muitotempo mb_sim*/
		if cbm and mb_sim then cbm_mb_sim.
			/* curta barato muitotempo mb_sim conduz*/
			if cbm_mb_sim and conduz then cbm_mb_sim_c.
				if cbm_mb_sim_c and c_sozinho then carro.
				if cbm_mb_sim_c and c_1a4 then carro. 
				if cbm_mb_sim_c and c_mais4 then comboio. 
			/* curta barato muitotempo mb_sim nconduz*/
			if cbm_mb_sim and nconduz then cbm_mb_sim_nc.
				if cbm_mb_sim_nc and c_sozinho then comboio.
				if cbm_mb_sim_nc and c_1a4 then comboio.
				if cbm_mb_sim_nc and c_mais4 then comboio.
		/* curta barato muitotempo mb_nao*/
		if cbm and mb_nao then cbm_mb_nao.
			/* curta barato muitotempo mb_nao conduz*/
			if cbm_mb_nao and conduz then cbm_mb_nao_c.
				if cbm_mb_nao_c and c_sozinho then carro.
				if cbm_mb_nao_c and c_1a4 then carro. 
				if cbm_mb_nao_c and c_mais4 then autocarro.
			/* curta barato muitotempo mb_nao nconduz*/				
			if cbm_mb_nao and nconduz then cbm_mb_nao_nc.
				if cbm_mb_nao_nc and c_sozinho then autocarro.
				if cbm_mb_nao_nc and c_1a4 then autocarro.
				if cbm_mb_nao_nc and c_mais4 then autocarro.
	
	/* curta barato poucotempo*/
	if cb and tempod_pouco then cbp.
		/* curta barato poucotempo mb_sim*/
		if cbp and mb_sim then cbp_mb_sim.
			/* curta barato poucotempo mb_sim conduz*/
			if cbp_mb_sim and conduz then cbp_mb_sim_c.
				if cbp_mb_sim_c and c_sozinho then carro.
				if cbp_mb_sim_c and c_1a4 then carro. 
				if cbp_mb_sim_c and c_mais4 then comboio. 
			/* curta barato poucotempo mb_sim nconduz*/
			if cbp_mb_sim and nconduz then cbp_mb_sim_nc.
				if cbp_mb_sim_nc and c_sozinho then comboio.
				if cbp_mb_sim_nc and c_1a4 then comboio.
				if cbp_mb_sim_nc and c_mais4 then comboio.
		/* curta barato poucotempo mb_nao*/
		if cbp and mb_nao then cbp_mb_nao.
			/* curta barato poucotempo mb_nao conduz*/
			if cbp_mb_nao and conduz then cbp_mb_nao_c.
				if cbp_mb_nao_c and c_sozinho then carro.
				if cbp_mb_nao_c and c_1a4 then carro. 
				if cbp_mb_nao_c and c_mais4 then comboio. 
			/* curta barato poucotempo mb_nao nconduz*/
			if cbp_mb_nao and nconduz then cbp_mb_nao_nc.
				if cbp_mb_nao_nc and c_sozinho then comboio.
				if cbp_mb_nao_nc and c_1a4 then comboio.
				if cbp_mb_nao_nc and c_mais4 then comboio.
			


/* longa caro */
if viagem_longa and custo_caro then lc.
	/*longa caro tempod_muito*/
	if lc and tempod_muito then lcm.
		/*longa caro tempod_muito mb_sim*/
		if lcm and mb_sim then lcm_mb_sim.
			/*longa caro tempod_muito mb_sim conduz*/
			if lcm_mb_sim and conduz then lcm_mb_sim_c.
				if lcm_mb_sim_c and c_sozinho then carro.
				if lcm_mb_sim_c and c_1a4 then carro.
				if lcm_mb_sim_c and c_mais4 then aviao.
			/*longa caro tempod_muito mb_sim nconduz*/
			if lcm_mb_sim and nconduz then lcm_mb_sim_nc.
				if lcm_mb_sim_nc and c_sozinho then aviao.
				if lcm_mb_sim_nc and c_1a4 then aviao.
				if lcm_mb_sim_nc and c_mais4 then aviao.
		/* longa caro tempod_muito mb_nao*/
		if lcm and mb_nao then lcm_mb_nao.
			/* longa caro tempod_muito mb_nao conduz*/
			if lcm_mb_nao and conduz then lcm_mb_nao_c.
				if lcm_mb_nao_c and c_sozinho then carro.
				if lcm_mb_nao_c and c_1a4 then carro.
				if lcm_mb_nao_c and c_mais4 then aviao. 
			/* longa caro tempod_muito mb_nao nconduz*/
			if lcm_mb_nao and nconduz then lcm_mb_nao_nc.
				if lcm_mb_nao_nc and c_sozinho then aviao.
				if lcm_mb_nao_nc and c_1a4 then aviao. 
				if lcm_mb_nao_nc and c_mais4 then aviao. 
	/*longa caro tempod_pouco*/
	if lc and tempod_pouco then lcp.	
			/*longa caro tempod_pouco mb_sim*/
			if lcp and mb_sim then lcp_mb_sim.
				/*longa caro tempod_pouco mb_sim conduz*/
				if lcp_mb_sim and conduz then lcp_mb_sim_c.
					if lcp_mb_sim_c and c_sozinho then carro.
					if lcp_mb_sim_c and c_1a4 then carro.
					if lcp_mb_sim_c and c_mais4 then aviao.
				/*longa caro tempod_pouco mb_sim nconduz*/
				if lcp_mb_sim and nconduz then lcp_mb_sim_nc.
					if lcp_mb_sim_nc and c_sozinho then aviao.
					if lcp_mb_sim_nc and c_1a4 then aviao.
					if lcp_mb_sim_nc and c_mais4 then aviao.
			/* longa caro tempod_pouco mb_nao*/
			if lcp and mb_nao then lcp_mb_nao.
				/* longa caro tempod_pouco mb_nao conduz*/
				if lcp_mb_nao and conduz then lcp_mb_nao_c.
					if lcp_mb_nao_c and c_sozinho then carro.
					if lcp_mb_nao_c and c_1a4 then carro.
					if lcp_mb_nao_c and c_mais4 then aviao. 
				/* longa caro tempod_pouco mb_nao nconduz*/
				if lcp_mb_nao and nconduz then lcp_mb_nao_nc.
					if lcp_mb_nao_nc and c_sozinho then aviao.
					if lcp_mb_nao_nc and c_1a4 then aviao. 
					if lcp_mb_nao_nc and c_mais4 then aviao. 	
/*longa barato*/
if viagem_longa and custo_barato then lb.
	/*longa barato tempod_muito*/
	if lb and tempod_muito then lbm.
		/* longa barato tempod_muito mb_sim*/
		if lbm and mb_sim then lbm_mb_sim.
			/* longa barato tempod_muito mb_sim conduz*/
			if lbm_mb_sim and conduz then lbm_mb_sim_c.
				if lbm_mb_sim_c and c_sozinho then carro.
				if lbm_mb_sim_c and c_1a4 then carro.
				if lbm_mb_sim_c and c_mais4 then comboio. 
			/* longa barato tempod_muito mb_sim nconduz*/
			if lbm_mb_sim and nconduz then lbm_mb_sim_nc.
				if lbm_mb_sim_nc and c_sozinho then comboio.
				if lbm_mb_sim_nc and c_1a4 then comboio.
				if lbm_mb_sim_nc and c_mais4 then comboio.
		/* longa barato tempod_muito mb_nao*/
		if lbm and mb_nao then lbm_mb_nao.
			/* longa barato tempod_muito mb_nao conduz*/
			if lbm_mb_nao and conduz then lbm_mb_nao_c.
				if lbm_mb_nao_c and c_sozinho then autocarro.
				if lbm_mb_nao_c and c_1a4 then autocarro.
				if lbm_mb_nao_c and c_mais4 then autocarro.
			/* longa barato tempod_muito mb_nao nconduz*/
			if lbm_mb_nao and nconduz then lbm_mb_nao_nc.
				if lbm_mb_nao_nc and c_sozinho then autocarro.
				if lbm_mb_nao_nc and c_1a4 then autocarro.
				if lbm_mb_nao_nc and c_mais4 then autocarro.
	/* longa barato tempod_pouco */	
	if lb and tempod_pouco then lbp.
		/*longa barato tempod_pouco mb_sim*/
		if lbp and mb_sim then lbp_mb_sim.
			/* longa barato tempod_pouco mb_sim conduz*/
			if lbp_mb_sim and conduz then lbp_mb_sim_c.
				if lbp_mb_sim_c and c_sozinho then carro.
				if lbp_mb_sim_c and c_1a4 then carro.
				if lbp_mb_sim_c and c_mais4 then comboio.
			/* longa barato tempod_pouco mb_sim nconduz*/
			if lbp_mb_sim and nconduz then lbp_mb_sim_nc.
				if lbp_mb_sim_nc and c_sozinho then comboio.
				if lbp_mb_sim_nc and c_1a4 then comboio.
				if lbp_mb_sim_nc and c_mais4 then comboio.
		/*longa barato tempod_pouco mb_nao*/
		if lbp and mb_nao then lbp_mb_nao.
			/*longa barato tempod_pouco mb_nao conduz*/
			if lbp_mb_nao and conduz then lbp_mb_nao_c.
				if lbp_mb_nao_c and c_sozinho then carro.
				if lbp_mb_nao_c and c_1a4 then carro.
				if lbp_mb_nao_c and c_mais4 then comboio.
			/* longa barato tempod_pouco mb_nao nconduz*/
			if lbp_mb_nao and nconduz then lbp_mb_nao_nc.
				if lbp_mb_nao_nc and c_sozinho then comboio.
				if lbp_mb_nao_nc and c_1a4 then comboio.
				if lbp_mb_nao_nc and c_mais4 then comboio.
