World(Helper)

After '@deslogar_professor' do
    pagina_professor.Deslogar
end


#depois de cada cenário tira um print e remove todos os espaços e vírgulas
After do |scenario|
    scenario_name = scenario_name.gsub(/\s+/, '_').tr('/','_')
    scenario_name = scenario_name.delete(',','')
    scenario_name = scenario_name.delete('(','')
    scenario_name = scenario_name.delete(')','')
    scenario_name = scenario_name.delete('#','')

    # se o cenário falhar chama o método takescreenshot passando:
    # o nome do cenário em letra minúscula o resultado
    if scenario.failed?
        takescreenshot(scenario_name.downcase!, 'failed')
    else
        takescreenshot(scenario_name.downcase!, 'passed')
    end
end