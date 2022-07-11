ALUNOS = 4
NOTAS = 2

medias = {}
aprovados = 0
reprovados = 0
rec = 0

for i = 1, ALUNOS do
  media = 0
  io.write(string.format("Digite o nome do aluno: "))
  nome = io.read()
  io.write(string.format("Digite a idade do aluno %s: ", nome))
  idade =  tonumber(io.read()) 
  for j = 1, NOTAS do    
    io.write(string.format("Digite a nota %d do aluno %s: ", j, nome))
    media = media + tonumber(io.read()) 
  end
  media = media / NOTAS
  print(string.format("Aluno %s Media %.2f idade %d", nome, media, idade))
  if media >= 6 then 
    aprovados = aprovados + 1
  elseif media < 4 then 
    reprovados = reprovados +1
  else
    rec = rec +1
  end
end

print("\nA media dos alunos foi:")
for indice, nome in pairs(medias) do
    print(string.format("Nome %s: %.2f", nome, media))
end
print(string.format("%d alunos tiveram media maior ou igual a 6.", aprovados))
print(string.format("%d alunos tiveram media menor ou igual a 4.", reprovados))
print(string.format("%d alunos tiveram media entre 4 e 5.", rec))
