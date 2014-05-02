require_relative '../ex43puzzles/battleships/battleships'
describe Battleships do
	describe 'a guess' do
		context 'when you hit a ship' do
			context 'and the ship is sunk' do
				context 'and that was the last ship' do
					it 'informs the player of their hit'
					it 'informs the player that they sank a ship'
					it 'informs the player of their win'
				end
				context 'and more ships remain' do
					it 'informs the player of their hit'
					it 'informs the player that they sank a ship'
					it 'asks for another guess'
				end
			end
			context 'when the ship is not sunk' do
				it 'informs the player of their hit'
				it 'asks for another guess'
			end
		end

		context 'when you miss all ships' do
			it 'informs the player of the miss'
			it 'asks for another guess'
		end

		context 'when it exceeds the guess limit' do
			it 'informs the player of their loss'
		end
	end
end
