puts "Informe seu whatsapp"
whats = gets.chomp

# Padrão para o formato correto (XX) 9XXXX-XXXX
padrão1 = /^\(\d{2}\) 9\d{4}-\d{4}$/
# Padrão para o formato sem parênteses e hífen
padrão2 = /^\d{2} 9\d{4} \d{4}$/

if whats.match?(padrão1)
  puts "O whatsapp #{whats} é no padrão (**) 9****-****"
elsif whats.match?(padrão2)
  # Formatar o número para o padrão correto
  ddd = whats[0..1]
  parte1 = whats[3..7]
  parte2 = whats[9..12]
  whats_formatado = "(#{ddd}) #{parte1}-#{parte2}"
  puts "O whatsapp #{whats_formatado} é no padrão (**) 9****-****"
else
  puts "O whatsapp #{whats} não é no padrão (**) 9****-****"
end
