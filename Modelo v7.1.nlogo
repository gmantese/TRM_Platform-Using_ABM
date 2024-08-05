globals [
  Periodo
  Tempo_medio_decorrido_para_preenchimento_dos_TRMs
  Quantidade_media_de_empresas_colaboradoras_em_cada_TRM
  Valor_medio_TRM
  Valor_total_TRMs
  Contador                                                 ; Auxiliar
  Contador2                                                ; Auxiliar
  Auxiliar                                                 ; Auxiliar
  Who_maior                                                ; Auxiliar
  Auxiliar2                                                ; Auxiliar
  Auxiliar3                                                ; Auxiliar
  Auxiliar4                                                ; Auxiliar
  Auxiliar5                                                ; Auxiliar
  Auxiliar6                                                ; Auxiliar
  Auxiliar7                                                ; Auxiliar
  Auxiliar8                                                ; Auxiliar
  Auxiliar9
  Auxiliar20
  Auxiliar21
  Quantidade_de_colaboradoras_aux
  Aux-tec-A                                                ; Auxiliar
  Aux-tec-B                                                ; Auxiliar
  Aux-tec-C                                                ; Auxiliar
  Aux-tec-D                                                ; Auxiliar
  Aux-tec-E                                                ; Auxiliar
  Aux-periodo                                              ; Auxiliar
  Aux_Valor_Inic_Paga_Tec_A                                ; Deste auxiliar para baixo é para auxiliar nos valores pagos e recebidos pelas Iniciadoras
  Aux_Valor_Inic_Paga_Tec_B
  Aux_Valor_Inic_Paga_Tec_C
  Aux_Valor_Inic_Paga_Tec_D
  Aux_Valor_Inic_Paga_Tec_E
  Aux_Valor_Inic_Paga_Tec_A_Inden
  Aux_Valor_Inic_Paga_Tec_B_Inden
  Aux_Valor_Inic_Paga_Tec_C_Inden
  Aux_Valor_Inic_Paga_Tec_D_Inden
  Aux_Valor_Inic_Paga_Tec_E_Inden
  Aux_Valor_Inic_Recebe_Tec_A_Inden
  Aux_Valor_Inic_Recebe_Tec_B_Inden
  Aux_Valor_Inic_Recebe_Tec_C_Inden
  Aux_Valor_Inic_Recebe_Tec_D_Inden
  Aux_Valor_Inic_Recebe_Tec_E_Inden
  Aux_Transfer_Tec_A
  Aux_Transfer_Tec_B
  Aux_Transfer_Tec_C
  Aux_Transfer_Tec_D
  Aux_Transfer_Tec_E
  Aux_Colab_Recebe_Tec
  Aux_Colab_Recebe_Inden
  Aux_Colab_Paga_Inden
  Aux_Transfer_Tec
  Qtde_Colaboradoras                     ; Daqui para baixo são os indicadores gerais
  Qtde_Iniciadoras
  Qtde_TRMs
  Qtde_TRMs_Abertos
  Qtde_TRMs_Interromp_Fase_0
  Qtde_TRMs_Interromp_Fase_1
  Qtde_TRMs_Interromp_Fase_2
  Qtde_TRMs_Interromp_Fase_3
  Qtde_TRMs_Interromp_Fase_4
  Propr_intelec_trocada
  Pago_por_prop_intelec
  Colab_pagam_inde
  Inic_pagam_inde
  x
  y
]

breed [iniciadoras iniciadora]
breed [colaboradoras colaboradora]
breed [TRMs TRM]


iniciadoras-own [
  Entrada_no_modelo
  Saida_do_modelo
  Primeira_participacao_em_um_TRM
  Ultima_participacao_em_um_TRM
  Disposicao_compartilhar
  Seguranca_das_informacoes_aux
  Facilidade_de_uso_da_plataforma_aux
  Transparencia_com_participantes_TRM_aux
  Boas_experiencias_com_a_plataforma_aux
  Valor_pago_propr_intelec
  Propriedade_intelectual_recebida
  Valor_recebido_indenizacao
  Valor_pago_indenizacao
  Confiablidade_empresa_aux
  Competencia_tecnologica_aux
  Potencial_mercado_aux
  Aplicabilidade_aux
  Passar_Fase_1
  Passar_Fase_2
  Passar_Fase_3
  Finalizar_Fase_4
  Responsavel_pela_quebra
]

colaboradoras-own [
  Entrada_no_modelo
  Saida_do_modelo
  Primeira_participacao_em_um_TRM
  Ultima_participacao_em_um_TRM
  Disposicao_compartilhar
  Seguranca_das_informacoes_aux
  Facilidade_de_uso_da_plataforma_aux
  Transparencia_com_participantes_TRM_aux
  Boas_experiencias_com_a_plataforma_aux
  Tipo_tecnologia
  Valor_recebido_propr_intelec
  Propriedade_intelectual_enviada
  Valor_recebido_indenizacao
  Valor_pago_indenizacao
  Confiablidade_empresa_aux
  Competencia_tecnologica_aux
  Potencial_mercado_aux
  Aplicabilidade_aux
  Passar_Fase_1
  Passar_Fase_2
  Passar_Fase_3
  Finalizar_Fase_4
  Responsavel_pela_quebra
]

trms-own [
  Iniciado_por
  Iniciado_em
  Tempo_maximo_aberto
  Valor_tecnologia_A
  Valor_tecnologia_B
  Valor_tecnologia_C
  Valor_tecnologia_D
  Valor_tecnologia_E
  Fase
  Periodos_na_Fase
  Encerramento
  Finalizado
  Valor_Colab_Recebe_Tec_A
  Valor_Colab_Recebe_Tec_B
  Valor_Colab_Recebe_Tec_C
  Valor_Colab_Recebe_Tec_D
  Valor_Colab_Recebe_Tec_E
  Valor_Colab_Recebe_Tec_A_Inden
  Valor_Colab_Recebe_Tec_B_Inden
  Valor_Colab_Recebe_Tec_C_Inden
  Valor_Colab_Recebe_Tec_D_Inden
  Valor_Colab_Recebe_Tec_E_Inden
  Valor_Colab_Paga_Tec_A_Inden
  Valor_Colab_Paga_Tec_B_Inden
  Valor_Colab_Paga_Tec_C_Inden
  Valor_Colab_Paga_Tec_D_Inden
  Valor_Colab_Paga_Tec_E_Inden
  Valor_Inic_Paga_Tec_A
  Valor_Inic_Paga_Tec_B
  Valor_Inic_Paga_Tec_C
  Valor_Inic_Paga_Tec_D
  Valor_Inic_Paga_Tec_E
  Valor_Inic_Paga_Tec_A_Inden
  Valor_Inic_Paga_Tec_B_Inden
  Valor_Inic_Paga_Tec_C_Inden
  Valor_Inic_Paga_Tec_D_Inden
  Valor_Inic_Paga_Tec_E_Inden
  Valor_Inic_Recebe_Tec_A_Inden
  Valor_Inic_Recebe_Tec_B_Inden
  Valor_Inic_Recebe_Tec_C_Inden
  Valor_Inic_Recebe_Tec_D_Inden
  Valor_Inic_Recebe_Tec_E_Inden
  Transfer_Tec_A
  Transfer_Tec_B
  Transfer_Tec_C
  Transfer_Tec_D
  Transfer_Tec_E
]

links-own [
  Tecnologia
  Valor
  Kind
  Situacao
]




