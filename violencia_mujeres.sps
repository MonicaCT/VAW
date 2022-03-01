********************************************************************************
GENERANDO LAS VARIABLES DE INTERES
********************************************************************************
*cd "C:\Users\Mónica\Documents\Violencia_mujer\stata\Data_out" /*Laptop*/

*cd "H:\Violencia_mujer040318\stata\Data_out".

*use file 'EPCVCM_Persona_mc1'.

********************************************************************************
*Sexo
********************************************************************************

compute sexo=s2_02.

VARIABLE LABELS sexo 'Identifica genero del encuestado'.

VALUE LABELS
/sexo
1 'Hombre'
2 'Mujer'.

CTABLES
/VLABELS VARIABLES=depto sexo DISPLAY=LABEL
/TABLE depto BY sexo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=sexo ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Departamento
********************************************************************************

VARIABLE LABELS depto 'Identifica el departamento'.

VALUE LABELS
/depto
1 '1.Chuquisca'
2 '2.La Paz'
3 '3.Cochabamba'
4 '4.Oruro'
5 '5.Potosí'
6 '6.Tarija'
7 '7.Santa Cruz'
8 '8.Beni'
9 '9.Pando'.

CTABLES
/VLABELS VARIABLES=depto sexo DISPLAY=LABEL
/TABLE depto BY sexo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=sexo ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Edad
********************************************************************************

COMPUTE edad=s2_03.

VARIABLE LABELS edad 'Edad del encuestado'.

CTABLES
  /VLABELS VARIABLES=edad depto DISPLAY=LABEL
  /TABLE edad [S][MEAN, MEDIAN] BY depto [C]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=edad ORDER=A KEY=VALUE EMPTY=EXCLUDE.

********************************************************************************
*Jefatura del hogar
********************************************************************************

COMPUTE   jefe=0.
IF s2_05=1 jefe=1.

VARIABLE LABELS jefe 'Es feje del hogar'.

VALUE LABELS
/jefe
1 'Es Jefe'
0 'No es jefe'.

