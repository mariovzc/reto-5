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

questions = Question.new

p questions.getQuestions