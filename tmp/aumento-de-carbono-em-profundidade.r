super <- read.table("data/febr-superconjunto.csv", sep = ";", dec = ",", head = T)

increase <-
  function (x) {
    x[1] < x[length(x)]
  }

super %>%  
  group_by(dataset_id, observacao_id) %>% 
  arrange(profund_sup, profund_inf, .by_group = TRUE) %>% 
  summarise(r = increase(carbono)) %>% 
  filter(r == 1) %>% 
  write.table("tmp/aumento-de-carbono-em-profundidade.csv", sep = ";", dec = ".", row.names = FALSE)


super %>%
  filter(dataset_id == "ctb0566" & observacao_id == "Perfil-15") %>% 
  arrange(profund_sup, profund_inf) %>% 
  select(dataset_id, observacao_id, camada_nome, profund_sup, profund_inf, carbono)
goto("ctb0566")
goto("ctb0711")
goto("ctb0753")
goto("ctb0829")