to setup
  ca
  set periodo 1
  set contador 0
   while [contador < Quantidade_de_iniciadoras] [
      create-iniciadoras 1 [
      if who > who_maior [set who_maior who]
      set Entrada_no_modelo periodo
      set Saida_do_modelo "N/A"
      set Primeira_participacao_em_um_TRM "N/A"
      set Ultima_participacao_em_um_TRM "N/A"
      set Seguranca_das_informacoes_aux Seguranca_das_informacoes
      set Facilidade_de_uso_da_plataforma_aux Facilidade_de_uso_da_plataforma
      set Transparencia_com_participantes_TRM_aux Transparencia_com_os_demais_participantes_do_TRM
      set Boas_experiencias_com_a_plataforma_aux 5  ; Recebe essa valor por ser uma média, pois começam sem experiências
      set Disposicao_compartilhar ((Seguranca_das_informacoes_aux + Facilidade_de_uso_da_plataforma_aux + Transparencia_com_participantes_TRM_aux + Boas_experiencias_com_a_plataforma_aux) * 10 / 4)

      set Confiablidade_empresa_aux Confiablidade_empresa                        ; Bloco para atribuir valores dos critérios de passagem de fase de cada iniciadora
      set Competencia_tecnologica_aux Competencia_tecnologica
      set Potencial_mercado_aux Potencial_mercado
      set Aplicabilidade_aux Aplicabilidade
      set Passar_Fase_1 (Confiablidade_empresa_aux * 2.5 + Competencia_tecnologica_aux * 2.5 + Potencial_mercado_aux * 2.5 + Aplicabilidade_aux * 2.5) ; Bloco que calcula a probabilidade de passagem de cada fase para cada iniciadora
      set Passar_Fase_2 (Confiablidade_empresa_aux * 7 + Competencia_tecnologica_aux * 1 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
      set Passar_Fase_3 (Confiablidade_empresa_aux * 1 + Competencia_tecnologica_aux * 7 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
      set Finalizar_Fase_4 (Confiablidade_empresa_aux * 2 + Competencia_tecnologica_aux * 2 + Potencial_mercado_aux * 3 + Aplicabilidade_aux * 3)

      set shape "computer"
      set size 3.5
      set color 5
      set label who
      setxy (-15 + 3.3 * contador) 18
    ]
    set contador contador + 1
  ]

  set contador 0
   while [contador < Quantidade_de_colaboradoras] [
      create-colaboradoras 1 [
      if who > who_maior [set who_maior who]
      set Entrada_no_modelo periodo
      set Saida_do_modelo "N/A"
      set Primeira_participacao_em_um_TRM "N/A"
      set Ultima_participacao_em_um_TRM "N/A"
      set Tipo_tecnologia (random 5) + 1
      if Tipo_tecnologia = 1 [set Tipo_tecnologia "A"]
      if Tipo_tecnologia = 2 [set Tipo_tecnologia "B"]
      if Tipo_tecnologia = 3 [set Tipo_tecnologia "C"]
      if Tipo_tecnologia = 4 [set Tipo_tecnologia "D"]
      if Tipo_tecnologia = 5 [set Tipo_tecnologia "E"]
      set Seguranca_das_informacoes_aux Seguranca_das_informacoes
      set Facilidade_de_uso_da_plataforma_aux Facilidade_de_uso_da_plataforma
      set Transparencia_com_participantes_TRM_aux Transparencia_com_os_demais_participantes_do_TRM
      set Boas_experiencias_com_a_plataforma_aux 5; Recebe esse valor por ser uma média, pois começam sem experiências
      set Disposicao_compartilhar ((Seguranca_das_informacoes_aux + Facilidade_de_uso_da_plataforma_aux + Transparencia_com_participantes_TRM_aux + Boas_experiencias_com_a_plataforma_aux) * 10 / 4)

      set Confiablidade_empresa_aux Confiablidade_empresa                        ; Bloco para atribuir valores dos critérios de passagem de fase de cada colaboradora
      set Competencia_tecnologica_aux Competencia_tecnologica
      set Potencial_mercado_aux Potencial_mercado
      set Aplicabilidade_aux Aplicabilidade
      set Passar_Fase_1 (Confiablidade_empresa_aux * 2.5 + Competencia_tecnologica_aux * 2.5 + Potencial_mercado_aux * 2.5 + Aplicabilidade_aux * 2.5)  ; Bloco que calcula a probabilidade de passagem de cada fase para cada colaboradora
      set Passar_Fase_2 (Confiablidade_empresa_aux * 7 + Competencia_tecnologica_aux * 1 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
      set Passar_Fase_3 (Confiablidade_empresa_aux * 1 + Competencia_tecnologica_aux * 7 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
      set Finalizar_Fase_4 (Confiablidade_empresa_aux * 2 + Competencia_tecnologica_aux * 2 + Potencial_mercado_aux * 3 + Aplicabilidade_aux * 3)

      set shape "house"
      set size 2
      set color 5
      set label who

      if Quantidade_de_colaboradoras <= 10 [set Quantidade_de_colaboradoras_aux -22.5]
      if Quantidade_de_colaboradoras >= 11 [set Quantidade_de_colaboradoras_aux -20]
      if Quantidade_de_colaboradoras >= 21 [set Quantidade_de_colaboradoras_aux -17.5]
      if Quantidade_de_colaboradoras >= 31 [set Quantidade_de_colaboradoras_aux -15]
      if Quantidade_de_colaboradoras >= 41 [set Quantidade_de_colaboradoras_aux -12.5]
      if Quantidade_de_colaboradoras >= 51 [set Quantidade_de_colaboradoras_aux -10]
      if Quantidade_de_colaboradoras >= 61 [set Quantidade_de_colaboradoras_aux -7.5]
      if Quantidade_de_colaboradoras >= 71 [set Quantidade_de_colaboradoras_aux -5]
      if Quantidade_de_colaboradoras >= 81 [set Quantidade_de_colaboradoras_aux -2.5]
      if Quantidade_de_colaboradoras >= 91 [set Quantidade_de_colaboradoras_aux 0]

      if contador >= 0 and contador <= 9 [
        setxy (-15 + 3.3 * contador) (5 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 10 and contador <= 19 [
        setxy (-15 + 3.3 * (contador - 10)) (2.5 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 20 and contador <= 29 [
        setxy (-15 + 3.3 * (contador - 20)) (0 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 30 and contador <= 39 [
        setxy (-15 + 3.3 * (contador - 30)) (-2.5 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 40 and contador <= 49 [
        setxy (-15 + 3.3 * (contador - 40)) (-5 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 50 and contador <= 59 [
        setxy (-15 + 3.3 * (contador - 50)) (-7.5 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 60 and contador <= 69 [
        setxy (-15 + 3.3 * (contador - 60)) (-10 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 70 and contador <= 79 [
        setxy (-15 + 3.3 * (contador - 70)) (-12.5 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 80 and contador <= 89 [
        setxy (-15 + 3.3 * (contador - 80)) (-15 + Quantidade_de_colaboradoras_aux)
      ]
      if contador >= 90 and contador <= 99 [
        setxy (-15 + 3.3 * (contador - 90)) (-17.5 + Quantidade_de_colaboradoras_aux)
      ]
    ]
    set contador contador + 1
  ]

  ;;;; Já no Setup é necessário fazer o cálculo dos indicadores
  Calculo_indicadores


end




to Iniciar_um_TRM_colaborativo
  set contador 0
  while [contador <= who_maior] [
    ask turtle contador [
      set auxiliar2 0
      if breed = iniciadoras [
        set auxiliar2 1
        set auxiliar disposicao_compartilhar
      ]
    ]



      set contador2 0                           ; Zera o contador, o auxiliar que ajuda a selecionar o TRM da vez
      set auxiliar8 1                         ; Um pouco mais pra frente é guardado no auxiliar8 se o link existente com outros TRMs ainda está na situação de "Proposta". Agora é guardado o 1 no auxiliar8, pois existe a possibilidade de a iniciadora não ter nenhum link.
      while [contador2 <= who_maior] [           ; Este while tem objetivo de verificar se a iniciadora da vez tem algum link que ainda está na situação de "Proposta". Caso tenha, essa iniciadora não poderá criar outro link de proposta para outro TRM
        if link contador contador2 != nobody [  ; If para verificar se o link contador contador2 existe. Caso chame um lilnk inexistente é retornado um erro
          ask link contador contador2 [         ; Chama o link contador contador2
              if (situacao = "Proposta" or situacao = "Maturação") [set auxiliar8 0] ; Se a iniciadora tiver link de "Proposta" para outro TRM, então auxiliar8 recebe valor 0. Caso não tenha nenhum, então continua com valor 1 recebido antes de entra no if
          ]                                            ; Fecha o ask link
        ]                                              ; Fecha o if
        set contador2 contador2 + 1                      ; Soma 1 no contador para voltar ao while
      ]                                                ; Fecha o while de verificação de se a iniciadora da vez tem link na situaçã de "Porposta"




    if (auxiliar >= (random 100) + 1) and (auxiliar2 = 1) and (auxiliar8 = 1)[
      create-TRMs 1 [
        if who > who_maior [set who_maior who]
        set shape "book"
        set size 2
        set color 5
        set ycor (random (8 - Quantidade_de_colaboradoras_aux) + 7.5 + Quantidade_de_colaboradoras_aux)
        set xcor ((random 30) - 15)
        set Iniciado_por contador
        set Iniciado_em periodo
        set Tempo_maximo_aberto "N/A"       ; Pensar nisso ainda, deixei como N/A, mas quando crescer a complexidade do modelo, isso deve ser considerado
        set Valor_tecnologia_A "N/A"        ; Pensar nisso ainda, deixei como N/A, mas quando crescer a complexidade do modelo, isso deve ser considerado
        set Valor_tecnologia_B "N/A"        ; Pensar nisso ainda, deixei como N/A, mas quando crescer a complexidade do modelo, isso deve ser considerado
        set Valor_tecnologia_C "N/A"        ; Pensar nisso ainda, deixei como N/A, mas quando crescer a complexidade do modelo, isso deve ser considerado
        set Valor_tecnologia_D "N/A"        ; Pensar nisso ainda, deixei como N/A, mas quando crescer a complexidade do modelo, isso deve ser considerado
        set Valor_tecnologia_E "N/A"        ; Pensar nisso ainda, deixei como N/A, mas quando crescer a complexidade do modelo, isso deve ser considerado
        set Encerramento "Aberto"
        set Finalizado "Aberto"
        set label who
        create-link-from turtle contador [
          set tecnologia "N/A"
          set valor "N/A"
          set kind "Iniciadora"
          set situacao "Proposta"
        ]
      ]
    ]
    set contador contador + 1
  ]
end




to Iniciar_Colaboracao_no_TRM
  if any? TRMs with [iniciado_em = periodo] [   ; Só entra neste subcomando se existir pelo menos um TRM criado neste mesmo período
    set contador2 0                          ; Zera o contador2, o auxiliar que ajuda a selecionar a colaboradora da vez
    while [contador2 <= who_maior] [         ; Chama todos os agentes em busca de agentes colaboradoras dispostas a compartilhar
      set auxiliar2 0                        ; Zera o auxiliar2, que guarda a informação se a colaboradora da vez é uma colaboradora ou não
      set auxiliar3 0                        ; Zera o auxiliar3, que guarda a informação do "Disposicao_compartilhar" da colaboradora da vez. Se o agente da vez não for uma colaboradora, então assume valor 0
      ask turtle contador2 [                 ; Chama o agente da vez
        if breed = colaboradoras [           ; Se o agente for uma colaboradora...
          set auxiliar2 1                    ; ...então é dado o valor 1 para o auxiliar 2
          set auxiliar3 disposicao_compartilhar ; Guarda o valor de Disposição em compartilhar no auxiliar3
        ]                                       ; Fecha o if breed = colaboradora
        set contador 0                            ; Zera o contador, o auxiliar que ajuda a selecionar o TRM da vez
        set auxiliar8 1                         ; Um pouco mais pra frente é guardado no auxiliar8 se o link existente com outros TRMs ainda está na situação de "Proposta". Agora é guardado o 1 no auxiliar8, pois existe a possibilidade de a colaboradora não ter nenhum link.
        while [contador <= who_maior] [           ; Este while tem objetivo de verificar se a colaboradora da vez tem algum link que ainda está na situação de "Proposta". Caso tenha, essa colaboradora não poderá criar outro link de proposta para outro TRM
          if link contador2 contador != nobody [  ; If para verificar se o link contador2 contador existe. Caso chame um lilnk inexistente é retornado um erro
            ask link contador2 contador [         ; Chama o link contador2 contador
              if (situacao = "Proposta" or situacao = "Maturação") [set auxiliar8 0] ; Se a colaboradora tiver link de "Proposta" para outro TRM, então auxiliar8 recebe valor 0. Caso não tenha nenhum, então continua com valor 1 recebido antes de entra no if
            ]                                            ; Fecha o ask link
          ]                                              ; Fecha o if
          set contador contador + 1                      ; Soma 1 no contador para voltar ao while
        ]                                                ; Fecha o while de verificação de se a colaboradora da vez tem link na situaçã de "Porposta"

      ]                                                  ;  Fecha o ask que chama a colaboradora da vez
      if (auxiliar3 >= (random 100) + 1) and (auxiliar2 = 1) and (auxiliar8 = 1) [   ; Entra no if se a Dsiposição em compartilhar for maior que o número sorteado, se for uma colaboradora, e se não existirem links com a situação igual a "Proposta"
        ask turtle contador2 [                                   ; Chama a colaboradora da vez
          set auxiliar4 tipo_tecnologia                        ; Guarda o tipo de tecnologia no auxiliar4
        ]                                                      ; Fecha o ask colaboradora da vez


        ask one-of TRMs with [iniciado_em = periodo] [
          set auxiliar7 who
          create-link-from turtle contador2 [
            set tecnologia auxiliar4
            set valor (random-normal 100 10)
            set kind "Colaboradora"
            set situacao "Proposta"
          ]
        ]
      ]
      set contador2 contador2 + 1
    ]
  ]

end




to Definir_TRM_Fase_1
  set contador 0                                   ; Zera o auxiliar que define o agente da posição de TRM
  set contador2 0                                  ; Zera o auxiliar que define o agente da posição de colaboradora
  while [contador <= who_maior] [                  ; Inicia o primeiro while para fazer a varredura nos TRMs
    set Aux-tec-A 10000                            ; Define o auxiliar Aux-tec-A com um valor bem alto, pois a ideia é selecionar pelo menor valor
    set Aux-tec-B 10000                            ; Define o auxiliar Aux-tec-B com um valor bem alto, pois a ideia é selecionar pelo menor valor
    set Aux-tec-C 10000                            ; Define o auxiliar Aux-tec-C com um valor bem alto, pois a ideia é selecionar pelo menor valor
    set Aux-tec-D 10000                            ; Define o auxiliar Aux-tec-D com um valor bem alto, pois a ideia é selecionar pelo menor valor
    set Aux-tec-E 10000                            ; Define o auxiliar Aux-tec-E com um valor bem alto, pois a ideia é selecionar pelo menor valor
    set auxiliar 0                                 ; Zera o auxiliar que ajuda a guardar a informação se a Turtle contador é um TRM ou não
    if turtle contador != nobody [                 ; Pergunta se a turtle da vez existe ou não. Caso não exista, pula o if, pois se chamar um agente que não existe é retornado um erro
      ask turtle contador [ifelse (breed = TRMs) [set auxiliar 1] [set auxiliar 0]]     ; Entrou no if. Aí chama a turtle da vez. Se for um TRM, então auxiliar guarda valor 1, se não for, guarda o valor 0. Aqui vai nos interessar o valor 1
    ]                                                                                   ; Fecha o if
    set contador2 0                                                                     ; Zera o auxiliar que define o agente da posição de colaboradora. Esse comando é importante aqui, pois ele deve ser sempre zerado antes de entrar no while
    while [contador2 <= who_maior] [                                                    ; Inicia o segundo while para fazer a varredura das colaboradoras
      set auxiliar2 0                                                                   ; Zera o auxiliar que ajuda a guardar a informação se a Turtle contador2 é um colaborador ou não
      if link contador2 contador != nobody [                                            ; Pergunta se o link de contador2 para contador existe ou não. Caso não exista, pula o if, pois se chamar um link que não existe é retornado um erro
        ask turtle contador2 [ifelse (breed = colaboradoras) [set auxiliar2 1] [set auxiliar2 0]]   ; Entrou no if. Aí chama a turtle da vez. Se for uma colaboradora, então auxiliar2 guarda valor 1, se não for, guarda o valor 0. Aqui vai nos interessar o valor 1
      ]                                                                                 ; Fecha o if
      if (auxiliar = 1) and (auxiliar2 = 1) [                                           ; Se a turtle contador fou um TRM (auxiliar = 1) e se o link de turtle contador2 para turtle contador existir (auxiliar2 = 1) então entra no if
        ask link contador2 contador [                                                   ; Chama o link de contador2 para contador. Ou seja, da colaboradora da vez para o TRM da vez
          if tecnologia = "A" [                                        ; Se o link for de tecnologia A (isso foi definido na criação do link com base na tecnologia da colaboradora da qual sai o link), então entra no if
            if Aux-tec-A > valor [set Aux-tec-A valor]                 ; Se o valor do link for menor do que o Aux-tec-A (um auxiliar), então o Aux-tec-A assume o valor desse link. Na primeira vez que isso ocorre para cada TRM o Aux-tec-A deve ter o valor de 10000
          ]                                                            ; Fecha o if
          if tecnologia = "B" [                                        ; Se o link for de tecnologia B (isso foi definido na criação do link com base na tecnologia da colaboradora da qual sai o link), então entra no if
            if Aux-tec-B > valor [set Aux-tec-B valor]                 ; Se o valor do link for menor do que o Aux-tec-B (um auxiliar), então o Aux-tec-B assume o valor desse link. Na primeira vez que isso ocorre para cada TRM o Aux-tec-B deve ter o valor de 10000
          ]                                                            ; Fecha o if
          if tecnologia = "C" [                                        ; Se o link for de tecnologia C (isso foi definido na criação do link com base na tecnologia da colaboradora da qual sai o link), então entra no if
            if Aux-tec-C > valor [set Aux-tec-C valor]                 ; Se o valor do link for menor do que o Aux-tec-C (um auxiliar), então o Aux-tec-C assume o valor desse link. Na primeira vez que isso ocorre para cada TRM o Aux-tec-C deve ter o valor de 10000
          ]                                                            ; Fecha o if
          if tecnologia = "D" [                                        ; Se o link for de tecnologia D (isso foi definido na criação do link com base na tecnologia da colaboradora da qual sai o link), então entra no if
            if Aux-tec-D > valor [set Aux-tec-D valor]                 ; Se o valor do link for menor do que o Aux-tec-D (um auxiliar), então o Aux-tec-D assume o valor desse link. Na primeira vez que isso ocorre para cada TRM o Aux-tec-D deve ter o valor de 10000
          ]                                                            ; Fecha o if
          if tecnologia = "E" [                                        ; Se o link for de tecnologia E (isso foi definido na criação do link com base na tecnologia da colaboradora da qual sai o link), então entra no if
            if Aux-tec-E > valor [set Aux-tec-E valor]                 ; Se o valor do link for menor do que o Aux-tec-E (um auxiliar), então o Aux-tec-E assume o valor desse link. Na primeira vez que isso ocorre para cada TRM o Aux-tec-E deve ter o valor de 10000
          ]                                                            ; Fecha o if
        ]                                                              ; Fecha o ask link contador2 contador

        ask turtle contador [                                          ; Chama o TRM da vez
          set Valor_tecnologia_A Aux-tec-A                             ; O valor da tecnologia A será o Aux-tec-A, que é o menor valor dentre os liks com tecnologia formados. Ou caso nenhum link com tecnologia A tenha sido formado, então deve receber o valor de 10000 (uma valor muito alto)
          set Valor_tecnologia_B Aux-tec-B                             ; O valor da tecnologia A será o Aux-tec-B, que é o menor valor dentre os liks com tecnologia formados. Ou caso nenhum link com tecnologia A tenha sido formado, então deve receber o valor de 10000 (uma valor muito alto)
          set Valor_tecnologia_C Aux-tec-C                             ; O valor da tecnologia A será o Aux-tec-C, que é o menor valor dentre os liks com tecnologia formados. Ou caso nenhum link com tecnologia A tenha sido formado, então deve receber o valor de 10000 (uma valor muito alto)
          set Valor_tecnologia_D Aux-tec-D                             ; O valor da tecnologia A será o Aux-tec-D, que é o menor valor dentre os liks com tecnologia formados. Ou caso nenhum link com tecnologia A tenha sido formado, então deve receber o valor de 10000 (uma valor muito alto)
          set Valor_tecnologia_E Aux-tec-E                             ; O valor da tecnologia A será o Aux-tec-E, que é o menor valor dentre os liks com tecnologia formados. Ou caso nenhum link com tecnologia A tenha sido formado, então deve receber o valor de 10000 (uma valor muito alto)
        ]                                                              ; Fecha o chamado do TRM da vez
      ]                                                                ; Fecha o if que entra apenas se a turtle contador for um TRM e se existir um link da colaboradora para o TRM
      set contador2 contador2 + 1               ; Contador2 é usado no while que seleciona a colaboradora da vez
    ]                                           ; Fecha o while que seleciona a colaboradora da vez
    set contador contador + 1                   ; Contador é usado no while que seleciona o TRM da vez
  ]                                             ; Fecha o whiole que seleciona o TRM da vez



  ;;;;;; A partir daqui, é feita uma varredura para matar os links com valores maiores
  set contador 0
  set contador2 0
  while [contador <= who_maior] [
    set auxiliar 0
    if turtle contador != nobody [
      ask turtle contador [ifelse (breed = TRMs) [set auxiliar 1] [set auxiliar 0]]
    ]
    if (auxiliar = 1) [
      ask turtle contador [
        set Aux-tec-A Valor_tecnologia_A
        set Aux-tec-B Valor_tecnologia_B
        set Aux-tec-C Valor_tecnologia_C
        set Aux-tec-D Valor_tecnologia_D
        set Aux-tec-E Valor_tecnologia_E
      ]
    ]

    set contador2 0
    while [contador2 <= who_maior] [
      set auxiliar2 0
      if link contador2 contador != nobody [
        ask turtle contador2 [ifelse (breed = colaboradoras) [set auxiliar2 1] [set auxiliar2 0]]
      ]
      if (auxiliar = 1) and (auxiliar2 = 1) [
        ask link contador2 contador [
          if (Tecnologia = "A" and Valor > Aux-tec-A) [die]                      ; O aprnedizado deve ser influenciado aqui. Nesse caso o aprendizado é negativo para a colaboradora. Ainda não codei isso!
          if (Tecnologia = "B" and Valor > Aux-tec-B) [die]
          if (Tecnologia = "C" and Valor > Aux-tec-C) [die]
          if (Tecnologia = "D" and Valor > Aux-tec-D) [die]
          if (Tecnologia = "E" and Valor > Aux-tec-E) [die]
        ]
      ]
      set contador2 contador2 + 1
    ]
    set contador contador + 1
  ]

  set contador 0
  while [contador <= who_maior] [
    set auxiliar 0
    set auxiliar2 0
    if turtle contador != nobody [
      ask turtle contador [ifelse (breed = TRMs and encerramento = "Aberto") [set auxiliar 1] [set auxiliar 0]]
    ]
    if (auxiliar = 1) [
      ask turtle contador [
        if (Valor_tecnologia_A = 10000 or Valor_tecnologia_A = "N/A") [set auxiliar2 1]
        if (Valor_tecnologia_B = 10000 or Valor_tecnologia_B = "N/A") [set auxiliar2 1]
        if (Valor_tecnologia_C = 10000 or Valor_tecnologia_C = "N/A") [set auxiliar2 1]
        if (Valor_tecnologia_D = 10000 or Valor_tecnologia_D = "N/A") [set auxiliar2 1]
        if (Valor_tecnologia_E = 10000 or Valor_tecnologia_E = "N/A") [set auxiliar2 1]
      ]
      if auxiliar2 = 1 [
        ask turtle contador [
          set finalizado "Interrompido na Fase 0"
          set Encerramento periodo
          set color 15
          ask my-links [die]                 ; O aprendizado deve ser influenciado aqui. Nesse caso o aprendizado é negativo para a colaboradora e também para iniciadora. Ainda não codei isso!
        ]
      ]
      if auxiliar2 = 0 [
        ask turtle contador [
          if iniciado_em = periodo [              ; Esse IF é importante pois ele só define esses valores para os TRM que foram criados no período atual. Se não estivesse aqui, ele iria retornar todos os TRMs para a Fse 1 periodo 1
            set finalizado "Aberto"               ; O aprendizado deve ser influenciado aqui. Nesse caso o aprendizado é positivo para a colaboradora e também para iniciadora. Ainda não codei isso!
            set Fase 1
            set Periodos_na_Fase 1
          ]
        ]
      ]
    ]
    set contador contador + 1
  ]

end



to Passar_fase
  ;;;;; Essa parte é para finalizar TRM depois de 1 período na fase 4 (Fechamento) ou para interromper
  set contador 0                        ; Zera o auxiliar que define o agente da posição de TRM
  set auxiliar 0                        ; Zera o auxiliar que ajuda a guardar a informação se a Turtle contador é um TRM ou não
  while [contador <= who_maior] [       ; Inicia o while para fazer a varredura nos TRMs
    if turtle contador != nobody [      ; Pergunta se a turtle da vez existe ou não. Caso não exista, pula o if, pois se chamar um agente que não existe é retornado um erro
      ask turtle contador [ ifelse (breed = TRMs and finalizado = "Aberto") [set auxiliar 1] [set auxiliar 0] ] ; Entrou no if. Aí chama a turtle da vez. Se for um TRM e estiver aberto, então auxiliar guarda valor 1, se não for, guarda o valor 0. Aqui vai nos interessar o valor 1
      if auxiliar = 1 [                 ; Só entra no IF se a turtle for um TRM
        ask turtle contador [           ; Chama o TRM da vez
          if (fase = 4) [               ; Se o TRM estiver na Fase 4, então entra no IF, pois é candidato ser finalizado


            set contador2 0                             ; Zera o contador2 para entrar no segundo while, duas linhas a baixo
            set auxiliar20 0                            ; Zera essa auxiliar que carrega a informação se o TRM foi quebrado por uma (ou mais) colaboradora. Zero quer dizer que não foi quebrado
            while [contador2 <= who_maior] [              ; Abre o while que verifica se cada colaboradora finaliza o TRM ou quebra
              if link contador2 contador != nobody [    ; Chamo link por link para ver se ele existe, pois quero encontrar as colaboradoas nesse TRM
                ask turtle contador2 [                  ; Chama a turtle que tem link com o TRM
                  if breed = colaboradoras [             ; Se for uma colaboradora, então entro aqui

                    if (Finalizar_Fase_4 < (random 100 + 1)) [  ; Se a probabilidade for menor, então essa colaboradora é responsável pela quebra. Pode ser mais de uma
                      ask link contador2 contador [
                        set situacao "Quebrado em Fechamento por esta colaboradora"             ; Muda a situação do link para "Quebrado em Fechamento por esta colaboradora". Pode ser mais de uma colaboradora
                        set auxiliar20 "Quebrado"                                               ; Usa um auxiliar para dizer que o TRM foi quebrado
                      ]                                 ; Fecha o ask link contador2 contador
                    ]                                   ; Fecha o if (Finalizar_Fase_4 < (random 100 + 1))
                  ]                                     ; Fecha if breed = colaboradora
                ]                                       ; Fecha ask turtle contador2
              ]                                         ; Fecha if link contador2 contador != nobody
              set contador2 contador2 + 1               ; Soma 1 no contador2
            ]                                           ; Fecha o auxiliar2 <= who_maior


            if auxiliar20 = 0 [                            ; Se o TRM é finalizado, ou seja, ele não é quebrado, então ele entra nesse if
              set finalizado "Sim"                         ; TRM é finalizado com sucesso
              set encerramento periodo                     ; Guarda o período na variável encerramento do TRM
              set color 65
              ask my-links [
                set situacao "Finalizado"                  ; Muda a situação de todos os links para esse TRM
                set color 65                               ; Todos os links ficam verdes
              ]                                            ; Fecha ask my-links duas linhas acima

              ask link-neighbors with [Boas_experiencias_com_a_plataforma_Aux < 10] [                        ; Se a variável "Boas_experiencias_com_a_plataforma_Aux" for menor que 10, pois é o valor máximo, então...
                set Boas_experiencias_com_a_plataforma_Aux (Boas_experiencias_com_a_plataforma_Aux + 1)    ; ... A variável é aumentada em 1
              ]                                                                                              ; Fecha o ask duas linhas acima

            ]                                                 ; Fecha o if auxiliar20 = 0; que é para fechar com sucesso o TRM da vez



            if auxiliar20 = "Quebrado" [                                                                                  ; Se o TRM não é finalizado, ou seja, ele é quebrado, então ele entra nesse if
              set finalizado "Interrompido na Fase 4"                                                                     ; O TRM é interrompido
              set Encerramento periodo                                                                                    ; O periodo de encerramento é guardado
              set color 95                                                                                                ; O TRM é pintado da cor azul
              ask my-links with [kind = "Colaboradora" and situacao != "Quebrado em Fechamento por esta colaboradora"] [  ; Chama os links do TRM da vez que são de colaboradoras e que não foram responsáveis pela quebra
                set color 95                                                                                              ; Todos os seus links ficam azuis
                set situacao "Quebrado em Fechamento por outra colaboradora" ;                                            ; Muda a variável situação do link, avisando que eles foi "Quebrado em Fechamento por outra colaboradora"
              ]                                                                                                           ; Fecha o ask my-links

              ask my-links with [kind = "Iniciadora"] [                                  ; Chama por todos os links que tem o Tipo "Iniciadora", que é apenas o link da iniciadora para o TRM da vez
                set color 95
                set situacao "Quebrado em Fechamento por uma (ou mais) colaboradora(s)"  ; Muda a situação do link para "Quebrado em Fechamento por ma (ou mais) colaboradora(s)"
              ]                                                                          ; Fecha o ask de duas linhas acima


              ask my-links with [kind = "Colaboradora" and situacao = "Quebrado em Fechamento por esta colaboradora"] [    ; Chama pelos links que tem o Tipo "Colaboradora" e que quebraram o TRM
                set color 95
                ask both-ends [                                                                                            ; Chama as turtles que compõem os links
                  if breed = Colaboradoras [                                                                               ; Me interessam apenas as colaboradoras, pois a quebra do TRM é culpa delas. Não me interessa chamar o TRM
                    if (Boas_experiencias_com_a_plataforma_Aux > 0) [                                                          ; Se a variável "Boas_experiencias_com_a_plataforma_Aux" for maior que zero, pois não pode ficar negativa, então...
                      set Boas_experiencias_com_a_plataforma_Aux (Boas_experiencias_com_a_plataforma_Aux - 1)                  ; ... A variável é diminuída em 1
                    ]                                                                                                          ; Fecha o if de 2 linhas acima
                  ]
                ]
              ]                                                                                                            ; Fecha o ask de 3 linhas acima


            ]                                                                                                            ; Fecha o if auxiliar20 = "Quebrado", que é para quebrar o TRM da vez



          ]                                              ; Fecha o IF que pergunta se está na Fase 4

        ]                                                ; Fecha o ask que chama o TRM da vez
      ]                                                  ; Fecha o IF que pergunta se o agente da vez é um TRM e se está aberto
    ]                                                    ; Fecha o IF que pergunta se o agente da vez existe
    set contador contador + 1                            ; Acrescenta 1 no contador para ir para o próximo agente ou para sair do while
  ]                                                      ; Fecha o while


  ;;;;; Essa parte é para andar o TRM pela fase 3 ou para passá-lo para a fase 4
  set contador 0                        ; Zera o auxiliar que define o agente da posição de TRM
  set auxiliar 0                        ; Zera o auxiliar que ajuda a guardar a informação se a Turtle contador é um TRM ou não
  while [contador <= who_maior] [       ; Inicia o while para fazer a varredura nos TRMs
    if turtle contador != nobody [      ; Pergunta se a turtle da vez existe ou não. Caso não exista, pula o if, pois se chamar um agente que não existe é retornado um erro
      ask turtle contador [ ifelse (breed = TRMs and finalizado = "Aberto") [set auxiliar 1] [set auxiliar 0] ] ; Entrou no if. Aí chama a turtle da vez. Se for um TRM e estiver aberto, então auxiliar guarda valor 1, se não for, guarda o valor 0. Aqui vai nos interessar o valor 1
      if auxiliar = 1 [                 ; Só entra no IF se a turtle for um TRM
        ask turtle contador [           ; Chama o TRM da vez
          if (fase = 3) and (periodos_na_fase = 6) [    ; Se o TRM estiver na Fase 3 e estiver no período 6 dessa fase, então entra no IF, pois é candidato a passar de fase



            set contador2 0                             ; Zera o contador2 para entrar no segundo while, duas linhas a baixo
            set auxiliar20 0                            ; Zera essa auxiliar que carrega a informação se o TRM foi quebrado por uma (ou mais) colaboradora. Zero quer dizer que não foi quebrado
            set auxiliar21 0                            ; Zera essa auxiliar que carrega a informação se pelo menos uma colaboradora não foi responsável pela quebra. O zero significa que todas foram responsáveis. Depois, se de fato tiver uma que não foi responsável, o valor 1 será atribuido a essa auxiliar
            while [contador2 <= who_maior] [            ; Abre o while que verifica se cada colaboradora passa de fase ou o TRM quebra
              if link contador2 contador != nobody [    ; Chamo link por link para ver se ele existe, pois quero encontrar as colaboradoas nesse TRM
                ask turtle contador2 [                  ; Chama a turtle que tem link com o TRM
                  if breed = colaboradoras [             ; Se for uma colaboradora, então entro aqui

                    if (Passar_Fase_3 < (random 100 + 1)) [  ; Se a probabilidade for menor, então essa colaboradora é responsável pela quebra. Pode ser mais de uma
                      ask link contador2 contador [
                        set situacao "Quebrado em Desenvolvimento por esta colaboradora"        ; Muda a situação do link para "Quebrado em Desenvolvimento por esta colaboradora". Pode ser mais de uma colaboradora
                        set auxiliar20 "Quebrado"                                               ; Usa um auxiliar para dizer que o TRM foi quebrado
                      ]                                 ; Fecha o ask link contador2 contador
                    ]                                   ; Fecha o if (Passar_Fase_3 < (random 100 + 1))
                  ]                                     ; Fecha if breed = colaboradora
                ]                                       ; Fecha ask turtle contador2
              ]                                         ; Fecha if link contador2 contador != nobody
              set contador2 contador2 + 1               ; Soma 1 no contador2
            ]                                           ; Fecha o auxiliar2 <= who_maior


            if auxiliar20 = 0 [                            ; Se o TRM passa de fase, ou seja, ele não é quebrado, então ele entra nesse if
              set fase 4                                   ; TRM passa para fase 4
              set periodos_na_fase 1                       ; Primeiro período na fase 4
              ask my-links [
                set situacao "Fechamento"                  ; Muda a situação de todos os links para esse TRM
              ]                                            ; Fecha ask my-links duas linhas acima
            ]                                              ; Fecha o if auxiliar20 = 0; que é para fechar com sucesso o TRM da vez



            if auxiliar20 = "Quebrado" [                                                                                       ; Se o TRM não é finalizado, ou seja, ele é quebrado, então ele entra nesse if
              set finalizado "Interrompido na Fase 3"                                                                          ; O TRM é interrompido
              set Encerramento periodo                                                                                         ; O periodo de encerramento é guardado
              set color 25                                                                                                     ; O TRM é pintado da cor laranja
              ask my-links with [kind = "Colaboradora" and situacao != "Quebrado em Desenvolvimento por esta colaboradora"] [  ; Chama os links do TRM da vez que são de colaboradoras e que não foram responsáveis pela quebra
                set color 25                                                                                                   ; Todos os seus links ficam laranja
                set situacao "Quebrado em Desenvolvimento por outra colaboradora"                                              ; Muda a variável situação do link, avisando que eles foi "Quebrado em Desenvolvimento por outra colaboradora"
                set auxiliar21 1                                                                                               ; Essse auxiliar guarda o valor 1 se tiver pelo menos uma colaboradora que não foi responsável pela quebra. Dessa forma a iniciadora deve pagar uma indenização a ela.
              ]                                                                                                                ; Fecha o ask my-links


              ask my-links with [kind = "Iniciadora"] [                                  ; Chama por todos os links que tem o Tipo "Iniciadora", que é apenas o link da iniciadora para o TRM da vez
                set color 25
                set situacao "Quebrado em Desenvolvimento por uma (ou mais) colaboradora(s)"  ; Muda a situação do link para "Quebrado em Fechamento por uma (ou mais) colaboradora(s)"
                if auxiliar21 = 1 [                                                           ; Se auxiliar21 = 1, significa que a Iniciadora deve pagar indenização para pelo menos uma colaboradora. O que quer dizer que ela deve ter o Boas_experiências diminuídas.
                  ask both-ends [                                                                                            ; Chama as turtles que compõem os links
                    if breed = Iniciadoras [                                                                                 ; Me interessa apenas a iniciadora, pois ela deve pagar uma valor de indenização para uma ou mais colaboradoras
                      if (Boas_experiencias_com_a_plataforma_Aux > 0) [                                                          ; Se a variável "Boas_experiencias_com_a_plataforma_Aux" for maior que zero, pois não pode ficar negativa, então...
                        set Boas_experiencias_com_a_plataforma_Aux (Boas_experiencias_com_a_plataforma_Aux - 1)                  ; ... A variável é diminuída em 1
                      ]                                                                                                          ; Fecha o if de 2 linhas acima
                    ]
                  ]
                ]                                                                             ; Fecha o if auxiliar21 = 1
              ]                                                                               ; Fecha o ask my-links with [kind = "Iniciadora"]


              ask my-links with [kind = "Colaboradora" and situacao = "Quebrado em Desenvolvimento por esta colaboradora"] [    ; Chama pelos links que tem o Tipo "Colaboradora" e que quebraram o TRM
                set color 25
                ask both-ends [                                                                                            ; Chama as turtles que compõem os links
                  if breed = Colaboradoras [                                                                               ; Me interessam apenas as colaboradoras, pois a quebra do TRM é culpa delas. Não me interessa chamar o TRM
                    if (Boas_experiencias_com_a_plataforma_Aux > 0) [                                                          ; Se a variável "Boas_experiencias_com_a_plataforma_Aux" for maior que zero, pois não pode ficar negativa, então...
                      set Boas_experiencias_com_a_plataforma_Aux (Boas_experiencias_com_a_plataforma_Aux - 1)                  ; ... A variável é diminuída em 1
                    ]                                                                                                          ; Fecha o if de 2 linhas acima
                  ]
                ]
              ]                                                                                                            ; Fecha o ask de 3 linhas acima


            ]                                                                                                            ; Fecha o if auxiliar20 = "Quebrado", que é para quebrar o TRM da vez



          ]                                                ; Fecha o IF que pergunta se está na Fase 3 periodo 6

          if (fase = 3) and (periodos_na_fase <= 5) [    ; Se o TRM estiver na Fase 3 e estiver no periodo 1 a 5 nessa fase...
            set periodos_na_fase periodos_na_fase + 1    ; ...então um período é adicionado
          ]

        ]                                                ; Fecha o ask que chama o TRM da vez
      ]                                                  ; Fecha o IF que pergunta se o agente da vez é um TRM e se está aberto
    ]                                                    ; Fecha o IF que pergunta se o agente da vez existe
    set contador contador + 1                            ; Acrescenta 1 no contador para ir para o próximo agente ou para sair do while
  ]




  ;;;;; Essa parte é para andar o TRM pela fase 2 ou para passá-lo para a fase 3
  set contador 0                        ; Zera o auxiliar que define o agente da posição de TRM
  set auxiliar 0                        ; Zera o auxiliar que ajuda a guardar a informação se a Turtle contador é um TRM ou não
  while [contador <= who_maior] [       ; Inicia o while para fazer a varredura nos TRMs
    if turtle contador != nobody [      ; Pergunta se a turtle da vez existe ou não. Caso não exista, pula o if, pois se chamar um agente que não existe é retornado um erro
      ask turtle contador [ ifelse (breed = TRMs and finalizado = "Aberto") [set auxiliar 1] [set auxiliar 0] ] ; Entrou no if. Aí chama a turtle da vez. Se for um TRM e estiver aberto, então auxiliar guarda valor 1, se não for, guarda o valor 0. Aqui vai nos interessar o valor 1
      if auxiliar = 1 [                 ; Só entra no IF se a turtle for um TRM
        ask turtle contador [           ; Chama o TRM da vez
          if (fase = 2) and (periodos_na_fase = 3) [    ; Se o TRM estiver na Fase 2 e estiver no período 3 dessa fase, então entra no IF, pois é candidato a passar de fase

            set contador2 0                             ; Zera o contador2 para entrar no segundo while, duas linhas a baixo
            set auxiliar20 0                            ; Zera essa auxiliar que carrega a informação se o TRM foi quebrado por uma (ou mais) colaboradora(s) não atenderem ao requisito mínimo da iniciadora. Quem Quebra é a iniciadora. Zero quer dizer que não foi quebrado
            while [contador2 <= who_maior] [              ; Abre o while que verifica se cada colaboradora finaliza o TRM ou quebra
              if link contador2 contador != nobody [    ; Chamo link por link para ver se ele existe, pois quero encontrar as colaboradoas nesse TRM
                ask turtle contador2 [                  ; Chama a turtle que tem link com o TRM
                  if breed = colaboradoras [             ; Se for uma colaboradora, então entro aqui

                    if (Passar_Fase_2 < (random 100 + 1)) [  ; Se a probabilidade for menor, então essa colaboradora não atinge o requisito mínimo. Pode ser mais de uma
                      ask link contador2 contador [
                        set auxiliar20 "Quebrado"                                               ; Usa um auxiliar para dizer que o TRM foi quebrado
                      ]                                 ; Fecha o ask link contador2 contador
                    ]                                   ; Fecha o if (Passar_Fase_2 < (random 100 + 1))
                  ]                                     ; Fecha if breed = colaboradora
                ]                                       ; Fecha ask turtle contador2
              ]                                         ; Fecha if link contador2 contador != nobody
              set contador2 contador2 + 1               ; Soma 1 no contador2
            ]                                           ; Fecha o auxiliar2 <= who_maior

             if auxiliar20 = 0 [                           ; Se o TRM passa de fase, ou seja, ele não é quebrado, então ele entra nesse if
              set fase 3                                   ; TRM passa para fase 3
              set periodos_na_fase 1                       ; Primeiro período na fase 3
              ask my-links [
                set situacao "Desenvolvimento"              ; Muda a situação de todos os links para esse TRM
              ]                                            ; Fecha ask my-links duas linhas acima
            ]                                              ; Fecha o if auxiliar20 = 0; que é para fechar com sucesso

            if auxiliar20 = "Quebrado" [                                                                           ; Se o TRM não é finalizado, ou seja, ele é quebrado, então ele entra nesse if
              set finalizado "Interrompido na Fase 2"                                                              ; O TRM é interrompido
              set Encerramento periodo                                                                             ; O periodo de encerramento é guardado
              set color 45                                                                                         ; O TRM é pintado da cor amarela
              ask my-links [                                                                                       ; Chama os links do TRM da vez
                set color 45                                                                                       ; Todos os seus links ficam amarelo
                set situacao "Quebrado em Maturação"                                                               ; Muda a variável situação do link, avisando que ele foi "Quebrado em Maturação"
                ask both-ends [                                                                                    ; Chama as turtles que compõem os links
                  if breed = Iniciadoras [                                                                         ; Me interessa apenas a iniciadora, pois ela deve pagar uma valor de indenização para todas as colaboradoras
                    if (Boas_experiencias_com_a_plataforma_Aux > 0) [                                              ; Se a variável "Boas_experiencias_com_a_plataforma_Aux" for maior que zero, pois não pode ficar negativa, então...
                      set Boas_experiencias_com_a_plataforma_Aux (Boas_experiencias_com_a_plataforma_Aux - 1)      ; ... A variável é diminuída em 1
                    ]                                                                                              ; Fecha o if de 2 linhas acima
                  ]
                ]
              ]                                                                                                    ; Fecha o ask my-links
            ]
          ]


          if (fase = 2) and (periodos_na_fase <= 2) [    ; Se o TRM estiver na Fase 2 e estiver no periodo 1 ou 2 nessa fase...
            set periodos_na_fase periodos_na_fase + 1    ; ...então um período é adicionado
          ]                                              ; Fecha o IF
        ]                                                ; Fecha o ask que chama o TRM da vez
      ]                                                  ; Fecha o IF que pergunta se o agente da vez é um TRM e se está aberto
    ]                                                    ; Fecha o IF que pergunta se o agente da vez existe
    set contador contador + 1                            ; Acrescenta 1 no contador para ir para o próximo agente ou para sair do while
  ]                                                      ; Fecha o while


  ;;;;; Essa parte é para passar o TRM depois de 1 período na fase 1 (Proposta) ou para interromper
  set contador 0                        ; Zera o auxiliar que define o agente da posição de TRM
  set auxiliar 0                        ; Zera o auxiliar que ajuda a guardar a informação se a Turtle contador é um TRM ou não
  while [contador <= who_maior] [       ; Inicia o while para fazer a varredura nos TRMs
    if turtle contador != nobody [      ; Pergunta se a turtle da vez existe ou não. Caso não exista, pula o if, pois se chamar um agente que não existe é retornado um erro
      ask turtle contador [ ifelse (breed = TRMs and finalizado = "Aberto") [set auxiliar 1] [set auxiliar 0] ] ; Entrou no if. Aí chama a turtle da vez. Se for um TRM e estiver aberto, então auxiliar guarda valor 1, se não for, guarda o valor 0. Aqui vai nos interessar o valor 1
      if auxiliar = 1 [                 ; Só entra no IF se a turtle for um TRM
        ask turtle contador [           ; Chama o TRM da vez
          if (fase = 1) [               ; Se o TRM estiver na Fase 1, então entra no IF, pois é candidato a passar de fase

            set contador2 0                             ; Zera o contador2 para entrar no segundo while, duas linhas a baixo
            set auxiliar20 0                            ; Zera essa auxiliar que carrega a informação se o TRM foi quebrado por uma (ou mais) colaboradora(s) não atenderem ao requisito mínimo da iniciadora. Quem Quebra é a iniciadora. Zero quer dizer que não foi quebrado
            while [contador2 <= who_maior] [            ; Abre o while que verifica se cada colaboradora finaliza o TRM ou quebra
              if link contador2 contador != nobody [    ; Chamo link por link para ver se ele existe, pois quero encontrar as colaboradoas nesse TRM
                ask turtle contador2 [                  ; Chama a turtle que tem link com o TRM
                  if breed = colaboradoras [            ; Se for uma colaboradora, então entro aqui

                    if (Passar_Fase_1 < (random 100 + 1)) [  ; Se a probabilidade for menor, então essa colaboradora não atinge o requisito mínimo. Pode ser mais de uma
                      ask link contador2 contador [
                        set auxiliar20 "Quebrado"                                               ; Usa um auxiliar para dizer que o TRM foi quebrado
                      ]                                 ; Fecha o ask link contador2 contador
                    ]                                   ; Fecha o if (Passar_Fase_1 < (random 100 + 1))
                  ]                                     ; Fecha if breed = colaboradora
                ]                                       ; Fecha ask turtle contador2
              ]                                         ; Fecha if link contador2 contador != nobody
              set contador2 contador2 + 1               ; Soma 1 no contador2
            ]                                           ; Fecha o auxiliar2 <= who_maior

            if auxiliar20 = 0 [                           ; Se o TRM passa de fase, ou seja, ele não é quebrado, então ele entra nesse if
              set fase 2                                   ; TRM passa para fase 2
              set periodos_na_fase 1                       ; Primeiro período na fase 2
              ask my-links [
                set situacao "Maturação"                   ; Muda a situação de todos os links para esse TRM
              ]                                            ; Fecha ask my-links duas linhas acima
            ]                                              ; Fecha o if auxiliar20 = 0; que é para fechar com sucesso

            if auxiliar20 = "Quebrado" [                                                                           ; Se o TRM não é finalizado, ou seja, ele é quebrado, então ele entra nesse if
              set finalizado "Interrompido na Fase 1"                                                              ; O TRM é interrompido
              set Encerramento periodo                                                                             ; O periodo de encerramento é guardado
              set color 15                                                                                         ; O TRM é pintado da cor amarela
              ask my-links [                                                                                       ; Chama os links do TRM da vez
                set color 15                                                                                       ; Todos os seus links ficam amarelo
                set situacao "Quebrado em Proposta"                                                                ; Muda a variável situação do link, avisando que ele foi "Quebrado em Proposta"
              ]                                                                                                    ; Fecha o ask my-links. No bloco aqui fechado não é necessário calcular o Boa-Experiências, pois nada de indenização é pago aqui
            ]
          ]
        ]                                                ; Fecha o ask que chama o TRM da vez
      ]                                                  ; Fecha o IF que pergunta se o agente da vez é um TRM e se está aberto
    ]                                                    ; Fecha o IF que pergunta se o agente da vez existe
    set contador contador + 1                            ; Acrescenta 1 no contador para ir para o próximo agente ou para sair do while
  ]                                                      ; Fecha o while


end



to Calculo_indicadores
;;;;; Primeiro são enviadas todas as informações para os TRMs

  set contador 0                                            ; Zera o contador, responsável pelo primeiro while, que é o que deixa na posição de início do link
  while [contador <= who_maior] [                           ; Inicia o primeiro while, que procura pelo agente iniciador do link
    set auxiliar 0                                          ; Zera o auxiliar, que irá guardar o valor dos links
    set contador2 0                                         ; Zera o contador2, responsável pelo segundo while, que é o que deixa na posição de final do link
    while [contador2 <= who_maior] [                        ; Inicia o segundo while, que procura pelo agente recebedor do link, ou seja, o TRM
      if link contador contador2 != nobody [                ; Este if pergunta se o link contador contador2 existe. Isso é necessário pois se um link inexistente for chamado é retornado um erro
        ask link contador contador2 [                       ; Chama o link contador contador2


          ;;;;; Se for "Quebrado em Maturação", então cada colaboradora recebe 10% do valor. Tudo isso é pago pela iniciadora. Nada de propriedade intelectual é passado de colaboradoras para iniciadora
          if situacao = "Quebrado em Maturação" [            ; Se a situação do link for "Quebrado em Maturação", então...
            set auxiliar valor                               ; Guarda o vakor do link no auxiliar
            if tecnologia = "A" [                            ; Se o link for a tecnologia A, então...
              ask turtle contador2 [                         ; Chama o TRM da vez
                set Valor_Colab_Recebe_Tec_A_Inden (auxiliar * 0.1) ; Coloca o 10% do valor na variável Valor_Colab_Recebe_Tec_A
                set Valor_Inic_Paga_Tec_A_Inden (auxiliar * 0.1)    ; Coloca o 10% do valor na variável Valor_Inic_Paga_Tec_A
              ]                                              ; Fecha o ask três linhas acima
            ]                                                ; Fecha o if de cinco linhas acima
            if tecnologia = "B" [                            ; Faz a mesma coisa para a Tecnologia B
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_B_Inden (auxiliar * 0.1)
                set Valor_Inic_Paga_Tec_B_Inden (auxiliar * 0.1)
              ]
            ]
            if tecnologia = "C" [                            ; Faz a mesma coisa para a Tecnologia C
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_C_Inden (auxiliar * 0.1)
                set Valor_Inic_Paga_Tec_C_Inden (auxiliar * 0.1)
              ]
            ]
            if tecnologia = "D" [                            ; Faz a mesma coisa para a Tecnologia D
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_D_Inden (auxiliar * 0.1)
                set Valor_Inic_Paga_Tec_D_Inden (auxiliar * 0.1)
              ]
            ]
            if tecnologia = "E" [                            ; Faz a mesma coisa para a Tecnologia E
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_E_Inden (auxiliar * 0.1)
                set Valor_Inic_Paga_Tec_E_Inden (auxiliar * 0.1)
              ]
            ]
          ]                                                  ; Fecha o if se é "Quebrado em Maturação"

          ;;;;; Se for "Quebrado em Desenvolvimanto por esta colaboradora", então esta colaboradora paga 50% do valor para a Iniciadora. Propriedade intelectual não é repassada
          if situacao = "Quebrado em Desenvolvimento por esta colaboradora" [            ; Se a situação do link for "Quebrado em Desenvolvimento por esta colaboradora", então...
            set auxiliar valor                                                           ; Guarda o vakor do link no auxiliar
            if tecnologia = "A" [                                                        ; Se o link for a tecnologia A, então...
              ask turtle contador2 [                                                     ; Chama o TRM da vez
                set Valor_Colab_Paga_Tec_A_Inden (auxiliar * 0.5)                              ; Coloca 50% do valor na variável Valor_Colab_Paga_Tec_A
                set Valor_Inic_Recebe_Tec_A_Inden (auxiliar * 0.5)                             ; Coloca 50% do valor na variável Valor_Inic_Recebe_Tec_A
              ]                                                                          ; Fecha o ask de três linha acima
            ]                                                                            ; Fecha o if de cinco linhas acima
            if tecnologia = "B" [                                                        ; Faz a mesma coisa para a Tecnologia B
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_B_Inden (auxiliar * 0.5)
                set Valor_Inic_Recebe_Tec_B_Inden (auxiliar * 0.5)
              ]
            ]
            if tecnologia = "C" [                                                        ; Faz a mesma coisa para a Tecnologia C
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_C_Inden (auxiliar * 0.5)
                set Valor_Inic_Recebe_Tec_C_Inden (auxiliar * 0.5)
              ]
            ]
            if tecnologia = "D" [                                                        ; Faz a mesma coisa para a Tecnologia D
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_D_Inden (auxiliar * 0.5)
                set Valor_Inic_Recebe_Tec_D_Inden (auxiliar * 0.5)
              ]
            ]
            if tecnologia = "E" [                                                        ; Faz a mesma coisa para a Tecnologia E
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_E_Inden (auxiliar * 0.5)
                set Valor_Inic_Recebe_Tec_E_Inden (auxiliar * 0.5)
              ]
            ]
          ]                                                  ; Fecha o if se é "Quebrado em Desenvolvimento por esta colaboradora"



          ;;;;; Se for "Quebrado em Desenvolvimento por outra colaboradora", então esta colaboradora recebe 50% do valor da Iniciadora. Propriedade intelectual não é repassada
          if situacao = "Quebrado em Desenvolvimento por outra colaboradora" [           ; Se a situação do link for "Quebrado em Desenvolvimento por outra colaboradora", então...
            set auxiliar valor                                                           ; Guarda o vakor do link no auxiliar
            if tecnologia = "A" [                                                        ; Se o link for a tecnologia A, então...
              ask turtle contador2 [                                                     ; Chama o TRM da vez
                set Valor_Colab_Recebe_Tec_A_Inden (auxiliar * 0.5)                            ; Coloca 50% do valor na variável Valor_Colab_Recebe_Tec_A
                set Valor_Inic_Paga_Tec_A_Inden (auxiliar * 0.5)                               ; Coloca 50% do valor na variável Valor_Inic_Paga_Tec_A
              ]                                                                          ; Fecha o ask de três linha acima
            ]                                                                            ; Fecha o if de cinco linhas acima
            if tecnologia = "B" [                                                        ; Faz a mesma coisa para a Tecnologia B
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_B_Inden (auxiliar * 0.5)
                set Valor_Inic_Paga_Tec_B_Inden (auxiliar * 0.5)
              ]
            ]
            if tecnologia = "C" [                                                        ; Faz a mesma coisa para a Tecnologia C
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_C_Inden (auxiliar * 0.5)
                set Valor_Inic_Paga_Tec_C_Inden (auxiliar * 0.5)
              ]
            ]
            if tecnologia = "D" [                                                        ; Faz a mesma coisa para a Tecnologia D
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_D_Inden (auxiliar * 0.5)
                set Valor_Inic_Paga_Tec_D_Inden (auxiliar * 0.5)
              ]
            ]
            if tecnologia = "E" [                                                        ; Faz a mesma coisa para a Tecnologia E
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_E_Inden (auxiliar * 0.5)
                set Valor_Inic_Paga_Tec_E_Inden (auxiliar * 0.5)
              ]
            ]
          ]                                                  ; Fecha o if se é "Quebrado em Desenvolvimento por outra colaboradora"



          ;;;;; Se for "Quebrado em Fechamento por esta colaboradora", então esta colaboradora paga 100% do valor para a Iniciadora. Propriedade intelectual não é repassada
          if situacao = "Quebrado em Fechamento por esta colaboradora" [                 ; Se a situação do link for "Quebrado em Fechamento por esta colaboradora", então...
            set auxiliar valor                                                           ; Guarda o vakor do link no auxiliar
            if tecnologia = "A" [                                                        ; Se o link for a tecnologia A, então...
              ask turtle contador2 [                                                     ; Chama o TRM da vez
                set Valor_Colab_Paga_Tec_A_Inden (auxiliar)                                    ; Coloca 100% do valor na variável Valor_Colab_Paga_Tec_A
                set Valor_Inic_Recebe_Tec_A_Inden (auxiliar)                                   ; Coloca 100% do valor na variável Valor_Inic_Recebe_Tec_A
              ]                                                                          ; Fecha o ask de três linha acima
            ]                                                                            ; Fecha o if de cinco linhas acima
            if tecnologia = "B" [                                                        ; Faz a mesma coisa para a Tecnologia B
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_B_Inden (auxiliar)
                set Valor_Inic_Recebe_Tec_B_Inden (auxiliar)
              ]
            ]
            if tecnologia = "C" [                                                        ; Faz a mesma coisa para a Tecnologia C
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_C_Inden (auxiliar)
                set Valor_Inic_Recebe_Tec_C_Inden (auxiliar)
              ]
            ]
            if tecnologia = "D" [                                                        ; Faz a mesma coisa para a Tecnologia D
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_D_Inden (auxiliar)
                set Valor_Inic_Recebe_Tec_D_Inden (auxiliar)
              ]
            ]
            if tecnologia = "E" [                                                        ; Faz a mesma coisa para a Tecnologia E
              ask turtle contador2 [
                set Valor_Colab_Paga_Tec_E_Inden (auxiliar)
                set Valor_Inic_Recebe_Tec_E_Inden (auxiliar)
              ]
            ]
          ]                                                  ; Fecha o if se é "Quebrado em Fechamento por esta colaboradora"




          ;;;;; Se for "Quebrado em Fechamento por outra colaboradora", então esta colaboradora recebe 100% do valor da Iniciadora. Propriedade intelectual é repassada desta colaboradora para a iniciadora
          if situacao = "Quebrado em Fechamento por outra colaboradora" [                ; Se a situação do link for "Quebrado em Fechamento por outra colaboradora", então...
            set auxiliar valor                                                           ; Guarda o vakor do link no auxiliar
            if tecnologia = "A" [                                                        ; Se o link for a tecnologia A, então...
              ask turtle contador2 [                                                     ; Chama o TRM da vez
                set Valor_Colab_Recebe_Tec_A (auxiliar)                                  ; Coloca 100% do valor na variável Valor_Colab_Recebe_Tec_A
                set Valor_Inic_Paga_Tec_A (auxiliar)                                     ; Coloca 100% do valor na variável Valor_Inic_Paga_Tec_A
                set Transfer_Tec_A 1                                                     ; Coloca valor 1 em Transfer_Tec_A, significando que existe transferência de tecnologia da colaboradora para a iniciadora
              ]                                                                          ; Fecha o ask de quatro linha acima
            ]                                                                            ; Fecha o if de seis linhas acima
            if tecnologia = "B" [                                                        ; Faz a mesma coisa para a Tecnologia B
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_B (auxiliar)
                set Valor_Inic_Paga_Tec_B (auxiliar)
                set Transfer_Tec_B 1
              ]
            ]
            if tecnologia = "C" [                                                        ; Faz a mesma coisa para a Tecnologia C
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_C (auxiliar)
                set Valor_Inic_Paga_Tec_C (auxiliar)
                set Transfer_Tec_C 1
              ]
            ]
            if tecnologia = "D" [                                                        ; Faz a mesma coisa para a Tecnologia D
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_D (auxiliar)
                set Valor_Inic_Paga_Tec_D (auxiliar)
                set Transfer_Tec_D 1
              ]
            ]
            if tecnologia = "E" [                                                        ; Faz a mesma coisa para a Tecnologia E
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_E (auxiliar)
                set Valor_Inic_Paga_Tec_E (auxiliar)
                set Transfer_Tec_E 1
              ]
            ]
          ]                                                  ; Fecha o if se é "Quebrado em Fechamento por outra colaboradora"





          ;;;;; Se for "Finalizado", então esta colaboradora recebe 100% do valor da Iniciadora. Propriedade intelectual é repassada desta colaboradora para a iniciadora
          if situacao = "Finalizado" [                                                   ; Se a situação do link for "Finalizado", então...
            set auxiliar valor                                                           ; Guarda o vakor do link no auxiliar
            if tecnologia = "A" [                                                        ; Se o link for a tecnologia A, então...
              ask turtle contador2 [                                                     ; Chama o TRM da vez
                set Valor_Colab_Recebe_Tec_A (auxiliar)                                  ; Coloca 100% do valor na variável Valor_Colab_Recebe_Tec_A
                set Valor_Inic_Paga_Tec_A (auxiliar)                                     ; Coloca 100% do valor na variável Valor_Inic_Paga_Tec_A
                set Transfer_Tec_A 1                                                     ; Coloca valor 1 em Transfer_Tec_A, significando que existe transferência de tecnologia da colaboradora para a iniciadora
              ]                                                                          ; Fecha o ask de quatro linha acima
            ]                                                                            ; Fecha o if de seis linhas acima
            if tecnologia = "B" [                                                        ; Faz a mesma coisa para a Tecnologia B
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_B (auxiliar)
                set Valor_Inic_Paga_Tec_B (auxiliar)
                set Transfer_Tec_B 1
              ]
            ]
            if tecnologia = "C" [                                                        ; Faz a mesma coisa para a Tecnologia C
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_C (auxiliar)
                set Valor_Inic_Paga_Tec_C (auxiliar)
                set Transfer_Tec_C 1
              ]
            ]
            if tecnologia = "D" [                                                        ; Faz a mesma coisa para a Tecnologia D
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_D (auxiliar)
                set Valor_Inic_Paga_Tec_D (auxiliar)
                set Transfer_Tec_D 1
              ]
            ]
            if tecnologia = "E" [                                                        ; Faz a mesma coisa para a Tecnologia E
              ask turtle contador2 [
                set Valor_Colab_Recebe_Tec_E (auxiliar)
                set Valor_Inic_Paga_Tec_E (auxiliar)
                set Transfer_Tec_E 1
              ]
            ]
          ]                                                  ; Fecha o if se é "Finalizado"

        ]
      ]
      set contador2 contador2 + 1
    ]
    set contador contador + 1
  ]
