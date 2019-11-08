*** Variables ***
#ITENS DE BUSCA
${IDA_E_VOLTA}                  //label[contains(text(), "ida e volta")]
${SOMENTE_IDA_OU_VOLTA}         //label[contains(text(), "somente ida ou volta")]
${MULTITRECHOS}                 //label[contains(text(), "multitrechos")]
${INSERIR_ORIGEM}               //input[@id="ticket-origin1"]
${ORIGEM_SEGUNDO_TRECHO}        //input[@id="ticket-origin2"]
${INSERIR_DESTINO}  	        //input[@id="ticket-destination1"]
${DESTINO_SEGUNDO_TRECHO}       //input[@id="ticket-destination2"]
${SELECIONAR_ORIGEM}            //*[@id="ticket-content"]/div[1]/div[1]/div/div/div/a
${SELECIONAR_DESTINO}           //*[@id="ticket-content"]/div[1]/div[2]/div/div/div/a
${DATA_IDA}                     //input[@id="ticket-departure1"]
${DATA_IDA_SEGUNDO_TECHO}       //input[@id="ticket-departure2"]
${DATA_VOLTA}                   //input[@id="ticket-arrival1"]
${DATA_VOLTA_SEGUNDO_TECHO}     //*[@id="ticket-destination2"]
${INSERIR_NUM_ADULTOS}          //*[@id="ticket-adults"]
${ADICIONAR_ADULTO}             //*[@id="ticket-detail"]/div[5]/div[1]/div/div[1]/div/div/fieldset/button[2]
${REMOVER_ADULTO}               //*[@id="decrement-ticket-adults"]
${INSERIR_CRIANCA}              //*[@id="ticket-children"]
${ADICIONAR_CRIANCA}            //*[@id="ticket-detail"]/div[5]/div[1]/div/div[2]/div/div/fieldset/button[2]
${REMOVER_CRIANCA}              //*[@id="decrement-ticket-children"]
${INSERIR_BEBE}                 //*[@id="ticket-children"]
${ADICIONAR_BEBE}               //*[@id="ticket-detail"]/div[5]/div[1]/div/div[3]/div/div/fieldset/button[2]
${REMOVER_BEBE}                 //*[@id="decrement-ticket-children"]
${VALOR_EM_REAIS}               //*[@id="fare-types-column"]/fieldset/span/label[1]
${VALOR_EM_PONTOS_E_REAIS}      //*[@id="fare-types-column"]/fieldset/span/label[2]
${VALOR_EM_PONTOS}              //*[@id="fare-types-column"]/fieldset/span/label[3]
${MOSTRAR_DATAS_FLEXIVEIS}      //*[@id="flexible-prices-column"]/label/span[1]
${BUSCAR_PASSAGENS}             //*[@id="ticket-detail"]/div[5]/div[3]/div/button

#DESTINOS
${CURITIBA}                 //*[@id="Brasil"]/div/div[2]/div/div/div/div[2]/ul/li[3]
${SAO_PAULO}                //*[@id="Brasil"]/div/div[2]/div/div/div/div[4]/ul/li[11]
${FORTALEZA}                //*[@id="Brasil"]/div/div[2]/div/div/div/div[2]/ul/li[9]
${FLORIANOPOLIS}            //*[@id="Brasil"]/div/div[2]/div/div/div/div[2]/ul/li[8]