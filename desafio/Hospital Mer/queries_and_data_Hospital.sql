INSERT INTO paciente (cpf, rg, nome, convenio) values
					           ('13825485701', '283010690', 'Carla Chaves', 'SUS'),
                               ('74215353300', '285010650', 'Jose Raimundo', 'Unimed'),
                               ('15868826400', '285810690', 'Carlos Ribeiro', 'Sul America'),
                               ('31522580387', '287010690', 'Angela Cardoso', 'Bradesco'),
                               ('56698482275', '289010690', 'Maria Benedita', 'Unimed');
                    
INSERT INTO farmaceutico (cpf, crf, nome) values
						       ('36698482275', '15878', 'Marcos'),
                               ('46698482275', '66695', 'Tiago'),
                               ('76698482275', '85374', 'Carla'),
						       ('16698482275', '96874', 'Rosinaldo'),
						       ('66698482275', '21365', 'Flavio');
INSERT INTO remedio (descrição, dosagem, apresentação) values
							   ('Dipirona', '200 mg', 'Comprimido'),
                               ('Omeprazol', '200 mg', 'Cápsula'),
                               ('Amoxilina', '500 mg', 'Cápsula'),
							   ('Benzetacil', '1 mil UI', 'Injetável'),
                               ('Nimesulida', '250 mg', 'Comprimido');
                               
INSERT INTO quarto (numero) values
							    ('10'),
								('20'),
								('30'),
								('40'),
								('50' );
							
INSERT INTO especialidade (descrição) values 
								('Oftalmologia'),
                                ('Pediatria'),
                                ('Psiquiatria'),
                                ('Geriatria'),
                                ('Infectologia');

INSERT INTO enfermeiro (coren, cpf, nome) values 
									('4875', '56698482292', 'Jorgina'),
                                    ('4875', '56698482198', 'Rosa'),
                                    ('4875', '56698482789', 'Clara'),
                                    ('4875', '56698482456', 'Marinho'),
                                    ('4875', '56698482123', 'Roberta');

INSERT INTO medico ( crm, cpf, nome) values
							
                                     ('333', '16698482275', 'Jorge'),
                                     ('154', '26698782275', 'Armando'),
                                     ('998', '36698682275', 'Amanda'),
                                     ('775', '46698582275', 'Alice');
                                     
                                     
INSERT INTO medico_especialidade (id_especialidade, id_medico) values 

									('1', '3'),
                                    ('3', '1'),
                                    ('5', '2'),
                                    ('4', '4'),
                                    ('2', '4');
								
INSERT INTO triagem (id_paciente, id_enfermeiro, temperatura, pressao, peso) values

									 ('1', '1', '37.0', '12 por 8','55.00'),
                                     ('2', '1', '39.0', '11 por 6','65.8'),
                                     ('3', '4', '36.5', '12 por 9','95.0'),
                                     ('4', '4', '37.5', '15 por 8','45.0'),
                                     ('5', '1', '35.6', '12 por 8','75.4');
                                     
                                     
INSERT INTO consulta (id_triagem, id_medico) values 
									('1', '4'),
                                    ('3', '3'),
                                    ('4', '1'),
                                    ('2', '2');

INSERT INTO internação (id_quarto, id_consulta, data_entrada, data_saida) values 
									('1', '4', '2022-06-10', null),
                                    ('3', '2', '2022-03-25', null),
                                    ('4', '1', '2022-05-9', '2022-11-15'),
                                    ('5', '3', '2022-09-6', null);

INSERT INTO evolução (id_medico, id_internação,  descrição) values 
									('3', '1', 'Virose'),
                                    ('4', '2',  'Dengue'),
                                    ('2', '3',  'Febre amarela'),
                                    ('1', '4',  'Covid');

INSERT INTO receita (id_enfermeiro, id_consulta, id_evolução,  id_farmaceutico) values
										
									 ('1', '3', null, '2'),
                                     ('3', '1', '2', '5'),
                                     ('4', '2', '3', '4'),
                                     ('2', '4', null, '1'),
                                     ('5', '5', null, '3');
                                     
INSERT INTO receita_remedio (id_remedio, id_receita, como_tomar) values 
									('1', '2', '4/4 horas'),
                                    ('1', '3', '12/12 horas'),
                                    ('4', '5', '12/12 horas'),
                                    ('4', '4', '8/8 horas'),
                                    ('3', '2', '12/12 horas'),
                                    ('1', '3', '12/12 horas'),
                                    ('5', '5', '6/6 horas');
                                    