CTABLES
/VLABELS VARIABLES=depto jefe DISPLAY=LABEL
/TABLE depto BY jefe [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=jefe ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Relación de parentezco
********************************************************************************

COMPUTE   relaparentezco=s2_05.

VARIABLE LABELS relaparentezco 'Relación de parentezco con el feje del hogar'.

VALUE LABELS
/relaparentezco
1 '1. JEFE O JEFA DEL HOGAR'
2 '2. ESPOSA/O O CONVIVIENTE'
3 '3. HIJO/A O ENTENADO/A'
4 '4. YERNO O NUERA'
5 '5. HERMANO/A O CUÑADO/A'
6 '6. PADRES O PADRASTROS'
7 '7. SUEGROS'
8 '8. NIETO/NIETA'
9 '9. OTRO PARIENTE'
10 '10.OTRO QUE NO ES PARIENTE'
11 '11.EMPLEADA/O DEL HOGAR CAMA ADENTRO'
12 '12.PARIENTE DE LA EMPLEADA/O DEL HOGAR'.

CTABLES
/VLABELS VARIABLES=depto relaparentezco DISPLAY=LABEL
/TABLE depto BY relaparentezco [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=relaparentezco ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Idioma
********************************************************************************

COMPUTE idioma1=s2_07_1.
COMPUTE idioma2=s2_07_2.
COMPUTE idioma3=s2_07_3.

VARIABLE LABELS idioma1 'Primer idioma que habla'.
VARIABLE LABELS idioma2 'Segundo idioma que habla'.
VARIABLE LABELS idioma3 'Tercer idioma que habla'.

VALUE LABELS
/idioma1
2 '2.AYMARA' 
6 '6.CASTELLANO' 
7 '7.CAVINEÑO'
10 '10.CHIMAN'
12 '12.GUARANI'
14 '14.GUARAYU' 
20 '20.MOJEÑO IGNACIANO'
24 '24.MOVIMA'
26 '26.PUQUINA' 
27 '27.QUECHUA' 
29 '29.TACANA'
32 '32.URUCHIPAYA'
36 '36.YURACARE'
41 '41.ALEMAN'
42 '42.ARABE'
45 '45.CHINO'
46 '46.COREANO'
54 '52.INGLES'
55 '55.ITALIANO' 
56 '56.JAPONES'
58 '58.PORTUGUES'
60 '60.RUSO'
995 '995.B. NO PUEDE HABLAR'
996 '996.A. NO HABLA AÚN'
998 '998.NO SABE'.

VALUE LABELS
/idioma2
2 '2.AYMARA' 
6 '6.CASTELLANO' 
7 '7.CAVINEÑO'
10 '10.CHIMAN'
12 '12.GUARANI'
14 '14.GUARAYU' 
20 '20.MOJEÑO IGNACIANO'
24 '24.MOVIMA'
26 '26.PUQUINA' 
27 '27.QUECHUA' 
29 '29.TACANA'
32 '32.URUCHIPAYA'
36 '36.YURACARE'
41 '41.ALEMAN'
42 '42.ARABE'
45 '45.CHINO'
46 '46.COREANO'
54 '52.INGLES'
55 '55.ITALIANO' 
56 '56.JAPONES'
58 '58.PORTUGUES'
60 '60.RUSO'
995 '995.B. NO PUEDE HABLAR'
996 '996.A. NO HABLA AÚN'
998 '998.NO SABE'.

VALUE LABELS
/idioma3
2 '2.AYMARA' 
6 '6.CASTELLANO' 
7 '7.CAVINEÑO'
10 '10.CHIMAN'
12 '12.GUARANI'
14 '14.GUARAYU' 
20 '20.MOJEÑO IGNACIANO'
24 '24.MOVIMA'
26 '26.PUQUINA' 
27 '27.QUECHUA' 
29 '29.TACANA'
32 '32.URUCHIPAYA'
36 '36.YURACARE'
41 '41.ALEMAN'
42 '42.ARABE'
45 '45.CHINO'
46 '46.COREANO'
54 '52.INGLES'
55 '55.ITALIANO' 
56 '56.JAPONES'
58 '58.PORTUGUES'
60 '60.RUSO'
995 '995.B. NO PUEDE HABLAR'
996 '996.A. NO HABLA AÚN'
998 '998.NO SABE'.

CTABLES
/VLABELS VARIABLES=depto idioma1 DISPLAY=LABEL
/TABLE depto BY idioma1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=idioma1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
/VLABELS VARIABLES=depto idioma2 DISPLAY=LABEL
/TABLE depto BY idioma2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=idioma2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
/VLABELS VARIABLES=depto idioma3 DISPLAY=LABEL
/TABLE depto BY idioma3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=idioma3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

COMPUTE   bilingue=0.
IF idioma1=6 bilingue=1.
IF idioma1=2 | idioma1=10 |  idioma1=12 | idioma1=14 | idioma1=27 bilingue=2.
IF bilingue=1 & idioma2<>998 bilingue=3.

VARIABLE LABELS bilingue 'Idioma que habla'.

VALUE LABELS
/bilingue
0 '0.No habla/No sabe'
1 '1.Solo Castellano'
2 '2.Idioma originario'
3 '3.Bilingüe'.

CTABLES
/VLABELS VARIABLES=depto bilingue DISPLAY=LABEL
/TABLE depto BY bilingue [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=bilingue ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Idioma materno
********************************************************************************

COMPUTE idiomaterno=s2_08.

VARIABLE LABELS idiomaterno 'Idioma que aprendio en su niñez'.

VALUE LABELS
/idiomaterno
2 '2.AYMARA' 
6 '6.CASTELLANO' 
7 '7.CAVINEÑO'
10 '10.CHIMAN'
12 '12.GUARANI'
14 '14.GUARAYU' 
20 '20.MOJEÑO IGNACIANO'
24 '24.MOVIMA'
26 '26.PUQUINA' 
27 '27.QUECHUA' 
29 '29.TACANA'
32 '32.URUCHIPAYA'
36 '36.YURACARE'
41 '41.ALEMAN'
42 '42.ARABE'
45 '45.CHINO'
46 '46.COREANO'
54 '52.INGLES'
55 '55.ITALIANO' 
56 '56.JAPONES'
58 '58.PORTUGUES'
60 '60.RUSO'
995 '995.B. NO PUEDE HABLAR'
996 '996.A. NO HABLA AÚN'
998 '998.NO SABE'.

CTABLES
/VLABELS VARIABLES=depto idiomaterno DISPLAY=LABEL
/TABLE depto BY idiomaterno [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=idiomaterno ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Autoidentificación
********************************************************************************

COMPUTE autoid=s2_09_1.
VARIABLE LABELS autoid 'Identificacion naciones originarias'.

VALUE LABELS
/autoid
28	'28.QUECHUA'
3	'3.AYMARA'
22	'22.MOJEÑO'
19	'19.LECO'
13	'13.GUARANI'
18	'18.KALLAWAYA'
1	'1.AFROBOLIVIANO'
27	'27.PACAHUARA'
24	'24.MOSETEN'
30	'30.TACANA'
32	'32.CHIMAN'
11	'11.CHIQUITANO'
15	'15.GUARAYO'
25	'25.MOVIMA'
17	'17.JOAQUINIANO'
5	'5.BAURE'
16	'16.ITONAMA'
29	'29.SIRIONO'
7	'7.CAVINEÑO'
33	'33.MATACO'
2	'2.ARAONA'
42  '42.CHICHAS'
43  '43.MESTIZO'
700 '700.CAMPESINO'.

CTABLES
/VLABELS VARIABLES=depto autoid DISPLAY=LABEL
/TABLE depto BY autoid [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=autoid ORDER=A KEY=VALUE EMPTY=INCLUDE.

COMPUTE pertenece=s2_09.

VARIABLE LABELS pertenece 'Pertenece o no a alguna nacion originaria'.

VALUE LABELS
/pertenece
1 '1.Pertenece'
2 '2.No pertenece' 
3 '3.Soy boliviano'.

CTABLES
/VLABELS VARIABLES=depto pertenece DISPLAY=LABEL
/TABLE depto BY pertenece [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=pertenece ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Estado civil
********************************************************************************

COMPUTE ecivil=s2_10.

VARIABLE LABELS ecivil 'Estado civil'.

VALUE LABELS
/ecivil
1 '1.Soltero' 
2 '2.Casado'.

CTABLES
/VLABELS VARIABLES=depto ecivil DISPLAY=LABEL
/TABLE depto BY ecivil [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ecivil ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Instrucción
********************************************************************************

COMPUTE ciclo=s3_01.
COMPUTE grado=s3_01_a.

************************************************************
*Sistema primario/secundario antiguo(12 años de escolaridad)

COMPUTE escol=0.

IF ciclo=21 escol=grado.
IF ciclo=22 escol=8+grado.
IF ciclo=23 escol=8+grado.

************************************************************
*Sistema escolar anterior (12 años de escolaridad)
tab grado IF ciclo==31

IF ciclo=31  escol=grado.
IF ciclo=32  escol=8+grado. 

************************************************************
*Sistema escolar actual (12 años de escolaridad)

IF ciclo=41  escol=grado. 
IF ciclo=42  escol=6+grado.

************************************************************
*Eduación de adultos (6 años de escolaridad)

IF ciclo=51  escol=2*grado. 
IF ciclo=52  escol=3+(2*grado). 
IF ciclo=52 & grado>=5 escol=12. 

************************************************************
*Eduación alternativa para jovenes y adultos (12 años de escolaridad)

IF ciclo=61  escol=grado. 
IF ciclo=63  escol=8+grado. 

************************************************************
*Eduación superior

IF ciclo=71  escol=12+grado.
IF ciclo=72 & grado>5  escol=17. 
IF ciclo=72 escol=12+grado.
IF ciclo=72 & grado>5  escol=17.
IF ciclo=73 escol=17+grado.
IF ciclo=73 & grado>5  escol=18. 
IF ciclo=75  escol=17+grado.
IF ciclo=75 & grado>5  escol=22. 
IF ciclo=76  escol=12+grado.
IF ciclo=76 & grado>5  escol=15. 
IF ciclo=77  escol=12+grado.
IF ciclo=77 & grado>5  escol=15. 
IF ciclo=78  escol=12+grado.
IF ciclo=78 & grado>5  escol=16. 
IF ciclo=79  escol=12+grado.
IF ciclo=79 & grado>5  escol=15. 

************************************************************

IF ciclo = 10  escol=0. 
IF ciclo = 12  escol=1. 

CTABLES
/VLABELS VARIABLES=depto escol DISPLAY=LABEL
/TABLE depto BY escol [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=escol ORDER=A KEY=VALUE EMPTY=INCLUDE.

VARIABLE LABELS escol 'Años de escolaridad'.

************************************************************
*Generando la variable nivel de instruccion

COMPUTE instruccion=0.
IF escol=0 instruccion=0. 
IF escol>0 & escol<=5  instruccion=1. 
IF escol=6 instruccion=2. 
IF escol>6 & escol<=11 instruccion=3. 
IF escol=12 instruccion=4. 
IF escol>12 & escol<=17 instruccion=5. 
IF escol=17 instruccion=6. 
IF escol>17 instruccion=7. 

VARIABLE LABELS instruccion 'Nivel de instruccion'.

VALUE LABELS
/instruccion
0 '0.Ninguno'
1 '1.Primaria incompleta'
2 '2.Primaria completa'
3 '3.Secundaria incompleta'
4 '4.Secundaria completa'
5 '5.Universidad incompleta'
6 '6.Universidad completa'
7 '7.Superior'.

CTABLES
/VLABELS VARIABLES=depto instruccion DISPLAY=LABEL
/TABLE depto BY instruccion [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=instruccion ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Empleo
********************************************************************************

COMPUTE ocup=s5_01.
IF s5_07<>1 ocup=1.
IF s5_07<>2 ocup=1.
IF s5_07<>3 ocup=1.
IF s5_07<>6 ocup=1.
IF s5_07<>7 ocup=1.
IF s5_07<>8 ocup=1.

VARIABLE LABELS ocup 'Esta ocupada o no'.

VALUE LABELS
/ocup
1 '1.Ocupada'
2 '2.No ocupada'.

CTABLES
/VLABELS VARIABLES=depto ocup DISPLAY=LABEL
/TABLE depto BY ocup [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ocup ORDER=A KEY=VALUE EMPTY=INCLUDE.


**********************************************************
*Categoria ocupacional

COMPUTE catagre=s5_07.

CTABLES
/VLABELS VARIABLES=depto ocup DISPLAY=LABEL
/TABLE depto BY ocup [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ocup ORDER=A KEY=VALUE EMPTY=INCLUDE.

VARIABLE LABELS catagre 'Categoria ocupacional'.

VALUE LABELS
/catagre
1 '1.Obrero' 
2 '2.Empleado' 
3 '3.Trabajadora por cuenta propia'
6 '4.Cooperativista de producción'
7 '5.Trabajadora familiar o aprendiz'
8 '6.Emplada del hogar'.

IF catagre<>0 ocup=3.
IF ocup=3 ocup=1.

CTABLES
/VLABELS VARIABLES=depto catagre DISPLAY=LABEL
/TABLE depto BY catagre [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=catagre ORDER=A KEY=VALUE EMPTY=INCLUDE.

**********************************************************
*Nivel de ingresos

COMPUTE monto=s5_11_a.
COMPUTE freq=s5_11_b.

COMPUTE ingresos=monto.
IF freq=1 ingresos=monto*365.
IF freq=2 ingresos=monto*52.
IF freq=3 ingresos=monto*26.
IF freq=4 ingresos=monto*12.
IF freq=5 ingresos=monto*6.
IF freq=6 ingresos=monto*4.
IF freq=7 ingresos=monto*2.
IF freq=8 ingresos=monto*1.

VARIABLE LABELS ingresos 'Ingreso laboral anual'.

* Tablas personalizadas.
CTABLES
  /VLABELS VARIABLES=ingresos depto DISPLAY=LABEL
  /TABLE ingresos [S][MEAN, MEDIAN] BY depto [C]
  /SLABELS POSITION=ROW
  /CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE.

*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++		
*ENTONRNO DE VIOLENCIA DE MUJERES SOLTERAS		
*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++		
*Entorno de violencia		
***********************************************		
*La insultaban o humillaban?		
		
COMPUTE vsico1=S2_5_1.

VARIABLE LABELS vsico1 'Las personas con las que vivía la insultaban o humillaban?'.		
		
VALUE LABELS
/vsico1
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'	
5 '5.No recuerda'.		

CTABLES
/VLABELS VARIABLES=depto vsico1 DISPLAY=LABEL
/TABLE depto BY vsico1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*quien1

COMPUTE quien1=S2_5A_1.

VARIABLE LABELS quien1 'Quien la insultaba o humillaba?-vsico1'.	
		
VALUE LABELS
/quien1	
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'	
4 '4. HERMANA'	
5 '5. PADRASTRO'		
6 '6. MADRASTRA'		
7 '7. ABUELO'	
8 '8. ABUELA'		
9 '9. TÍO'		
10 '10. TÍA'		
11 '11. OTRO FAMILIAR'		
12 '12. ADULTO NO FAMILIAR'.	
	
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.

CTABLES
/VLABELS VARIABLES=depto quien1 DISPLAY=LABEL
/TABLE depto BY quien1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico2=S2_5_2.

VARIABLE LABELS vsico2 'Las personas con las que vivía la amenazaban con pegarla o echarla de la casa?'.
	
VALUE LABELS
/vsico2
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico2 DISPLAY=LABEL
/TABLE depto BY vsico2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien2		
		
COMPUTE quien2=S2_5A_2.		

VARIABLE LABELS quien2 'Quien la amenazaba con pegarla o echarla de la casa?-vsico2'.		

VALUE LABELS
/quien2
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien2 DISPLAY=LABEL
/TABLE depto BY quien2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaba con cuchillo o algún arma?		
	
COMPUTE vsico3=S2_5_3.	

VARIABLE LABELS vsico3 'Las personas con las que vivía la amenazaban con cuchillo o algún arma?'	.	

VALUE LABELS
/vsico3
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico3 DISPLAY=LABEL
/TABLE depto BY vsico3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico3 ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
*Quien3		
	
COMPUTE quien3=S2_5A_3		.

VARIABLE LABELS quien3 'Quien la amenazaba con cuchillo o algún arma?-vsico3'		.

VALUE LABELS
/quien3
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.

TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio'	'.	

CTABLES
/VLABELS VARIABLES=depto quien3 DISPLAY=LABEL
/TABLE depto BY quien3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la encerraban o no la dejaban salir?		

COMPUTE vsico7=S2_5_7.		

VARIABLE LABELS vsico7 'Las personas con las que vivía la encerraban o no la dejaban salir?'		.

VALUE LABELS
/vsico7
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico7 DISPLAY=LABEL
/TABLE depto BY vsico7 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico7 ORDER=A KEY=VALUE EMPTY=INCLUDE.
	
*Quien7		

COMPUTE quien7=S2_5A_7		.

VARIABLE LABELS quien7 'Quien la encerraba o no la dejaba salir?-vsico7'		.

VALUE LABELS
/quien7
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.

TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''	.	

CTABLES
/VLABELS VARIABLES=depto quien7 DISPLAY=LABEL
/TABLE depto BY quien7 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien7 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Variable que identifica violencia psicologica	dentro de la familia
********************************************************************************	

COMPUTE vsicologicaf=1.
IF vsico1=4 | vsico1=5 vsicologicaf=0.
IF vsico2=4 | vsico2=5 vsicologicaf=0.
IF	vsico3=4 | vsico3=5 vsicologicaf=0.
IF	vsico7=4 | vsico7=5 vsicologicaf=0.
		
VARIABLE LABELS vsicologicaf 'Sufrio alguna vez violencia psicologica'		.

VALUE LABELS
/vsicologicaf
1 '1.Si'
0 '0.No'.

CTABLES
/VLABELS VARIABLES=depto vsicologicaf DISPLAY=LABEL
/TABLE depto BY vsicologicaf [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsicologicaf ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico4=S2_5_4.

VARIABLE LABELS vsico4 'Las personas con las que vivía la jaloneaban, sacudían, jalaban de su cabello o escupían?'.
	
VALUE LABELS
/vsico4
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico4 DISPLAY=LABEL
/TABLE depto BY vsico4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien4		
		
COMPUTE quien4=S2_5A_4.		

VARIABLE LABELS quien4 'Quien la jaloneaban, sacudían, jalaban de su cabello o escupían?'.		

VALUE LABELS
/quien4
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien4 DISPLAY=LABEL
/TABLE depto BY quien4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico5=S2_5_5.

VARIABLE LABELS vsico5 'Las personas con las que vivía le daban sopapos, puñetazos o la pateaban?'.
	
VALUE LABELS
/vsico5
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico5 DISPLAY=LABEL
/TABLE depto BY vsico5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico5 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien4		
		
COMPUTE quien5=S2_5A_5.		

VARIABLE LABELS quien5 'Quien le daban sopapos, puñetazos o la pateaba?'.		

VALUE LABELS
/quien5
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien5 DISPLAY=LABEL
/TABLE depto BY quien5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien5 ORDER=A KEY=VALUE EMPTY=INCLUDE.


********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico6=S2_5_6.

VARIABLE LABELS vsico6 'Las personas con las que vivía la golpeaban con algún objeto?'.
	
VALUE LABELS
/vsico6
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico6 DISPLAY=LABEL
/TABLE depto BY vsico6 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico6 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien6=S2_5A_6.		

VARIABLE LABELS quien6 'Quien la golpeaban con algún objeto?'.		

VALUE LABELS
/quien6
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien6 DISPLAY=LABEL
/TABLE depto BY quien6 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien6 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Variable que identifica violencia física	dentro de la familia
********************************************************************************	

COMPUTE vfisicaf=1.
IF vsico4=4 | vsico4=5 vfisicaf=0.
IF vsico5=4 | vsico5=5 vfisicaf=0.
IF	vsico6=4 | vsico6=5 vfisicaf=0.

VARIABLE LABELS vfisicaf 'Sufrio alguna vez violencia física, dentro de la familia'		.

VALUE LABELS
/vfisicaf
1 '1.Si'
0 '0.No'.

CTABLES
/VLABELS VARIABLES=depto vfisicaf DISPLAY=LABEL
/TABLE depto BY vfisicaf [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vfisicaf ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico91=S2_9_1.

VARIABLE LABELS vsico91 'Las personas con las que vivía intentaron quitarle o le quitaron sus propiedades?'.
	
VALUE LABELS
/vsico91
1 '1.Si'
2 '2.No'
3 '3.No aplica'.

CTABLES
/VLABELS VARIABLES=depto vsico91 DISPLAY=LABEL
/TABLE depto BY vsico91 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico91 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien4		
		
COMPUTE quien91=S2_9A_1.		

VARIABLE LABELS quien91 'Quienes intentaron quitarle o le quitaron sus propiedades'.		

VALUE LABELS
/quien91
1 '1. NOVIO O ENAMORADO'
2 '2. PAPÁ'
3 '3. MAMÁ'
4 '4. HIJO(A)'
5 '5. HERMANO(A)'
6 '6. NIETO(A)'
7 '7. OTRO FAMILIAR'
8 '8.NO FAMILIARES'
9 '9.No codificados'
10 '10.No codificados'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien91 DISPLAY=LABEL
/TABLE depto BY quien91 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien91 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico92=S2_9_2.

VARIABLE LABELS vsico92 'Las personas con las que vivía intentaron quitarle o le quitaron documentos que comprueben que usted es propietaria de algún bien?'.
	
VALUE LABELS
/vsico92
1 '1.Si'
2 '2.No'
3 '3.No aplica'.

CTABLES
/VLABELS VARIABLES=depto vsico92 DISPLAY=LABEL
/TABLE depto BY vsico92 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico92 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien4		
		
COMPUTE quien92=S2_9A_2.		

VARIABLE LABELS quien92 'Quienes intentaron quitarle o le quitaron documentos que comprueben que usted es propietaria de algún bien?'.		

VALUE LABELS
/quien92
1 '1. NOVIO O ENAMORADO'
2 '2. PAPÁ'
3 '3. MAMÁ'
4 '4. HIJO(A)'
5 '5. HERMANO(A)'
6 '6. NIETO(A)'
7 '7. OTRO FAMILIAR'
8 '8.NO FAMILIARES'
9 '9.No codificados'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien92 DISPLAY=LABEL
/TABLE depto BY quien92 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien92 ORDER=A KEY=VALUE EMPTY=INCLUDE.


********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico93=S2_9_3.

VARIABLE LABELS vsico93 'Las personas con las que vivía la obligaron a poner a nombre de otra persona las cosas o propiedades que usted compró o heredó?'.
	
VALUE LABELS
/vsico93
1 '1.Si'
2 '2.No'
3 '3.No aplica'.

CTABLES
/VLABELS VARIABLES=depto vsico93 DISPLAY=LABEL
/TABLE depto BY vsico93 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico93 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien93=S2_9A_3.		

VARIABLE LABELS quien6 'Quienes la obligaron a poner a nombre de otra persona las cosas o propiedades que usted compró o heredó?'.		

VALUE LABELS
/quien93
1 '1. NOVIO O ENAMORADO'
2 '2. PAPÁ'
3 '3. MAMÁ'
4 '4. HIJO(A)'
5 '5. HERMANO(A)'
6 '6. NIETO(A)'
7 '7. OTRO FAMILIAR'
8 '8.NO FAMILIARES'
9 '9.No codificados'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien93 DISPLAY=LABEL
/TABLE depto BY quien93 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien93 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Variable que identifica violencia física	dentro de la familia
********************************************************************************	

COMPUTE vpatrimonialf=1.
IF vsico91=1 vpatrimonialf=0.
IF vsico92=1 vpatrimonialf=0.
IF	vsico93=1 vpatrimonialf=0.

VARIABLE LABELS vpatrimonialf 'Sufrio alguna vez violencia física, dentro de la familia'		.

VALUE LABELS
/vpatrimonialf
1 '1.Si'
0 '0.No'.

CTABLES
/VLABELS VARIABLES=depto vpatrimonialf DISPLAY=LABEL
/TABLE depto BY vpatrimonialf [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vpatrimonialf ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico61=S6_01_1.

VARIABLE LABELS vsico61 '¿La obligaron a desvestirse o mostrar sus partes íntimas?'.
	
VALUE LABELS
/vsico61
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico61 DISPLAY=LABEL
/TABLE depto BY vsico61 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico61 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien61		
		
COMPUTE quien61=S6_1B_1.		

VARIABLE LABELS quien61 '¿La obligaron a desvestirse o mostrar sus partes íntimas'.		

VALUE LABELS
/quien61
1 '1. PAPÁ'
2 '2. HERMANO'
3 '3. PADRASTRO'
4 '4. ABUELO'
5 '5. TÍO'
6 '6. ESPOSO O PAREJA'
7 '7. ENAMORADO O NOVIO'
8 '8. EX ENAMORADO O EX NOVIO'
9 '9. PRIMO'
10 '10. OTRO FAMILIAR'
11 '11. OTRO NO FAMILIAR'.
12 '12.No codificados'

TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien61 DISPLAY=LABEL
/TABLE depto BY quien61 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien61 ORDER=A KEY=VALUE EMPTY=INCLUDE.


********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico62=S6_01_2.

VARIABLE LABELS vsico62 '¿La obligaron a mirar las partes íntimas de otra persona?'.
	
VALUE LABELS
/vsico62
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico62 DISPLAY=LABEL
/TABLE depto BY vsico62 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico62 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien62=S6_1B_2.		

VARIABLE LABELS quien62 '¿La obligaron a mirar las partes íntimas de otra persona?'.		

VALUE LABELS
/quien62
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien62 DISPLAY=LABEL
/TABLE depto BY quien62 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien62 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico63=S6_01_3.

VARIABLE LABELS vsico63 '¿La manosearon o tocaron su cuerpo sin su consentimiento?'.
	
VALUE LABELS
/vsico63
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico63 DISPLAY=LABEL
/TABLE depto BY vsico63 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico63 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien63=S6_1B_3.		

VARIABLE LABELS quien63 '¿La manosearon o tocaron su cuerpo sin su consentimiento?'.		

VALUE LABELS
/quien63
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien63 DISPLAY=LABEL
/TABLE depto BY quien63 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien63 ORDER=A KEY=VALUE EMPTY=INCLUDE.
********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico64=S6_01_4.

VARIABLE LABELS vsico64 '¿La obligaron a tocar o manosear las partes íntimas de otra persona?'.
	
VALUE LABELS
/vsico64
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico64 DISPLAY=LABEL
/TABLE depto BY vsico64 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico64 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien64=S6_1B_4.		

VARIABLE LABELS quien64 '¿La obligaron a tocar o manosear las partes íntimas de otra persona?'.		

VALUE LABELS
/quien64
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien64 DISPLAY=LABEL
/TABLE depto BY quien64 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien64 ORDER=A KEY=VALUE EMPTY=INCLUDE.
********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico65=S6_01_5.

VARIABLE LABELS vsico65 '¿La obligaron a tener relaciones sexuales de cualquier tipo, mediante engaños, chantajes o amenazas?'.
	
VALUE LABELS
/vsico65
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico65 DISPLAY=LABEL
/TABLE depto BY vsico65 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico65 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien65=S6_1B_5.		

VARIABLE LABELS quien65 '¿La obligaron a tener relaciones sexuales de cualquier tipo, mediante engaños, chantajes o amenazas?'.		

VALUE LABELS
/quien65
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien65 DISPLAY=LABEL
/TABLE depto BY quien65 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien65 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico66=S6_01_6.

VARIABLE LABELS vsico66 '¿La obligaron a tener relaciones sexuales de cualquier tipo, mediante el uso de la fuerza o de una arma?'.
	
VALUE LABELS
/vsico66
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico66 DISPLAY=LABEL
/TABLE depto BY vsico66 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico66 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien66=S6_1B_6.		

VARIABLE LABELS quien66 '¿La obligaron a tener relaciones sexuales de cualquier tipo, mediante el uso de la fuerza o de una arma?'.		

VALUE LABELS
/quien66
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien66 DISPLAY=LABEL
/TABLE depto BY quien66 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien66 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*la amenazaban con pegarla o echarla de la casa?		

COMPUTE vsico67=S6_01_7.

VARIABLE LABELS vsico67 '¿La obligaron a realizar actos sexuales, por dinero o fines económicos?'.
	
VALUE LABELS
/vsico67
1 '1.Muchas veces'
2 '2.Pocas veces'
3 '3.Una vez'
4 '4.No ocurrió'
5 '5.No recuerda'.

CTABLES
/VLABELS VARIABLES=depto vsico67 DISPLAY=LABEL
/TABLE depto BY vsico67 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsico67 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Quien6		
		
COMPUTE quien67=S6_1B_7.		

VARIABLE LABELS quien67 '¿La obligaron a realizar actos sexuales, por dinero o fines económicos?'.		

VALUE LABELS
/quien67
1 '1. PAPÁ'
2 '2. MAMÁ'
3 '3. HERMANO'
4 '4. HERMANA'
5 '5. PADRASTRO'
6 '6. MADRASTRA'
7 '7. ABUELO'
8 '8. ABUELA'
9 '9. TÍO'
10 '10. TÍA'
11 '11. OTRO FAMILIAR'
12 '12. ADULTO NO FAMILIAR'.
 		
TITLE 'no responden esta pregunta las mujeres que responden que 'no recuendan' o que 'no ocurrio''.	

CTABLES
/VLABELS VARIABLES=depto quien67 DISPLAY=LABEL
/TABLE depto BY quien67 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=quien67 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Variable que identifica violencia física	dentro de la familia
********************************************************************************	

COMPUTE vsexualf=0.
IF vsico61=1 | vsico61=2 | vsico61=3 vsexualf=1.
IF vsico62=1 | vsico62=2 | vsico62=3 vsexualf=1.
IF	vsico63=1 | vsico63=2 | vsico63=3 vsexualf=1.
IF	vsico64=1 | vsico64=2 | vsico64=3 vsexualf=1.
IF	vsico65=1 | vsico65=2 | vsico65=3 vsexualf=1.
IF	vsico66=1 | vsico66=2 | vsico66=3 vsexualf=1.
IF	vsico67=1 | vsico67=2 | vsico67=3 vsexualf=1.

VARIABLE LABELS vsexualf 'Sufrio alguna vez violencia física, dentro de la familia'		.

VALUE LABELS
/vsexualf
1 '1.Si'
0 '0.No'.

CTABLES
/VLABELS VARIABLES=depto vsexualf DISPLAY=LABEL
/TABLE depto BY vsexualf [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsexualf ORDER=A KEY=VALUE EMPTY=INCLUDE.


********************************************************************************		
*Tipo de relación		
********************************************************************************		

COMPUTE tiporela=S3_01_SOL.	
VARIABLE LABELS tiporela 'Tipo de relacion'.

VALUE LABELS
/tiporela
1 '1.Mantiene una relación amorosa'
2 '0.No tiene pero tuvo'.

CTABLES
/VLABELS VARIABLES=depto tiporela DISPLAY=LABEL
/TABLE depto BY tiporela [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tiporela ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Estado civil y tipo de realcion
********************************************************************************

CTABLES
/VLABELS VARIABLES=tiporela ecivil DISPLAY=LABEL
/TABLE tiporela BY ecivil [COUNT F40.0]
/CATEGORIES VARIABLES=tiporela ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ecivil ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Tiempo de relación		
********************************************************************************		

COMPUTE tiemprela=S3_02_SOL.
VARIABLE LABELS tiemprela 'Tiempo de la relacion_en años'	.	

CTABLES
/VLABELS VARIABLES=depto tiemprela DISPLAY=LABEL
/TABLE depto BY tiemprela [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tiemprela ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Que edad tenía cuando empezó la relación
********************************************************************************		

COMPUTE edadrela=S3_03_SOL.
VARIABLE LABELS tiemprela 'Edad cuando empezó la relacion'	.	

********************************************************************************				
CTABLES
/VLABELS VARIABLES=depto edadrela DISPLAY=LABEL
/TABLE depto BY edadrela [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=edadrela ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************		
*Situaciones de enojo de la pareja y reacciones		
********************************************************************************		
*Él se enoja o se enojaba con usted porque era...? y 		
*Usted se enoja o se enojaba con usted porque era...?		
*********************************************************		

*S3_08_01	porque es (era) celosa?	

COMPUTE hcelos=0.
IF S3_08_01=1 hcelos=1.

COMPUTE mcelos=0.
IF S3_8A_01=1 mcelos=1.
	
VARIABLE LABELS hcelos 'El se enoja(ba) porque es (era) celosa?'.
VARIABLE LABELS mcelos 'Ud.Se enoja(ba) porque es (era) celoso?'.	

VALUE LABELS
/hcelos 
1 'Si' 
0 'No'.		
VALUE LABELS
/mcelos 
1 'Si' 
0 'No'.		


CTABLES
/VLABELS VARIABLES=depto hcelos DISPLAY=LABEL
/TABLE depto BY hcelos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hcelos ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
/VLABELS VARIABLES=depto mcelos DISPLAY=LABEL
/TABLE depto BY mcelos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mcelos ORDER=A KEY=VALUE EMPTY=INCLUDE.

*********************************************************		
*S3_08_02	porque cree (creía) que usted le engaña (engañaba)?	

COMPUTE hengaño=0.
IF S3_08_02=2 hengaño=1.

COMPUTE mengaño=0.
IF S3_8A_02=2 mengaño=1.

VARIABLE LABELS hengaño 'El se enoja(ba) porque cree (creía) que usted le engaña (engañaba)a?'		.
VARIABLE LABELS mengaño 'Ud.Se enoja(ba) porque cree (creía) que usted la engaña (engañaba)?'		.

VALUE LABELS
/hengaño
1 'Si' 
0 'No'.

VALUE LABELS
/mengaño 
1 'Si' 
0 'No'.		

CTABLES
/VLABELS VARIABLES=depto hengaño DISPLAY=LABEL
/TABLE depto BY hengaño [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hengaño ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
/VLABELS VARIABLES=depto mengaño DISPLAY=LABEL
/TABLE depto BY mengaño [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mengaño ORDER=A KEY=VALUE EMPTY=INCLUDE.

*********************************************************		
*S3_08_03	porque no quiere (quería) tener hijos/ hijas?	

COMPUTE hhijos=0.
IF S3_08_03=3 hhijos=1.

COMPUTE mhijos=0.
IF S3_8A_03=3 mhijos=1.

VARIABLE LABELS hhijos 'El se enoja(ba) porque no quiere (quería) tener hijos/ hijas?'	.
VARIABLE LABELS mhijos 'Ud.Se enoja(ba) porque el no quiere (quería) tener hijos/ hijas?'	.

VALUE LABELS
/hhijos
1 'Si' 
0 'No'.
VALUE LABELS
/mhijos 
1 'Si' 
0 'No'.

CTABLES
/VLABELS VARIABLES=depto hhijos DISPLAY=LABEL
/TABLE depto BY hhijos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hhijos ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
/VLABELS VARIABLES=depto mhijos DISPLAY=LABEL
/TABLE depto BY mhijos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mhijos ORDER=A KEY=VALUE EMPTY=INCLUDE.

*********************************************************		
*S3_08_04	porque consume (consumía) bebidas alcohólicas?	

COMPUTE halcohol=0.
IF S3_08_04=4 halcohol=1.

COMPUTE malcohol=0.
IF S3_8A_04=4 malcohol=1.
	
VARIABLE LABELS halcohol 'El se enoja(ba) porque no quiere (quería) tener hijos/ hijas?'	.	
VARIABLE LABELS malcohol 'Ud.Se enoja(ba) porque el no quiere (quería) tener hijos/ hijas?'.		

VALUE LABELS
/halcohol
1 'Si' 
0 'No'.
VALUE LABELS
/malcohol
1 'Si' 
0 'No'.		

CTABLES
/VLABELS VARIABLES=depto halcohol DISPLAY=LABEL
/TABLE depto BY halcohol [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=halcohol ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto malcohol DISPLAY=LABEL
/TABLE depto BY malcohol [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=malcohol ORDER=A KEY=VALUE EMPTY=INCLUDE.

*********************************************************		
*S3_08_05	porque pasa (pasaba) mucho tiempo en su trabajo?	

COMPUTE htrabajo=0.
IF S3_08_05=5 htrabajo=1.

COMPUTE mtrabajo=0.
IF S3_8A_05=5 mtrabajo=1.

VARIABLE LABELS htrabajo 'El se enoja(ba) porque no quiere (quería) tener hijos/ hijas?'		.
VARIABLE LABELS mtrabajo 'Ud.Se enoja(ba) porque el no quiere (quería) tener hijos/ hijas?'	.	

VALUE LABELS
/htrabajo
1 'Si' 
0 'No'.
VALUE LABELS
/mtrabajo 
1 'Si' 
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto htrabajo DISPLAY=LABEL
/TABLE depto BY htrabajo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=htrabajo ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto mtrabajo DISPLAY=LABEL
/TABLE depto BY mtrabajo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mtrabajo ORDER=A KEY=VALUE EMPTY=INCLUDE.	
*********************************************************		
*S3_08_06	porque pide (pedía) o gasta (gastaba) mucho dinero?	

COMPUTE hdinero=0.
IF S3_08_06=6 hdinero=1.

COMPUTE mdinero=0.
IF S3_8A_06=6 mdinero=1.

VARIABLE LABELS hdinero 'El se enoja(ba) porque pide (pedía) o gasta (gastaba) mucho dinero?'	.	
VARIABLE LABELS mdinero 'Ud.se enoja(ba) porque el pide (pedía) o gasta (gastaba) mucho dinero?'.		

VALUE LABELS
/hdinero 
1 'Si' 
0 'No'.
VALUE LABELS
/mdinero 
1 'Si' 
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto hdinero DISPLAY=LABEL
/TABLE depto BY hdinero [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hdinero ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto mdinero DISPLAY=LABEL
/TABLE depto BY mdinero [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mdinero ORDER=A KEY=VALUE EMPTY=INCLUDE.
*********************************************************		
*S3_08_07	porque visita o la visitan (visitaba o visitaban) familiares o amistades?	

COMPUTE hfamilia=0.
IF S3_08_07=7 hfamilia=1.
	
COMPUTE mfamilia=0.
IF S3_8A_07=7 mfamilia=1.

VARIABLE LABELS hfamilia 'El se enoja(ba) porque visita o la visitan (visitaba o visitaban) familiares o amistades?'	.	
VARIABLE LABELS mfamilia 'Ud.se enoja(ba) porque visita o le visitan (visitaba o visitaban) familiares o amistades?'	.	

VALUE LABELS
/hfamilia 
1 'Si' 
0 'No'.
VALUE LABELS
/mfamilia 
1 'Si' 
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto hfamilia DISPLAY=LABEL
/TABLE depto BY hfamilia [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hfamilia ORDER=A KEY=VALUE EMPTY=INCLUDE.

CTABLES
/VLABELS VARIABLES=depto mfamilia DISPLAY=LABEL
/TABLE depto BY mfamilia [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mfamilia ORDER=A KEY=VALUE EMPTY=INCLUDE.
*********************************************************		
*S3_08_08	porque tiene (tenía) amigos o amigas que no le gustan (gustaban)?	

COMPUTE hamigos=0.
IF S3_08_08=8 hamigos=1.

COMPUTE mamigos=0.
IF S3_8A_08=8 mamigos=1.

VARIABLE LABELS hamigos 'El se enoja(ba) porque tiene (tenía) amigos o amigas que no le gustan (gustaban)?'.		
VARIABLE LABELS mamigos 'Ud.Se enoja(ba) porque el tiene (tenía) amigos o amigas que no le gustan (gustaban)?'.		

VALUE LABELS
/hamigos 
1 'Si' 
0 'No'.
VALUE LABELS
/mamigos 
1 'Si' 
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto hamigos DISPLAY=LABEL
/TABLE depto BY hamigos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hamigos ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto mamigos DISPLAY=LABEL
/TABLE depto BY mamigos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mamigos ORDER=A KEY=VALUE EMPTY=INCLUDE.
*********************************************************		
*S3_08_09	porque viste (vestía) de una forma que a él no le gustan (gustaban)?	

COMPUTE hvestido=0.
IF S3_08_09=9 hvestido=1.
	
COMPUTE mvestido=0.
IF S3_8A_09=9 mvestido=1.

VARIABLE LABELS hvestido 'El se enoja(ba) porque viste (vestía) de una forma que a él no le gustan (gustaban)?'	.	
VARIABLE LABELS mvestido 'Ud.Se enoja(ba) porque viste (vestía) de una forma que a ud no le gustan (gustaban)?'	.	

VALUE LABELS
/hvestido
1 'Si' 
0 'No'.
VALUE LABELS
/mvestido 
1 'Si' 
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto hvestido DISPLAY=LABEL
/TABLE depto BY hvestido [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hvestido ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto mvestido DISPLAY=LABEL
/TABLE depto BY mvestido [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=mvestido ORDER=A KEY=VALUE EMPTY=INCLUDE.
*********************************************************		
*S3_08_10	porque gana (ganaba) más dinero que él?	

COMPUTE hsalario=0.
IF S3_08_10=10 hsalario=1.
	
COMPUTE msalario=0.
IF S3_8A_10=10 msalario=1.

VARIABLE LABELS hsalario 'El se enoja(ba) porque gana (ganaba) más dinero que él?'.		
VARIABLE LABELS msalario 'Ud.Se enoja(ba) porque gana (ganaba) más dinero que ud?'	.	

VALUE LABELS
/hsalario 
1 'Si' 
0 'No'.
VALUE LABELS
/msalario 
1 'Si' 
0 'No'.				
CTABLES
/VLABELS VARIABLES=depto hsalario DISPLAY=LABEL
/TABLE depto BY hsalario [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hsalario ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto msalario DISPLAY=LABEL
/TABLE depto BY msalario [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=msalario ORDER=A KEY=VALUE EMPTY=INCLUDE.
*********************************************************		
*S3_08_11	porque no quiere (quería) tener relaciones sexuales?	

COMPUTE hsexo=0.
IF S3_08_11=11 hsexo=1.

COMPUTE msexo=0.
IF S3_8A_11=11 msexo=1.

VARIABLE LABELS hsexo 'El se enoja(ba) porque no quiere (quería) tener relaciones sexuales?'.		
VARIABLE LABELS msexo 'Ud.Se enoja(ba) porque el no quiere (quería) tener relaciones sexuales?'.	

VALUE LABELS
/hsexo 
1 'Si' 
0 'No'.
VALUE LABELS
/msexo 
1 'Si' 
0 'No'.				
CTABLES
/VLABELS VARIABLES=depto hsexo DISPLAY=LABEL
/TABLE depto BY hsexo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hsexo ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto msexo DISPLAY=LABEL
/TABLE depto BY msexo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=msexo ORDER=A KEY=VALUE EMPTY=INCLUDE.
*********************************************************		
*S3_08_12	por otro motivo?	

COMPUTE hotro=0.
IF S3_08_12=12 hotro=1.

COMPUTE motro=0.
IF S3_8A_12=12 motro=1.

VARIABLE LABELS hotro 'El se enoja(ba) por otro motivo'	.	
VARIABLE LABELS motro 'Ud.Se enoja(ba) por otro motivo'	.	

VALUE LABELS
/hotro
1 'Si' 
0 'No'.
VALUE LABELS
/motro 
1 'Si' 
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto hotro DISPLAY=LABEL
/TABLE depto BY hotro [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hotro ORDER=A KEY=VALUE EMPTY=INCLUDE.
CTABLES
/VLABELS VARIABLES=depto motro DISPLAY=LABEL
/TABLE depto BY motro [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=motro ORDER=A KEY=VALUE EMPTY=INCLUDE.	
********************************************************************************		
********************************************************************************		
********************************************************************************		
********************************************************************************		
*Tipo de violencia y frecuencia		
********************************************************************************		
********************************************************************************		
********************************************************************************		
********************************************************************************		
********************************************************************************		
		
***********************		
*VIOLENCIA SICOLOGICA		
***********************		
		
*1.la ha insultado, se dirigió a usted con palabras groseras o agresivas?		

COMPUTE tipov1=(S3_10_01<=3).

VARIABLE LABELS tipov1 'Tipo1_la ha insultado, se dirigió a usted con palabras groseras o agresivas?'		.

VALUE LABELS
/tipov1
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov1 DISPLAY=LABEL
/TABLE depto BY tipov1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*2.la ha avergonzado, menospreciado o humillado?		

COMPUTE tipov2=(S3_10_02<=3)		.
VARIABLE LABELS tipov2 'Tipo2_la ha avergonzado, menospreciado o humillado?'		.

VALUE LABELS
/tipov2
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov2 DISPLAY=LABEL
/TABLE depto BY tipov2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*3.la ha encerrado, le ha prohibido salir o que la visiten?		

COMPUTE tipov3=(S3_10_03<=3)	.	
VARIABLE LABELS tipov3 'Tipo3_la ha encerrado, le ha prohibido salir o que la visiten?'		.

VALUE LABELS
/tipov3
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov3 DISPLAY=LABEL
/TABLE depto BY tipov3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*4.la ha amenazado con lastimarla?		

COMPUTE tipov4=(S3_10_04<=3)		.
VARIABLE LABELS tipov4 'Tipo4_la ha amenazado con lastimarla?'		.

VALUE LABELS
/tipov4
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov4 DISPLAY=LABEL
/TABLE depto BY tipov4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*5.la ha amenazado con matarla?		

COMPUTE tipov5=(S3_10_05<=3)		.
VARIABLE LABELS tipov5 'Tipo5_la ha amenazado con matarla?'		.

VALUE LABELS
/tipov5
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov5 DISPLAY=LABEL
/TABLE depto BY tipov5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov5 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*6.la ha amenazado con quitarle a sus hijos/as?		

COMPUTE tipov6=(S3_10_06<=3)	.	
VARIABLE LABELS tipov6 'Tipo6_la ha amenazado con quitarle a sus hijos/as?'		.

VALUE LABELS
/tipov6
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov6 DISPLAY=LABEL
/TABLE depto BY tipov6 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov6 ORDER=A KEY=VALUE EMPTY=INCLUDE.	

************************************		
*Definición de violencia psicologica		
************************************		
		
COMPUTE vpsicologica=0.
IF S3_10_01<=3	 vpsicologica=1. 
IF S3_10_02<=3	 vpsicologica=1. 
IF S3_10_03<=3	 vpsicologica=1.
IF S3_10_04<=3	 vpsicologica=1 .
IF S3_10_05<=3		vpsicologica=1 .
IF S3_10_06<=3	 vpsicologica=1 .

TITLE 'debemos preguntar que indica '.' en las variables'.	

VALUE LABELS
/vpsicologica 
1 'Sufre violencia psicologica' 
0 'No sufre violencia psicologica'.

VARIABLE LABELS vpsicologica 'Violencia Psicológica'	.

CTABLES
/VLABELS VARIABLES=depto vpsicologica DISPLAY=LABEL
/TABLE depto BY vpsicologica [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vpsicologica ORDER=A KEY=VALUE EMPTY=INCLUDE.

***********************		
*VIOLENCIA PATRIMONIAL		
***********************		
		
*7.aunque tenga dinero no cumple con los gastos del hogar?		

COMPUTE tipov7=(S3_10_07<=3)	.	
VARIABLE LABELS tipov7 'Tipo7_aunque tenga dinero no cumple con los gastos del hogar?'	.	

VALUE LABELS
/tipov7
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov7 DISPLAY=LABEL
/TABLE depto BY tipov7 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov7 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*8.le ha prohibido adquirir bienes o propiedades a su nombre?		

COMPUTE tipov8=(S3_10_08<=3)		.
VARIABLE LABELS tipov8 'Tipo8_le ha prohibido adquirir bienes o propiedades a su nombre?'		.

VALUE LABELS
/tipov8
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov8 DISPLAY=LABEL
/TABLE depto BY tipov8 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov8 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*9.ha destruido, tirado o escondido sus cosas?		

COMPUTE tipov9=(S3_10_09<=3)		.
VARIABLE LABELS tipov9 'Tipo9_ha destruido, tirado o escondido sus cosaso?'		.

VALUE LABELS
/tipov9
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov9 DISPLAY=LABEL
/TABLE depto BY tipov9 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov9 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*10.le ha quitado o se ha adueñado de su dinero?		

COMPUTE tipov10=(S3_10_10<=3)		.
VARIABLE LABELS tipov10 'Tipo10_le ha quitado o se ha adueñado de su dinero?'		.

VALUE LABELS
/tipov10
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov10 DISPLAY=LABEL
/TABLE depto BY tipov10 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov10 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*11.le ha quitado o se ha adueñado de sus bienes (cosas, terrenos, etc.)?		

COMPUTE tipov11=(S3_10_11<=3).		
VARIABLE LABELS tipov11 'Tipo11_le ha quitado o se ha adueñado de sus bienes (cosas, terrenos, etc.)?'		.

VALUE LABELS
/tipov11
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov11 DISPLAY=LABEL
/TABLE depto BY tipov11 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov11 ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
************************************		
*Definición de violencia patrimonial		
************************************		

COMPUTE vpatrimonial=0	.	
IF S3_10_07<=3	 vpatrimonial=1 .
IF S3_10_08<=3	 vpatrimonial=1 .
IF S3_10_09<=3	 vpatrimonial=1 .
IF S3_10_10<=3	 vpatrimonial=1 .
IF S3_10_11<=3	 vpatrimonial=1 .

VALUE LABELS
/vpatrimonial
1 'Sufre violencia patrimonial' 
0 'No sufre violencia patrimonial'	.

VARIABLE LABELS vpatrimonial 'Violencia patrimonial'	.	

CTABLES
/VLABELS VARIABLES=depto vpatrimonial DISPLAY=LABEL
/TABLE depto BY vpatrimonial [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vpatrimonial ORDER=A KEY=VALUE EMPTY=INCLUDE.

***********************		
*VIOLENCIA FISICA		
***********************		
		
*12.la ha empujado o le ha jalado el cabello?		

COMPUTE tipov12=(S3_10_12<=3)		.
VARIABLE LABELS tipov12 'Tipo12_la ha empujado o le ha jalado el cabello?'		.

VALUE LABELS
/tipov12
1 'Si'
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto tipov12 DISPLAY=LABEL
/TABLE depto BY tipov12 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov12 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*13.la ha abofeteado, golpeado con las manos o puños?		

COMPUTE tipov13=(S3_10_13<=3)		.
VARIABLE LABELS tipov13 'Tipo13_la ha abofeteado, golpeado con las manos o puños?'		.

VALUE LABELS
/tipov13
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov13 DISPLAY=LABEL
/TABLE depto BY tipov13 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov13 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*14.la ha golpeado con algún objeto?		

COMPUTE tipov14=(S3_10_14<=3)	.	
VARIABLE LABELS tipov14 'Tipo14_la ha golpeado con algún objeto?'	.	

VALUE LABELS
/tipov14
1 'Si'
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto tipov14 DISPLAY=LABEL
/TABLE depto BY tipov14 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov14 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*15.la ha pateado?		

COMPUTE tipov15=(S3_10_15<=3)	.	
VARIABLE LABELS tipov15 'Tipo15_la ha pateado?'		.

VALUE LABELS
/tipov15
1 'Si'
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto tipov15 DISPLAY=LABEL
/TABLE depto BY tipov15 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov15 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*16.la ha tratado de ahorcar o asfixiar?		

COMPUTE tipov16=(S3_10_16<=3)		.
VARIABLE LABELS tipov16 'Tipo16_la ha tratado de ahorcar o asfixiaro?'		.

VALUE LABELS
/tipov16
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov16 DISPLAY=LABEL
/TABLE depto BY tipov16 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov16 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*17.la ha amenazado con armas (cuchillo, navaja o pistola)?		

COMPUTE tipov17=(S3_10_17<=3)		.
VARIABLE LABELS tipov17 'Tipo17_la ha amenazado con armas (cuchillo, navaja o pistola)?'	.	

VALUE LABELS
/tipov17
1 'Si'
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto tipov17 DISPLAY=LABEL
/TABLE depto BY tipov17 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov17 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*18.la ha agredido con cuchillo, navaja, pistola o cualquier otra arma?		

COMPUTE tipov18=(S3_10_18<=3)	.	
VARIABLE LABELS tipov18 'Tipo18_la ha agredido con cuchillo, navaja, pistola o cualquier otra arma?'	.	

VALUE LABELS
/tipov18
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov18 DISPLAY=LABEL
/TABLE depto BY tipov18 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov18 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*19.Le ha disparado con un arma?		

COMPUTE tipov19=(S3_10_19<=3)		.
VARIABLE LABELS tipov19 'Tipo19_Le ha disparado con un arma?'	.	

VALUE LABELS
/tipov19
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov19 DISPLAY=LABEL
/TABLE depto BY tipov19 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov19 ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
************************************		
*Definición de violencia fisica		
************************************		
		
COMPUTE vfisica=0.
if S3_10_12<=3	 vfisica=1 .
if S3_10_13<=3  vfisica=1 .
if S3_10_14<=3	 vfisica=1 .
if S3_10_15<=3	 vfisica=1 .
if S3_10_16<=3	 vfisica=1 .
if S3_10_17<=3	 vfisica=1 .
if S3_10_18<=3	 vfisica=1 .
if S3_10_19<=3	 vfisica=1 .

VALUE LABELS
/vfisica
1 'Sufre violencia fisica' 
0 'No sufre violencia fisica'		.

VARIABLE LABELS vfisica 'Violencia física'		.

CTABLES
/VLABELS VARIABLES=depto vfisica DISPLAY=LABEL
/TABLE depto BY vfisica [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vfisica ORDER=A KEY=VALUE EMPTY=INCLUDE.


***********************		
*VIOLENCIA SEXUAL		
***********************		
		
*20.ha usado la fuerza física para obligarla a tener relaciones sexuales?		

COMPUTE tipov20=(S3_10_20<=3)		.
VARIABLE LABELS tipov20 'Tipo20_la ha avergonzado, menospreciado o humillado?'	.	

VALUE LABELS
/tipov20
1 'Si'
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto tipov20 DISPLAY=LABEL
/TABLE depto BY tipov20 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov20 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*21.le ha exigido tener relaciones sexuales aunque usted no quería?		

COMPUTE tipov21=(S3_10_21<=3)		.
VARIABLE LABELS tipov21 'Tipo21_la ha avergonzado, menospreciado o humillado?'		.

VALUE LABELS
/tipov21
1 'Si'
0 'No'.		
CTABLES
/VLABELS VARIABLES=depto tipov21 DISPLAY=LABEL
/TABLE depto BY tipov21 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov21 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*22.cuando tienen relaciones sexuales la ha obligado a hacer cosas que a usted no le gustan?		

COMPUTE tipov22=(S3_10_22<=3)		.
VARIABLE LABELS tipov22 'Tipo22_la ha avergonzado, menospreciado o humillado?'		.

VALUE LABELS
/tipov22
1 'Si'
0 'No'.	
CTABLES
/VLABELS VARIABLES=depto tipov22 DISPLAY=LABEL
/TABLE depto BY tipov22 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov22 ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
************************************		
*Definición de violencia sexual		
************************************		
		
COMPUTE vsexual=0	.	
if S3_10_20<=3	 vsexual=1 .
if S3_10_21<=3	 vsexual=1 .
if S3_10_22<=3	 vsexual=1 .

VALUE LABELS
/vsexual
1 'Sufre violencia sexual' 
0 'No sufre violencia sexual'	.
	
VARIABLE LABELS vsexual 'Violencia sexual'		.

CTABLES
/VLABELS VARIABLES=depto vsexual DISPLAY=LABEL
/TABLE depto BY vsexual [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=vsexual ORDER=A KEY=VALUE EMPTY=INCLUDE.
	
********************************************************************************		
********************************************************************************		
*Violencia		
********************************************************************************		
********************************************************************************		

COMPUTE violencia=0.
if vpsicologica=1  violencia=1 .
if vpatrimonial=1  violencia=1 .
if vfisica=1	 violencia=1 .
if vsexual=1	 violencia=1 .

VALUE LABELS
/violencia
1 'Sufre violencia' 
0 'No sufre violencia'	.
	
VARIABLE LABELS violencia 'Violencia contra la mujer'		.

CTABLES
/VLABELS VARIABLES=depto violencia DISPLAY=LABEL
/TABLE depto BY violencia [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=violencia ORDER=A KEY=VALUE EMPTY=INCLUDE.


********************************************************************************		
********************************************************************************		
********************************************************************************		
*Percepción de la violencia		
********************************************************************************		
********************************************************************************		
********************************************************************************		

COMPUTE tipov1g=S3_10A_01	.	
COMPUTE tipov2g=S3_10A_02	.	
COMPUTE tipov3g=S3_10A_03	.	
COMPUTE tipov4g=S3_10A_04		.
COMPUTE tipov5g=S3_10A_05	.	
COMPUTE tipov6g=S3_10A_06	.	

COMPUTE tipov7g=S3_10A_07	.	
COMPUTE tipov8g=S3_10A_08	.	
COMPUTE tipov9g=S3_10A_09	.
COMPUTE tipov10g=S3_10A_10	.	
COMPUTE tipov11g=S3_10A_11	.	
COMPUTE tipov12g=S3_10A_12		.
COMPUTE tipov13g=S3_10A_13	.	
COMPUTE tipov14g=S3_10A_14	.	
COMPUTE tipov15g=S3_10A_15	.	
COMPUTE tipov16g=S3_10A_16	.	

COMPUTE tipov17g=S3_10A_17	.	
COMPUTE tipov18g=S3_10A_18	.	
COMPUTE tipov19g=S3_10A_19	.	
COMPUTE tipov20g=S3_10A_20	.	
COMPUTE tipov21g=S3_10A_21		.
COMPUTE tipov22g=S3_10A_22	.	
	
VALUE LABELS
/tipov1g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov2g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov3g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.


VALUE LABELS
/tipov4g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov5g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov6g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov7g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.


VALUE LABELS
/tipov8g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov9g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov10g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov11g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov12g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov13g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov14g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov15g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov16g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov17g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov18g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov19g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov20g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov21g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VALUE LABELS
/tipov22g
1 '1.Grave' 
2 '2.Poco grave' 
3 '3.Sin importancia'.

VARIABLE LABELS tipov1g 'Percepcion violencia tipo 1'.	
VARIABLE LABELS tipov2g 'Percepcion violencia tipo 2'	.	
VARIABLE LABELS tipov3g 'Percepcion violencia tipo 3'	.	
VARIABLE LABELS tipov4g 'Percepcion violencia tipo 4'		.
VARIABLE LABELS tipov5g 'Percepcion violencia tipo 5'	.	
VARIABLE LABELS tipov6g 'Percepcion violencia tipo 6'	.	
VARIABLE LABELS tipov7g 'Percepcion violencia tipo 7'.		
VARIABLE LABELS tipov8g 'Percepcion violencia tipo 8'.	
VARIABLE LABELS tipov9g 'Percepcion violencia tipo 9'	.	
VARIABLE LABELS tipov10g 'Percepcion violencia tipo 10'	.	
VARIABLE LABELS tipov11g 'Percepcion violencia tipo 11'	.	
VARIABLE LABELS tipov12g 'Percepcion violencia tipo 12'	.	
VARIABLE LABELS tipov13g 'Percepcion violencia tipo 13'.		
VARIABLE LABELS tipov14g 'Percepcion violencia tipo 14'	.	
VARIABLE LABELS tipov15g 'Percepcion violencia tipo 15'	.	
VARIABLE LABELS tipov16g 'Percepcion violencia tipo 16'	.	
VARIABLE LABELS tipov17g 'Percepcion violencia tipo 17'	.	
VARIABLE LABELS tipov18g 'Percepcion violencia tipo 18'	.	
VARIABLE LABELS tipov19g 'Percepcion violencia tipo 19'	.	
VARIABLE LABELS tipov20g 'Percepcion violencia tipo 20'	.	
VARIABLE LABELS tipov21g 'Percepcion violencia tipo 21'	.	
VARIABLE LABELS tipov22g 'Percepcion violencia tipo 22'	.	

CTABLES
/VLABELS VARIABLES=depto tipov22 DISPLAY=LABEL
/TABLE depto BY tipov22 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tipov22 ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
********************************************************************************		
*A quien contó		
********************************************************************************		

COMPUTE aquienconto=S3_11.		
VARIABLE LABELS aquienconto 'A quien conto cualquiera de estos hechos'.		

VALUE LABELS
/aquienconto
1 '1. Papá'		
2 '2. Mamá'		
3 '3. Hermano'		
4 '4. Hermana'		
5 '5. Amigo'		
6 '6. Amiga'		
7 '7. Otro'		
8 '8. contó a nadie'		
9 '9. Otro familiar'.	
CTABLES
/VLABELS VARIABLES=depto aquienconto DISPLAY=LABEL
/TABLE depto BY aquienconto [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=aquienconto ORDER=A KEY=VALUE EMPTY=INCLUDE.
	
********************************************************************************		
*Porque no contó		
********************************************************************************		
*S3_12_1	por vergüenza'		
			
COMPUTE cverguenza=0. 
IF S3_12_1=1 cverguenza=1.
			
VARIABLE LABELS cverguenza 'No contó por vergüenza'	.		
			
VALUE LABELS			
/cverguenza			
1 'Si'			
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto cverguenza DISPLAY=LABEL
/TABLE depto BY cverguenza [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=cverguenza ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************			
*S3_12_2	porque no quería que se sepa		
			
COMPUTE cnoqueria=0. 
IF S3_12_2=2 cnoqueria=1. 		
			
VARIABLE LABELS cnoqueria 'No contó porque no quería que se sepa'	.		
			
VALUE LABELS			
/cnoqueria			
1 'Si'			
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto cnoqueria DISPLAY=LABEL
/TABLE depto BY cnoqueria [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=cnoqueria ORDER=A KEY=VALUE EMPTY=INCLUDE.
	
****************************************			
*S3_12_3	por sus hijos e hijas		
			
COMPUTE chijos=0. 
IF S3_12_3=3 chijos=1.	
			
VARIABLE LABELS chijos 'No contó por sus hijos e hijas'	.		
			
VALUE LABELS			
/chijos			
1 'Si'	
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto chijos DISPLAY=LABEL
/TABLE depto BY chijos [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=chijos ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
****************************************			
*S3_12_4	por miedo		
			
COMPUTE cmiedo=0. 
IF S3_12_4=4 cmiedo=1.	
			
VARIABLE LABELS cmiedo 'No contó por miedo'	.		
			
VALUE LABELS			
/cmiedo			
1 'Si'			
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto cmiedo DISPLAY=LABEL
/TABLE depto BY cmiedo [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=cmiedo ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************			
*S3_12_5	porque el dijo que iba a cambiar		
			
COMPUTE ccambiar=0. 
IF S3_12_5=5 ccambiar=1.			
			
VARIABLE LABELS ccambiar 'porque el dijo que iba a cambiar'	.		
			
VALUE LABELS			
/ccambiar			
1 'Si'		
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto ccambiar DISPLAY=LABEL
/TABLE depto BY ccambiar [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ccambiar ORDER=A KEY=VALUE EMPTY=INCLUDE.
		
****************************************			
*S3_12_6	porque su pareja la amenazó		
			
COMPUTE camenaza=0. 
IF S3_12_6=6 camenaza=1.		
			
VARIABLE LABELS camenaza 'porque su pareja la amenazó'	.		
			
VALUE LABELS			
/camenaza			
1 'Si'
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto camenaza DISPLAY=LABEL
/TABLE depto BY camenaza [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=camenaza ORDER=A KEY=VALUE EMPTY=INCLUDE.
			
****************************************			
*S3_12_7	porque su pareja la convenció de no hacerlo		
			
COMPUTE cconvencio=0. 
IF S3_12_7=7 cconvencio=1.
			
VARIABLE LABELS cconvencio 'porque su pareja la convenció de no hacerlo'.			
			
VALUE LABELS			
/cconvencio			
1 'Si'			
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto cconvencio DISPLAY=LABEL
/TABLE depto BY cconvencio [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=cconvencio ORDER=A KEY=VALUE EMPTY=INCLUDE.
			
****************************************			
*S3_12_8	porque se trató de un hecho sin importancia		
			
COMPUTE cnoimporta=0. 
IF S3_12_8=8 cnoimporta=1.		
			
VARIABLE LABELS cnoimporta 'porque se trató de un hecho sin importancia'.		
			
VALUE LABELS			
/cnoimporta			
1 'Si'		
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto cnoimporta DISPLAY=LABEL
/TABLE depto BY cnoimporta [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=cnoimporta ORDER=A KEY=VALUE EMPTY=INCLUDE.
			
****************************************			
*S3_12_9	por otro motivo		
			
COMPUTE cotro=0. 
IF S3_12_9=9 cotro=1. 		
			
VARIABLE LABELS cotro 'por otro motivo'.			
			
VALUE LABELS			
/cotro			
1 'Si'	
0 'No'.			
CTABLES
/VLABELS VARIABLES=depto cotro DISPLAY=LABEL
/TABLE depto BY cotro [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=cotro ORDER=A KEY=VALUE EMPTY=INCLUDE.
			
********************************************************************************
*Institución a la que acudió y nivel de atención
********************************************************************************
*S3_13_1 la Policía o FELCV?

COMPUTE noacudio1=0.
IF S3_13_1<=2 noacudio1=1.

VARIABLE LABELS noacudio1 'Acudio a la Policía o FELCV?'.

VALUE LABELS
/noacudio1
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto noacudio1 DISPLAY=LABEL
/TABLE depto BY noacudio1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=noacudio1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************
*S3_13_2 el Servicio Legal Integral Municipal (SLIM)?

COMPUTE noacudio2=0.
IF S3_13_2<=2 noacudio2=1.

VARIABLE LABELS noacudio2 'Acudio al Servicio Legal Integral Municipal (SLIM)?'.

VALUE LABELS
/noacudio2
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto noacudio2 DISPLAY=LABEL
/TABLE depto BY noacudio2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=noacudio2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************
*S3_13_3 la Defensoría de la Niñez y Adolescencia?

COMPUTE noacudio3=0.
IF S3_13_3<=2 noacudio3=1.

VARIABLE LABELS noacudio3 'Acudio a la Defensoría de la Niñez y Adolescencia?'.

VALUE LABELS
/noacudio3
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto noacudio3 DISPLAY=LABEL
/TABLE depto BY noacudio3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=noacudio3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************
*S3_13_4 la Autoridad Indígena Originaria Campesina?

COMPUTE noacudio4=0.
IF S3_13_4<=2 noacudio4=1.

VARIABLE LABELS noacudio4 'Acudio a la Autoridad Indígena Originaria Campesina?'.

VALUE LABELS
/noacudio4
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto noacudio4 DISPLAY=LABEL
/TABLE depto BY noacudio4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=noacudio4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************
*S3_13_5 Otra institución

COMPUTE noacudio5=0.
IF S3_13_5<=2 noacudio5=1.

VARIABLE LABELS noacudio5 'Acudio a otra institución?'.

VALUE LABELS
/noacudio5
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto noacudio5 DISPLAY=LABEL
/TABLE depto BY noacudio5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=noacudio5 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
********************************************************************************
*Nivel de Satisfacción
********************************************************************************
********************************************************************************

COMPUTE noacudio_satis=S3_13B_1.

VARIABLE LABELS noacudio_satis 'Nivel de Satisfacción'.

VALUE LABELS
/noacudio_satis
1 '1.Muy satisfecha' 
2 '2.Satisfecha' 
3 '3.Instisfecha'.
CTABLES
/VLABELS VARIABLES=depto noacudio_satis DISPLAY=LABEL
/TABLE depto BY noacudio_satis [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=noacudio_satis ORDER=A KEY=VALUE EMPTY=INCLUDE.

****************************************************************************
*Le aconsejaron conciliar
********************************************************************************

COMPUTE conciliar=S3_14.

VALUE LABELS
/conciliar
1 'Si'
0 'No'.

VARIABLE LABELS conciliar 'Le aconsejaron conciliar'.
CTABLES
/VLABELS VARIABLES=depto conciliar DISPLAY=LABEL
/TABLE depto BY conciliar [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=conciliar ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Presentó denuncia
********************************************************************************

COMPUTE denuncia=S3_15.

VALUE LABELS
/denuncia
1 'Si'
0 'No'.

VARIABLE LABELS denuncia 'Presentó denuncia'.
CTABLES
/VLABELS VARIABLES=depto denuncia DISPLAY=LABEL
/TABLE depto BY denuncia [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=denuncia ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Hubo sanción
********************************************************************************

COMPUTE hsancion=S3_16.

VALUE LABELS
/hsancion
1 '1.Si' 
2 '2.No' 
3 '3.La denuncia esta en proceso'.

VARIABLE LABELS hsancion 'Hubo sanción'.
CTABLES
/VLABELS VARIABLES=depto hsancion DISPLAY=LABEL
/TABLE depto BY hsancion [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=hsancion ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*No presentó la denuncia porque
********************************************************************************
*1. estaba convencida que él no cambiaría?

COMPUTE ndenun1=0.
IF S3_17_1=1 ndenun1=1.

VARIABLE LABELS ndenun1 'No denuncio porque estaba convencida que él no cambiaría?'.

VALUE LABELS
/ndenun1
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun1 DISPLAY=LABEL
/TABLE depto BY ndenun1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*2. lo que hizo estaba mal?.

COMPUTE ndenun2=0.
IF S3_17_2=2 ndenun2=1.

VARIABLE LABELS ndenun2 'No denuncio porque lo que hizo estaba mal?'.

VALUE LABELS
/ndenun2
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun2 DISPLAY=LABEL
/TABLE depto BY ndenun2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*3. tenía temor que la próxima vez la mate?

COMPUTE ndenun3=0.
IF S3_17_3=3 ndenun3=1.

VARIABLE LABELS ndenun3 'No denuncio porque lo que hizo estaba mal?'.

VALUE LABELS
/ndenun3
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun3 DISPLAY=LABEL
/TABLE depto BY ndenun3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*4. ya no soportaba que la maltrate?

COMPUTE ndenun4=0.
IF S3_17_4=4 ndenun4=1.

VARIABLE LABELS ndenun4 'No denuncio porque ya no soportaba que la maltrate?'.

VALUE LABELS
/ndenun4
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun4 DISPLAY=LABEL
/TABLE depto BY ndenun4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*5. encontró apoyo de familiares/instituciones?

COMPUTE ndenun5=0.
IF S3_17_5=5 ndenun5=1.

VARIABLE LABELS ndenun5 'No denuncio porque encontró apoyo de familiares/instituciones?'.

VALUE LABELS
/ndenun5
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun5 DISPLAY=LABEL
/TABLE depto BY ndenun5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun5 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*6. recibió información que la ayudó a tomar la decisión?

COMPUTE ndenun6=0.
IF S3_17_6=6 ndenun6=1.

VARIABLE LABELS ndenun6 'No denuncio porque recibió información que la ayudó a tomar la decisión?'.

VALUE LABELS
/ndenun6
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun6 DISPLAY=LABEL
/TABLE depto BY ndenun6 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun6 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*7. Otro

COMPUTE ndenun7=0.
IF S3_17_7=7 ndenun7=1.

VARIABLE LABELS ndenun7 'No denuncio por otro motivo'.

VALUE LABELS
/ndenun7
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto ndenun7 DISPLAY=LABEL
/TABLE depto BY ndenun7 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenun7 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
*Trato del novio
********************************************************************************

COMPUTE tratonovio=S3_18.

VALUE LABELS
/tratonovio
1 '1. mejoró?' 
2 '2. siguió igual?' 
3 '3. empeoró'.

VARIABLE LABELS tratonovio 'Trato del novio'.
CTABLES
/VLABELS VARIABLES=depto tratonovio DISPLAY=LABEL
/TABLE depto BY tratonovio [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=tratonovio ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
********************************************************************************
********************************************************************************
*Motivo de no presentar denuncia
********************************************************************************
********************************************************************************
********************************************************************************
*1. POR VERGÜENZA

COMPUTE ndenunm1=3.
IF S3_19_01=1 ndenunm1=1.
IF S3_19_01=0 ndenunm1=2.
VARIABLE LABELS ndenunm1 'El motivo de no denunciar POR VERGÜENZA?'.

VALUE LABELS
/ndenunm1
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm1 DISPLAY=LABEL
/TABLE depto BY ndenunm1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*2. NO QUERÍA QUE SE SEPA

COMPUTE ndenunm2=3.
IF S3_19_02=2 ndenunm2=1.
IF S3_19_02=0 ndenunm2=2.
VARIABLE LABELS ndenunm2 'El motivo de no denunciar NO QUERÍA QUE SE SEPA?'.

VALUE LABELS
/ndenunm2
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm2 DISPLAY=LABEL
/TABLE depto BY ndenunm2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*3. POR SUS HIJOS E HIJAS

COMPUTE ndenunm3=3.
IF S3_19_03=3 ndenunm3=1. 
IF S3_19_03=0 ndenunm3=2.
VARIABLE LABELS ndenunm3 'El motivo de no denunciar POR SUS HIJOS E HIJAS?'.

VALUE LABELS
/ndenunm3
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm3 DISPLAY=LABEL
/TABLE depto BY ndenunm3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*4. POR MIEDO

COMPUTE ndenunm4= 3.
IF S3_19_04=4 ndenunm4=1.
IF S3_19_04=0 ndenunm4=2.
VARIABLE LABELS ndenunm4 'El motivo de no denunciar POR MIEDO?'.

VALUE LABELS
/ndenunm4
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm4 DISPLAY=LABEL
/TABLE depto BY ndenunm4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*5. ÉL DIJO QUE IBA A CAMBIAR

COMPUTE ndenunm5=3.
IF S3_19_05=5 ndenunm5=1.
IF S3_19_05=0 ndenunm5=2.
VARIABLE LABELS ndenunm5 'El motivo de no denunciar ÉL DIJO QUE IBA A CAMBIAR?'.

VALUE LABELS
/ndenunm5
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm5 DISPLAY=LABEL
/TABLE depto BY ndenunm5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm5 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*6. PORQUE SU PAREJA LA AMENAZÓ

COMPUTE ndenunm6=3.
IF S3_19_06=6 ndenunm6=1.
IF S3_19_06=0 ndenunm6=2.
VARIABLE LABELS ndenunm6 'El motivo de no denunciar PORQUE SU PAREJA LA AMENAZÓ?'.

VALUE LABELS
/ndenunm6
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm6 DISPLAY=LABEL
/TABLE depto BY ndenunm6 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm6 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*7. PORQUE SU FAMILIA LA CONVENCIÓ DE NO HACERLO

COMPUTE ndenunm7=3.
IF S3_19_07=7 ndenunm7=1. 
IF S3_19_07=0 ndenunm7=2.
VARIABLE LABELS ndenunm7 'El motivo de no denunciar PORQUE SU FAMILIA LA CONVENCIÓ DE NO HACERLO?'.

VALUE LABELS
/ndenunm7
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm7 DISPLAY=LABEL
/TABLE depto BY ndenunm7 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm7 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*8. PORQUE SE TRATÓ DE UN HECHO SIN IMPORTANCIA

COMPUTE ndenunm8=3.
IF S3_19_08=8 ndenunm8=1. 
IF S3_19_08=0 ndenunm8=2.
VARIABLE LABELS ndenunm8 'El motivo de no denunciar PORQUE SE TRATÓ DE UN HECHO SIN IMPORTANCIA?'.

VALUE LABELS
/ndenunm8
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm8 DISPLAY=LABEL
/TABLE depto BY ndenunm8 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm8 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*9. NO SABÍA QUE PODÍA DENUNCIAR

COMPUTE ndenunm9=3.
IF S3_19_09=9 ndenunm9=1.
IF S3_19_09=0 ndenunm9=2.
VARIABLE LABELS ndenunm9 'El motivo de no denunciar NO SABÍA QUE PODÍA DENUNCIAR?'.

VALUE LABELS
/ndenunm9
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm9 DISPLAY=LABEL
/TABLE depto BY ndenunm9 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm9 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*10. NO CREE EN LA JUSTICIA

COMPUTE ndenunm10=3.
IF S3_19_10=10 ndenunm10=1. 
IF S3_19_10=0 ndenunm10=2.
VARIABLE LABELS ndenunm10 'El motivo de no denunciar NO CREE EN LA JUSTICIA?'.

VALUE LABELS
/ndenunm10
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm10 DISPLAY=LABEL
/TABLE depto BY ndenunm10 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm10 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*11. OTRA

COMPUTE ndenunm11=3.
IF S3_19_11=11 ndenunm11=1.
IF S3_19_11=0 ndenunm11=2.
VARIABLE LABELS ndenunm11 'El motivo de no denunciar OTRA razon?'.

VALUE LABELS
/ndenunm11
1 'Si'
2 'No'
3 'No aplica'.

CTABLES
/VLABELS VARIABLES=depto ndenunm11 DISPLAY=LABEL
/TABLE depto BY ndenunm11 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=ndenunm11 ORDER=A KEY=VALUE EMPTY=INCLUDE.

********************************************************************************
********************************************************************************
********************************************************************************
*Porque no recurrió a una institución
********************************************************************************
********************************************************************************
********************************************************************************
*1. POR VERGÜENZA

COMPUTE oinst1=0.
IF S3_20_01=1 oinst1=1.
VARIABLE LABELS oinst1 'El motivo de no denunciar POR VERGÜENZA?'.

VALUE LABELS
/oinst1
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst1 DISPLAY=LABEL
/TABLE depto BY oinst1 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst1 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*2. NO QUERÍA QUE SE SEPA

COMPUTE oinst2=0.
IF S3_20_02=2 oinst2=1.
VARIABLE LABELS oinst2 'El motivo de no denunciar NO QUERÍA QUE SE SEPA?'.

VALUE LABELS
/oinst2
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst2 DISPLAY=LABEL
/TABLE depto BY oinst2 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst2 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*3. POR SUS HIJOS E HIJAS

COMPUTE oinst3=0.
IF S3_20_03=3 oinst3=1.
VARIABLE LABELS oinst3 'El motivo de no denunciar POR SUS HIJOS E HIJAS?'.

VALUE LABELS
/oinst3
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst3 DISPLAY=LABEL
/TABLE depto BY oinst3 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst3 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*4. POR MIEDO

COMPUTE oinst4=0.
IF S3_20_04=4 oinst4=1.
VARIABLE LABELS oinst4 'El motivo de no denunciar POR MIEDO?'.

VALUE LABELS
/oinst4
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst4 DISPLAY=LABEL
/TABLE depto BY oinst4 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst4 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*5. ÉL DIJO QUE IBA A CAMBIAR

COMPUTE oinst5=0.
IF S3_20_05=5 oinst5=1.
VARIABLE LABELS oinst5 'El motivo de no denunciar ÉL DIJO QUE IBA A CAMBIAR?'.

VALUE LABELS
/oinst5
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst5 DISPLAY=LABEL
/TABLE depto BY oinst5 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst5 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*6. PORQUE SU PAREJA LA AMENAZÓ

COMPUTE oinst6=0.
IF S3_20_06=6 oinst6=1.
VARIABLE LABELS oinst6 'El motivo de no denunciar PORQUE SU PAREJA LA AMENAZÓ?'.

VALUE LABELS
/oinst6
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst6 DISPLAY=LABEL
/TABLE depto BY oinst6 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst6 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*7. PORQUE SU FAMILIA LA CONVENCIÓ DE NO HACERLO

COMPUTE oinst7=0.
IF S3_20_07=7 oinst7=1.
VARIABLE LABELS oinst7 'El motivo de no denunciar PORQUE SU FAMILIA LA CONVENCIÓ DE NO HACERLO?'.

VALUE LABELS
/oinst7
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst7 DISPLAY=LABEL
/TABLE depto BY oinst7 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst7 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*8. PORQUE SE TRATÓ DE UN HECHO SIN IMPORTANCIA

COMPUTE oinst8=0.
IF S3_20_08=8 oinst8=1.
VARIABLE LABELS oinst8 'El motivo de no denunciar PORQUE SE TRATÓ DE UN HECHO SIN IMPORTANCIA?'.

VALUE LABELS
/oinst8
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst8 DISPLAY=LABEL
/TABLE depto BY oinst8 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst8 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*9. NO SABÍA QUE PODÍA DENUNCIAR

COMPUTE oinst9=0.
IF S3_20_09=9 oinst9=1.
VARIABLE LABELS oinst9 'El motivo de no denunciar NO SABÍA QUE PODÍA DENUNCIAR?'.

VALUE LABELS
/oinst9
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst9 DISPLAY=LABEL
/TABLE depto BY oinst9 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst9 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*10. NO CREE EN LA JUSTICIA

COMPUTE oinst10=0.
IF S3_20_10=10 oinst10=1.
VARIABLE LABELS oinst10 'El motivo de no denunciar NO CREE EN LA JUSTICIA?'.

VALUE LABELS
/oinst10
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst10 DISPLAY=LABEL
/TABLE depto BY oinst10 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst10 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*****************************************
*11. OTRA

COMPUTE oinst11=0.
IF S3_20_11=11 oinst11=1.
VARIABLE LABELS oinst11 'El motivo de no denunciar OTRA razon?'.

VALUE LABELS
/oinst11
1 'Si'
0 'No'.
CTABLES
/VLABELS VARIABLES=depto oinst11 DISPLAY=LABEL
/TABLE depto BY oinst11 [COUNT F40.0]
/CATEGORIES VARIABLES=depto ORDER=A KEY=VALUE EMPTY=EXCLUDE
/CATEGORIES VARIABLES=oinst11 ORDER=A KEY=VALUE EMPTY=INCLUDE.
			

		
*save 'H:\Violencia_mujer040318\Stata\Data_out\EPCVCM_Persona_mc2.dta', replace /*Trabajo*/		
save 'G:\Violencia_mujer040318\Stata\Data_out\EPCVCM_Persona_mc2.dta', replace /*Laptop*/		

