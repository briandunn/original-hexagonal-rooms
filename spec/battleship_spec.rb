require_relative '../ex43puzzles/battleships/battleships'
describe Battleships do
	stubbard_in = Class.new do
		def gets
			on_gets
		end

		def on_gets
			yield
		end
	end.new
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
		it 'informs the player of their loss' do
			stdout = StringIO.new
			stubbard_in.on_gets do
				"a2\n"
			end
			stubbard_in.on_gets do
				require 'pry'; binding.pry;
				"a3\n"
			end
			game = described_class.new(stubbard_in, stdout)
			begin
				game.play
			rescue
				puts stdout.tap(&:rewind).read
				raise
			end
		end
	end
end