;;;;;;;;;;;;; Aqui é terminado de passar as informações para os TRMs. Agora, daqui para baixo é passado para as iniciadoras e colaboradoras a soma de todos os TRMs


  ask colaboradoras [                        ; Zera as variáveis das colaboradoras
    set Valor_recebido_propr_intelec 0
    set Propriedade_intelectual_enviada 0
    set Valor_recebido_indenizacao 0
    set Valor_pago_indenizacao 0
  ]

  ask iniciadoras [                          ; Zera as variáveis das iniciadoras
    set Valor_pago_propr_intelec 0
    set Propriedade_intelectual_recebida 0
    set Valor_recebido_indenizacao 0
    set Valor_pago_indenizacao 0
  ]

  set contador 0
  while [contador <= who_maior] [
    set contador2 0
    while [contador2 <= who_maior] [
      if link contador contador2 != nobody [
        ask link contador contador2 [
          if kind = "Iniciadora" [                                      ; Abre para a Iniciadora do TRM, para transferir para auxiliares os valores que pagam ou recebem de indenização, ou por tranferência de tecnologia, e também as quantidades de tecnologias transferidas
            ask turtle contador2 [
              set Aux_Valor_Inic_Paga_Tec_A Valor_Inic_Paga_Tec_A
              set Aux_Valor_Inic_Paga_Tec_B Valor_Inic_Paga_Tec_B
              set Aux_Valor_Inic_Paga_Tec_C Valor_Inic_Paga_Tec_C
              set Aux_Valor_Inic_Paga_Tec_D Valor_Inic_Paga_Tec_D
              set Aux_Valor_Inic_Paga_Tec_E Valor_Inic_Paga_Tec_E
              set Aux_Valor_Inic_Paga_Tec_A_Inden Valor_Inic_Paga_Tec_A_Inden
              set Aux_Valor_Inic_Paga_Tec_B_Inden Valor_Inic_Paga_Tec_B_Inden
              set Aux_Valor_Inic_Paga_Tec_C_Inden Valor_Inic_Paga_Tec_C_Inden
              set Aux_Valor_Inic_Paga_Tec_D_Inden Valor_Inic_Paga_Tec_D_Inden
              set Aux_Valor_Inic_Paga_Tec_E_Inden Valor_Inic_Paga_Tec_E_Inden
              set Aux_Valor_Inic_Recebe_Tec_A_Inden Valor_Inic_Recebe_Tec_A_Inden
              set Aux_Valor_Inic_Recebe_Tec_B_Inden Valor_Inic_Recebe_Tec_B_Inden
              set Aux_Valor_Inic_Recebe_Tec_C_Inden Valor_Inic_Recebe_Tec_C_Inden
              set Aux_Valor_Inic_Recebe_Tec_D_Inden Valor_Inic_Recebe_Tec_D_Inden
              set Aux_Valor_Inic_Recebe_Tec_E_Inden Valor_Inic_Recebe_Tec_E_Inden
              set Aux_Transfer_Tec_A Transfer_Tec_A
              set Aux_Transfer_Tec_B Transfer_Tec_B
              set Aux_Transfer_Tec_C Transfer_Tec_C
              set Aux_Transfer_Tec_D Transfer_Tec_D
              set Aux_Transfer_Tec_E Transfer_Tec_E
            ]
            ask turtle contador [
              set Valor_pago_propr_intelec (Valor_pago_propr_intelec + Aux_Valor_Inic_Paga_Tec_A + Aux_Valor_Inic_Paga_Tec_B + Aux_Valor_Inic_Paga_Tec_C + Aux_Valor_Inic_Paga_Tec_D + Aux_Valor_Inic_Paga_Tec_E)
              set Propriedade_intelectual_recebida (Propriedade_intelectual_recebida + Aux_Transfer_Tec_A + Aux_Transfer_Tec_B + Aux_Transfer_Tec_C + Aux_Transfer_Tec_D + Aux_Transfer_Tec_E)
              set Valor_recebido_indenizacao (Valor_recebido_indenizacao + Aux_Valor_Inic_Recebe_Tec_A_Inden + Aux_Valor_Inic_Recebe_Tec_B_Inden + Aux_Valor_Inic_Recebe_Tec_C_Inden + Aux_Valor_Inic_Recebe_Tec_D_Inden + Aux_Valor_Inic_Recebe_Tec_E_Inden)
              set Valor_pago_indenizacao (Valor_pago_indenizacao + Aux_Valor_Inic_Paga_Tec_A_Inden + Aux_Valor_Inic_Paga_Tec_B_Inden + Aux_Valor_Inic_Paga_Tec_C_Inden + Aux_Valor_Inic_Paga_Tec_D_Inden + Aux_Valor_Inic_Paga_Tec_E_Inden)
            ]
          ]

          if tecnologia = "A" [                                         ; Abre para a Colaboradora do TRM que tem a tecnologia do tipo "A"
            ask turtle contador2 [
              set Aux_Colab_Recebe_Tec Valor_Colab_Recebe_Tec_A
              set Aux_Colab_Recebe_Inden Valor_Colab_Recebe_Tec_A_Inden
              set Aux_Colab_Paga_Inden Valor_Colab_Paga_Tec_A_Inden
              set Aux_Transfer_Tec Transfer_Tec_A
            ]
            ask turtle contador [
              set Valor_recebido_propr_intelec (Valor_recebido_propr_intelec + Aux_Colab_Recebe_Tec)
              set Propriedade_intelectual_enviada (Propriedade_intelectual_enviada + Aux_Transfer_Tec)
              set Valor_recebido_indenizacao (Valor_recebido_indenizacao + Aux_Colab_Recebe_Inden)
              set Valor_pago_indenizacao (Valor_pago_indenizacao + Aux_Colab_Paga_Inden)
            ]
          ]

          if tecnologia = "B" [                                         ; Abre para a Colaboradora do TRM que tem a tecnologia do tipo "B"
            ask turtle contador2 [
              set Aux_Colab_Recebe_Tec Valor_Colab_Recebe_Tec_B
              set Aux_Colab_Recebe_Inden Valor_Colab_Recebe_Tec_B_Inden
              set Aux_Colab_Paga_Inden Valor_Colab_Paga_Tec_B_Inden
              set Aux_Transfer_Tec Transfer_Tec_B
            ]
            ask turtle contador [
              set Valor_recebido_propr_intelec (Valor_recebido_propr_intelec + Aux_Colab_Recebe_Tec)
              set Propriedade_intelectual_enviada (Propriedade_intelectual_enviada + Aux_Transfer_Tec)
              set Valor_recebido_indenizacao (Valor_recebido_indenizacao + Aux_Colab_Recebe_Inden)
              set Valor_pago_indenizacao (Valor_pago_indenizacao + Aux_Colab_Paga_Inden)
            ]
          ]

          if tecnologia = "C" [                                         ; Abre para a Colaboradora do TRM que tem a tecnologia do tipo "C"
            ask turtle contador2 [
              set Aux_Colab_Recebe_Tec Valor_Colab_Recebe_Tec_C
              set Aux_Colab_Recebe_Inden Valor_Colab_Recebe_Tec_C_Inden
              set Aux_Colab_Paga_Inden Valor_Colab_Paga_Tec_C_Inden
              set Aux_Transfer_Tec Transfer_Tec_C
            ]
            ask turtle contador [
              set Valor_recebido_propr_intelec (Valor_recebido_propr_intelec + Aux_Colab_Recebe_Tec)
              set Propriedade_intelectual_enviada (Propriedade_intelectual_enviada + Aux_Transfer_Tec)
              set Valor_recebido_indenizacao (Valor_recebido_indenizacao + Aux_Colab_Recebe_Inden)
              set Valor_pago_indenizacao (Valor_pago_indenizacao + Aux_Colab_Paga_Inden)
            ]
          ]

          if tecnologia = "D" [                                         ; Abre para a Colaboradora do TRM que tem a tecnologia do tipo "D"
            ask turtle contador2 [
              set Aux_Colab_Recebe_Tec Valor_Colab_Recebe_Tec_D
              set Aux_Colab_Recebe_Inden Valor_Colab_Recebe_Tec_D_Inden
              set Aux_Colab_Paga_Inden Valor_Colab_Paga_Tec_D_Inden
              set Aux_Transfer_Tec Transfer_Tec_D
            ]
            ask turtle contador [
              set Valor_recebido_propr_intelec (Valor_recebido_propr_intelec + Aux_Colab_Recebe_Tec)
              set Propriedade_intelectual_enviada (Propriedade_intelectual_enviada + Aux_Transfer_Tec)
              set Valor_recebido_indenizacao (Valor_recebido_indenizacao + Aux_Colab_Recebe_Inden)
              set Valor_pago_indenizacao (Valor_pago_indenizacao + Aux_Colab_Paga_Inden)
            ]
          ]

          if tecnologia = "E" [                                         ; Abre para a Colaboradora do TRM que tem a tecnologia do tipo "E"
            ask turtle contador2 [
              set Aux_Colab_Recebe_Tec Valor_Colab_Recebe_Tec_E
              set Aux_Colab_Recebe_Inden Valor_Colab_Recebe_Tec_E_Inden
              set Aux_Colab_Paga_Inden Valor_Colab_Paga_Tec_E_Inden
              set Aux_Transfer_Tec Transfer_Tec_E
            ]
            ask turtle contador [
              set Valor_recebido_propr_intelec (Valor_recebido_propr_intelec + Aux_Colab_Recebe_Tec)
              set Propriedade_intelectual_enviada (Propriedade_intelectual_enviada + Aux_Transfer_Tec)
              set Valor_recebido_indenizacao (Valor_recebido_indenizacao + Aux_Colab_Recebe_Inden)
              set Valor_pago_indenizacao (Valor_pago_indenizacao + Aux_Colab_Paga_Inden)
            ]
          ]


        ]
      ]
      set contador2 contador2 + 1
    ]
    set contador contador + 1
  ]

  ;;;;; Agora são calculados os indicadores gerais

  set Qtde_Colaboradoras (count colaboradoras)
  set Qtde_Iniciadoras (count iniciadoras)
  set Qtde_TRMs (count TRMs)
  set Qtde_TRMs_Abertos (count TRMs with [Finalizado = "Aberto"])
  set Qtde_TRMs_Interromp_Fase_0 (count TRMs with [Finalizado = "Interrompido na Fase 0"])
  set Qtde_TRMs_Interromp_Fase_1 (count TRMs with [Finalizado = "Interrompido na Fase 1"])
  set Qtde_TRMs_Interromp_Fase_2 (count TRMs with [Finalizado = "Interrompido na Fase 2"])
  set Qtde_TRMs_Interromp_Fase_3 (count TRMs with [Finalizado = "Interrompido na Fase 3"])
  set Qtde_TRMs_Interromp_Fase_4 (count TRMs with [Finalizado = "Interrompido na Fase 4"])



  set auxiliar (count TRMs with [finalizado = "Sim"])       ; Faz o cálculo do valor médio dos TRMs finalizados com sucesso
  set contador 0
  set Valor_total_TRMs 0
  while [contador <= who_maior] [
    ask turtle contador [
      if (breed = TRMs) and (Finalizado = "Sim") [
        set Valor_total_TRMs Valor_total_TRMs + Valor_tecnologia_A
        set Valor_total_TRMs Valor_total_TRMs + Valor_tecnologia_B
        set Valor_total_TRMs Valor_total_TRMs + Valor_tecnologia_C
        set Valor_total_TRMs Valor_total_TRMs + Valor_tecnologia_D
        set Valor_total_TRMs Valor_total_TRMs + Valor_tecnologia_E
      ]
    ]
    set contador contador + 1
  ]
  ifelse auxiliar = 0 [set Valor_medio_TRM 0] [set Valor_medio_TRM Valor_Total_TRMs / auxiliar]


  set contador 0                               ; Faz o cálculo da quantidade de propriedade intelectual trocada e o valor
  set auxiliar 0
  set auxiliar2 0
  set auxiliar3 0
  set auxiliar4 0
  while [contador <= who_maior] [
    if turtle contador != nobody [
      ask turtle contador [
        if breed = Iniciadoras [
          set auxiliar (auxiliar + Propriedade_intelectual_recebida)
          set auxiliar2 (auxiliar2 + Valor_pago_propr_intelec)
          set auxiliar3 (auxiliar3 + Valor_recebido_indenizacao)
          set auxiliar4 (auxiliar4 + Valor_pago_indenizacao)
        ]
      ]
    ]
    set contador contador + 1
  ]
  set Propr_intelec_trocada auxiliar
  set Pago_por_prop_intelec auxiliar2
  set Colab_pagam_inde auxiliar3
  set Inic_pagam_inde auxiliar4



