class Question
  attr_reader :data
  def initialize
    @data = []
  end
  def getQuestions
    d = seed.shuffle!
    @data = d[0..4]
  end
  private
  def seed
    data = []
    File.open('questions.txt') do |fp|
      arr = []
      fp.each do |line|
        arr << line.chomp.split(",")
      end
      arr.each do |a|
        hash = {}    
        hash['questions'] = a[0]
        hash['answers'] = a[1].split(" ")
        hash['correct'] = a[2]
        data << hash
      end
    end
  end
end