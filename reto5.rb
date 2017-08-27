=begin
 RETO 5
 1 - Iniciar juego
 2 - Selecionar las 5 preguntas
 4 - Primera pregunta
      si correcto paso 5 si no, paso 4
 5 - Segunda pregunta 
      si correcto paso 6 si no, paso 5
 6 - Tercera pregunta
       si correcto paso 7 si no, paso 6
 7 - Cuarta pregunta
      si correcto paso 8 si no, paso 7
 8 - Quinta pregunta
      si correcto paso 9 si no, paso 8
 9 - Mostrar cantidad de errores
=end
require_relative './Player'
require_relative './Question'

player = Player.new("Jugador 1")

question = Question.new
questions = question.getQuestions

p "Bienvenido Al Reto 5!!!!!"
p
p "Las reglas son simples:"
p "* Debes responder las 5 preguntas que te seran generadas aleatoriamente"
p "* Cada pregunta que falles Agregara un punto al contador de errores"
p "Al final dependiendo de la cantidad de errores que tengas obtendras un rango"
p "Pro: 0 errores, Semi pro: 2 errores  novato: 3 o mas errores"
p "Que te diviertas !!!!!!!!"
i = 1
p questions.count
questions.each do |q|
  p "Pregunta numero #{i}"
  r = false
  while r == false
    p q[0] #pregunta
    rs = q[1].split(' ')  #posibles respuestas
    print "Respuestas: "
    rs.each_with_index do |item, index|
      print " #{index+1})#{item}"
    end
    p
    response = gets.chomp  
    if rs[response.to_i-1] == q[2]#respuesta
      p 'Respuesta correcta'
      i += 1
      r = true
    else
      p 'Respuesta incorrecta'
      player.wrong
    end
  end
end
p "Hola #{player.name}, la cantidad de errores fue de: #{player.errors}, tu nivel es #{player.level}"
