class Game
  require_relative "node"
  require_relative "end_node"
  @root_node = Node.new(self)
  @root_node.set_question("O prato que você Pensou é massa? (digite s para sim e n para não")
  @yes_node = EndNode.new(@root_node)
  @yes_node.set_food("Lasanha")
  @no_node = EndNode.new(@root_node)
  @no_node.set_food("Bolo de Chocolate")
  @root_node.set_yes(@yes_node)
  @root_node.set_no(@no_node)
  def start
    puts "Pense em um prato que gosta (digite ok para continuar)"
    ok = gets.chomp
    @root_node.quest
  end
  self.start
end