end



to Show_outputs

  clear-output
  set contador 0
  while [contador <= who_maior] [
    if turtle contador != nobody [
      ask turtle contador [
        if (breed = Iniciadoras) [
          output-type "Iniciadora "
          output-type contador
          output-type "                                                                                             "
          output-show " "

          output-type "Entrada: Período "
          output-type Entrada_no_modelo
          output-type "                                                                                             "
          output-show " "

          output-type "Disposição em compartilhar =  "
          output-type Disposicao_compartilhar
          output-type "%                                                                                             "
          output-show " "

          output-type "Valor Pago por Propriedade Intelectual =  "
          output-type Valor_pago_propr_intelec
          output-type "                                                                                             "
          output-show " "

          output-type "Quantidade de Propriedade Intelectual Recebida =  "
          output-type Propriedade_intelectual_recebida
          output-type "                                                                                             "
          output-show " "

          output-type "Valor Recebido por Indenização =  "
          output-type Valor_recebido_indenizacao
          output-type "                                                                                             "
          output-show " "

          output-type "Valor Pago por Indenização =  "
          output-type Valor_pago_indenizacao
          output-type "                                                                                             "
          output-show " "


        ]

        if breed = Colaboradoras [
          output-type "Colaboradora "
          output-type contador
          output-type "                                                                                             "
          output-show " "

          output-type "Entrada: Período "
          output-type Entrada_no_modelo
          output-type "                                                                                             "
          output-show " "

          output-type "Disposição em compartilhar = "
          output-type Disposicao_compartilhar
          output-type "%                                                                                             "
          output-show " "

          output-type "Tipo da Tecnologia = "
          output-type Tipo_tecnologia
          output-type "                                                                                             "
          output-show " "

          output-type "Valor Recebido por Porpriedade Intelectual = "
          output-type Valor_recebido_propr_intelec
          output-type "                                                                                             "
          output-show " "

          output-type "Quantidade de Propriedade Intelectual Enviada = "
          output-type Propriedade_intelectual_enviada
          output-type "                                                                                             "
          output-show " "

          output-type "Valor Recebido por Indenização = "
          output-type Valor_recebido_indenizacao
          output-type "                                                                                             "
          output-show " "

          output-type "Valor Pago por Indenização = "
          output-type Valor_pago_indenizacao
          output-type "                                                                                             "
          output-show " "


        ]

        if breed = TRMs [
          output-type "TRM "
          output-type contador
          output-type "                                                                                             "
          output-show " "

          output-type "Iniciado por: Iniciadora "
          output-type Iniciado_por
          output-type "                                                                                             "
          output-show " "

          output-type "Iniciado em: Período "
          output-type Iniciado_em
          output-type "                                                                                             "
          output-show " "

          output-type "Finalizado? "
          output-type Finalizado
          output-type "                                                                                             "
          output-show " "

          if finalizado = "Sim" [
            output-type " - PAGO POR PROPRIEDADE INTELECTUAL:"
            output-type "                                                                                             "
            output-show " "
            output-type "   + Valor tecnologia A = "
            output-type Valor_tecnologia_A
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia B = "
            output-type Valor_tecnologia_B
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia C = "
            output-type Valor_tecnologia_C
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia D = "
            output-type Valor_tecnologia_D
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia E = "
            output-type Valor_tecnologia_E
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor total = "
            output-type (Valor_tecnologia_A + Valor_tecnologia_B + Valor_tecnologia_C + Valor_tecnologia_D + Valor_tecnologia_E)
            output-type "                                                                                             "
            output-show " "
          ]


          if finalizado = "Interrompido na Fase 2" [
            output-type " - INICIADORA PAGA POR INDENIZAÇÃO:"
            output-type "                                                                                             "
            output-show " "
            output-type "   + Valor tecnologia A = "
            output-type Valor_Inic_Paga_Tec_A_Inden
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia B = "
            output-type Valor_Inic_Paga_Tec_B_Inden
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia C = "
            output-type Valor_Inic_Paga_Tec_C_Inden
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia D = "
            output-type Valor_Inic_Paga_Tec_D_Inden
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor tecnologia E = "
            output-type Valor_Inic_Paga_Tec_E_Inden
            output-type "                                                                                             "
            output-show " "

            output-type "   + Valor total = "
            output-type (Valor_Inic_Paga_Tec_A_Inden + Valor_Inic_Paga_Tec_B_Inden + Valor_Inic_Paga_Tec_C_Inden + Valor_Inic_Paga_Tec_D_Inden + Valor_Inic_Paga_Tec_E_Inden)
            output-type "                                                                                             "
            output-show " "
          ]

          if finalizado = "Interrompido na Fase 3" [
            set auxiliar 0
            set auxiliar2 0
            set auxiliar3 0
            set auxiliar4 0
            set auxiliar5 0
            output-type " - INICIADORA PAGA POR INDENIZAÇÃO:"
            output-type "                                                                                             "
            output-show " "

            if Valor_Inic_Paga_Tec_A_Inden != 0 [
              set auxiliar Valor_Inic_Paga_Tec_A_Inden
              output-type "   + Valor tecnologia A = "
              output-type Valor_Inic_Paga_Tec_A_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_B_Inden != 0 [
              set auxiliar2 Valor_Inic_Paga_Tec_B_Inden
              output-type "   + Valor tecnologia B = "
              output-type Valor_Inic_Paga_Tec_B_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_C_Inden != 0 [
              set auxiliar3 Valor_Inic_Paga_Tec_C_Inden
              output-type "   + Valor tecnologia C = "
              output-type Valor_Inic_Paga_Tec_C_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_D_Inden != 0 [
              set auxiliar4 Valor_Inic_Paga_Tec_D_Inden
              output-type "   + Valor tecnologia D = "
              output-type Valor_Inic_Paga_Tec_D_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_E_Inden != 0 [
              set auxiliar5 Valor_Inic_Paga_Tec_E_Inden
              output-type "   + Valor tecnologia E = "
              output-type Valor_Inic_Paga_Tec_E_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            output-type "   + Valor total = "
            output-type (auxiliar + auxiliar2 + auxiliar3 + auxiliar4 + auxiliar5)
            output-type "                                                                                             "
            output-show " "

            set auxiliar 0
            set auxiliar2 0
            set auxiliar3 0
            set auxiliar4 0
            set auxiliar5 0
            output-type " - COLABORADORA PAGA POR INDENIZAÇÃO:"
            output-type "                                                                                             "
            output-show " "

            if Valor_Colab_Paga_Tec_A_Inden != 0 [
              set auxiliar Valor_Colab_Paga_Tec_A_Inden
              output-type "   + Valor tecnologia A = "
              output-type Valor_Colab_Paga_Tec_A_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_B_Inden != 0 [
              set auxiliar2 Valor_Colab_Paga_Tec_B_Inden
              output-type "   + Valor tecnologia B = "
              output-type Valor_Colab_Paga_Tec_B_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_C_Inden != 0 [
              set auxiliar3 Valor_Colab_Paga_Tec_C_Inden
              output-type "   + Valor tecnologia C = "
              output-type Valor_Colab_Paga_Tec_C_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_D_Inden != 0 [
              set auxiliar4 Valor_Colab_Paga_Tec_D_Inden
              output-type "   + Valor tecnologia D = "
              output-type Valor_Colab_Paga_Tec_D_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_E_Inden != 0 [
              set auxiliar5 Valor_Colab_Paga_Tec_E_Inden
              output-type "   + Valor tecnologia E = "
              output-type Valor_Colab_Paga_Tec_E_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            output-type "   + Valor total = "
            output-type (auxiliar + auxiliar2 + auxiliar3 + auxiliar4 + auxiliar5)
            output-type "                                                                                             "
            output-show " "
          ]


          if finalizado = "Interrompido na Fase 4" [
            set auxiliar 0
            set auxiliar2 0
            set auxiliar3 0
            set auxiliar4 0
            set auxiliar5 0
            output-type " - PAGO POR PROPRIEDADE INTELECTUAL:"
            output-type "                                                                                             "
            output-show " "

            if Valor_Inic_Paga_Tec_A != 0 [
              set auxiliar Valor_Inic_Paga_Tec_A
              output-type "   + Valor tecnologia A = "
              output-type Valor_Inic_Paga_Tec_A
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_B != 0 [
              set auxiliar2 Valor_Inic_Paga_Tec_B
              output-type "   + Valor tecnologia B = "
              output-type Valor_Inic_Paga_Tec_B
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_C != 0 [
              set auxiliar3 Valor_Inic_Paga_Tec_C
              output-type "   + Valor tecnologia C = "
              output-type Valor_Inic_Paga_Tec_C
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_D != 0 [
              set auxiliar4 Valor_Inic_Paga_Tec_D
              output-type "   + Valor tecnologia D = "
              output-type Valor_Inic_Paga_Tec_D
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Inic_Paga_Tec_E != 0 [
              set auxiliar5 Valor_Inic_Paga_Tec_E
              output-type "   + Valor tecnologia E = "
              output-type Valor_Inic_Paga_Tec_E
              output-type "                                                                                             "
              output-show " "
            ]

            output-type "   + Valor total = "
            output-type (auxiliar + auxiliar2 + auxiliar3 + auxiliar4 + auxiliar5)
            output-type "                                                                                             "
            output-show " "

            set auxiliar 0
            set auxiliar2 0
            set auxiliar3 0
            set auxiliar4 0
            set auxiliar5 0
            output-type " - COLABORADORA PAGA POR INDENIZAÇÃO:"
            output-type "                                                                                             "
            output-show " "

            if Valor_Colab_Paga_Tec_A_Inden != 0 [
              set auxiliar Valor_Colab_Paga_Tec_A_Inden
              output-type "   + Valor tecnologia A = "
              output-type Valor_Colab_Paga_Tec_A_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_B_Inden != 0 [
              set auxiliar2 Valor_Colab_Paga_Tec_B_Inden
              output-type "   + Valor tecnologia B = "
              output-type Valor_Colab_Paga_Tec_B_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_C_Inden != 0 [
              set auxiliar3 Valor_Colab_Paga_Tec_C_Inden
              output-type "   + Valor tecnologia C = "
              output-type Valor_Colab_Paga_Tec_C_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_D_Inden != 0 [
              set auxiliar4 Valor_Colab_Paga_Tec_D_Inden
              output-type "   + Valor tecnologia D = "
              output-type Valor_Colab_Paga_Tec_D_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            if Valor_Colab_Paga_Tec_E_Inden != 0 [
              set auxiliar5 Valor_Colab_Paga_Tec_E_Inden
              output-type "   + Valor tecnologia E = "
              output-type Valor_Colab_Paga_Tec_E_Inden
              output-type "                                                                                             "
              output-show " "
            ]

            output-type "   + Valor total = "
            output-type (auxiliar + auxiliar2 + auxiliar3 + auxiliar4 + auxiliar5)
            output-type "                                                                                             "
            output-show " "
          ]







          ]

        output-type "------------------------------------------------------------------------------------------- "
        output-show " "
        output-type "------------------------------------------------------------------------------------------- "
        output-show " "




        ]

      ]
    set contador contador + 1
  ]

end


to Atualizar_empresas
  ask Colaboradoras [
    set Seguranca_das_informacoes_aux Seguranca_das_informacoes
    set Facilidade_de_uso_da_plataforma_aux Facilidade_de_uso_da_plataforma
    set Transparencia_com_participantes_TRM_aux Transparencia_com_os_demais_participantes_do_TRM
    set Disposicao_compartilhar ((Seguranca_das_informacoes_aux + Facilidade_de_uso_da_plataforma_aux + Transparencia_com_participantes_TRM_aux + Boas_experiencias_com_a_plataforma_aux) * 10 / 4)

    set Confiablidade_empresa_aux Confiablidade_empresa
    set Competencia_tecnologica_aux Competencia_tecnologica
    set Potencial_mercado_aux Potencial_mercado
    set Aplicabilidade_aux Aplicabilidade
    set Passar_Fase_1 (Confiablidade_empresa_aux * 2.5 + Competencia_tecnologica_aux * 2.5 + Potencial_mercado_aux * 2.5 + Aplicabilidade_aux * 2.5)
    set Passar_Fase_2 (Confiablidade_empresa_aux * 7 + Competencia_tecnologica_aux * 1 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
    set Passar_Fase_3 (Confiablidade_empresa_aux * 1 + Competencia_tecnologica_aux * 7 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
    set Finalizar_Fase_4 (Confiablidade_empresa_aux * 2 + Competencia_tecnologica_aux * 2 + Potencial_mercado_aux * 3 + Aplicabilidade_aux * 3)

  ]
  ask Iniciadoras [
    set Seguranca_das_informacoes_aux Seguranca_das_informacoes
    set Facilidade_de_uso_da_plataforma_aux Facilidade_de_uso_da_plataforma
    set Transparencia_com_participantes_TRM_aux Transparencia_com_os_demais_participantes_do_TRM
    set Disposicao_compartilhar ((Seguranca_das_informacoes_aux + Facilidade_de_uso_da_plataforma_aux + Transparencia_com_participantes_TRM_aux + Boas_experiencias_com_a_plataforma_aux) * 10 / 4)

    set Confiablidade_empresa_aux Confiablidade_empresa
    set Competencia_tecnologica_aux Competencia_tecnologica
    set Potencial_mercado_aux Potencial_mercado
    set Aplicabilidade_aux Aplicabilidade
    set Passar_Fase_1 (Confiablidade_empresa_aux * 2.5 + Competencia_tecnologica_aux * 2.5 + Potencial_mercado_aux * 2.5 + Aplicabilidade_aux * 2.5)
    set Passar_Fase_2 (Confiablidade_empresa_aux * 7 + Competencia_tecnologica_aux * 1 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
    set Passar_Fase_3 (Confiablidade_empresa_aux * 1 + Competencia_tecnologica_aux * 7 + Potencial_mercado_aux * 1 + Aplicabilidade_aux * 1)
    set Finalizar_Fase_4 (Confiablidade_empresa_aux * 2 + Competencia_tecnologica_aux * 2 + Potencial_mercado_aux * 3 + Aplicabilidade_aux * 3)
  ]





end



to go
  Atualizar_empresas            ; Tem no começo pois os dados de entrada podem ser mudados, então o modelo deve verificar isso
  Passar_fase
  Iniciar_um_TRM_colaborativo
  Iniciar_Colaboracao_no_TRM
  Definir_TRM_Fase_1
  Calculo_indicadores
  Show_outputs
  Atualizar_empresas            ; Tem no final pois as empresas podem ter mudado a variável de Boa Experiências com a plataforma" neste período, então o modelo deve verificar isso
  set periodo periodo + 1
end
@#$#@#$#@
GRAPHICS-WINDOW
1071
10
1508
552
-1
-1
13.0
1
10
1
1
1
0
0
0
1
-16
16
-20
20
0
0
1
ticks
30.0

SLIDER
13
180
281
213
Quantidade_de_iniciadoras
Quantidade_de_iniciadoras
1
10
10.0
1
1
NIL
HORIZONTAL

BUTTON
8
10
72
43
NIL
Setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
13
218
283
251
Quantidade_de_colaboradoras
Quantidade_de_colaboradoras
1
100
59.0
1
1
NIL
HORIZONTAL

SLIDER
12
286
314
319
Seguranca_das_informacoes
Seguranca_das_informacoes
0
10
10.0
1
1
NIL
HORIZONTAL

SLIDER
13
322
313
355
Facilidade_de_uso_da_plataforma
Facilidade_de_uso_da_plataforma
0
10
10.0
1
1
NIL
HORIZONTAL

SLIDER
12
357
313
390
Transparencia_com_os_demais_participantes_do_TRM
Transparencia_com_os_demais_participantes_do_TRM
0
10
10.0
1
1
NIL
HORIZONTAL

BUTTON
143
10
206
43
NIL
Go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
76
10
140
43
Go once
Go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
504
59
659
104
Quantidade de TRMs
Qtde_TRMs
17
1
11

MONITOR
504
10
659
55
Quantidade de Iniciadoras
Qtde_Iniciadoras
17
1
11

MONITOR
342
60
499
105
Quantidade de Colaboradoras
Qtde_Colaboradoras
17
1
11

MONITOR
342
108
496
153
TRMs abertos
Qtde_TRMs_Abertos
17
1
11

MONITOR
319
187
488
232
TRMs finalizados com sucesso
count TRMs with [Finalizado = \"Sim\"]
17
1
11

MONITOR
321
284
488
329
TRMs interrompidos na Fase 3
Qtde_TRMs_Interromp_Fase_3
17
1
11

SLIDER
12
426
246
459
Confiablidade_empresa
Confiablidade_empresa
0
10
9.0
1
1
NIL
HORIZONTAL

SLIDER
12
465
246
498
Competencia_tecnologica
Competencia_tecnologica
0
10
9.0
1
1
NIL
HORIZONTAL

SLIDER
12
539
246
572
Aplicabilidade
Aplicabilidade
0
10
9.0
1
1
NIL
HORIZONTAL

MONITOR
342
10
499
55
Período
periodo
17
1
11

SLIDER
12
502
247
535
Potencial_mercado
Potencial_mercado
0
10
9.0
1
1
NIL
HORIZONTAL

MONITOR
494
188
662
233
TRMs interrompidos na Fase 0
Qtde_TRMs_Interromp_Fase_0
17
1
11

MONITOR
321
236
489
281
TRMs interrompidos na Fase 1
Qtde_TRMs_Interromp_Fase_1
17
1
11

MONITOR
495
235
662
280
TRMs interrompidos na Fase 2
Qtde_TRMs_Interromp_Fase_2
17
1
11

MONITOR
495
284
662
329
TRMs interrompidos na Fase 4
Qtde_TRMs_Interromp_Fase_4
17
1
11

MONITOR
459
355
623
400
Propriedade intelectual trocada
Propr_intelec_trocada
17
1
11

MONITOR
459
458
655
503
Indenizações pagas por colaboradoras
Colab_pagam_inde
2
1
11

MONITOR
459
510
657
555
Indenizações pagas por iniciadoras
Inic_pagam_inde
2
1
11

MONITOR
459
406
655
451
Pago por propreidade intelectual
Pago_por_prop_intelec
2
1
11

OUTPUT
663
10
1071
554
11

BUTTON
10
52
120
85
Artualizar empresas
Atualizar_empresas            ; Tem no começo pois os dados de entrada podem ser mudados, então o modelo deve verificar isso
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
123
52
193
85
Passar fase
Passar_fase
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
197
53
266
86
Iniciar TRM
Iniciar_um_TRM_colaborativo
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
9
89
103
122
Colaborar no TRM
Iniciar_Colaboracao_no_TRM
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
106
89
226
122
Escolher colaboradoras
Definir_TRM_Fase_1
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
229
89
332
122
Calcular indicadores
Calculo_indicadores
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
9
125
95
158
Mostrar outputs
Show_outputs
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
99
125
201
158
Atualizar empresas
Atualizar_empresas            ; Tem no final pois as empresas podem ter mudado a variável de Boa Experiências com a plataforma\" neste período, então o modelo deve verificar isso
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
203
125
316
158
Passar período
set periodo periodo + 1
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
458
565
1164
649
Os Modelos versão 7 foram criados depois da apresentação do dia 02/09/2020.\nA diferença deles com relação à versão 5 é que a passagem de fase é condicionada a cada empresa exclusivamente, assim como a criação de um TRM ou a participação em um TRM.
15
0.0
1

MONITOR
259
426
414
471
Passar fase 1 (cada empresa)
Confiablidade_empresa * 2.5 + Competencia_tecnologica * 2.5 + Potencial_mercado * 2.5 + Aplicabilidade * 2.5
2
1
11

MONITOR
259
476
415
521
Passar fase 2 (cada empresa)
Confiablidade_empresa * 7 + Competencia_tecnologica * 1 + Potencial_mercado * 1 + Aplicabilidade * 1
2
1
11

MONITOR
260
526
416
571
Passar fase 3 (cada empresa)
Confiablidade_empresa * 1 + Competencia_tecnologica * 7 + Potencial_mercado * 1 + Aplicabilidade * 1
2
1
11

MONITOR
261
576
415
621
Finalizar (cada empresa)
Confiablidade_empresa * 2 + Competencia_tecnologica * 2 + Potencial_mercado * 3 + Aplicabilidade * 3
2
1
11

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

book
false
0
Polygon -7500403 true true 30 195 150 255 270 135 150 75
Polygon -7500403 true true 30 135 150 195 270 75 150 15
Polygon -7500403 true true 30 135 30 195 90 150
Polygon -1 true false 39 139 39 184 151 239 156 199
Polygon -1 true false 151 239 254 135 254 90 151 197
Line -7500403 true 150 196 150 247
Line -7500403 true 43 159 138 207
Line -7500403 true 43 174 138 222
Line -7500403 true 153 206 248 113
Line -7500403 true 153 221 248 128
Polygon -1 true false 159 52 144 67 204 97 219 82

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

computer
false
0
Rectangle -7500403 true true 60 45 240 180
Polygon -7500403 true true 90 180 105 195 135 195 135 210 165 210 165 195 195 195 210 180
Rectangle -16777216 true false 75 60 225 165
Rectangle -7500403 true true 45 210 255 255
Rectangle -10899396 true false 249 223 237 217
Line -16777216 false 60 225 120 225

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
