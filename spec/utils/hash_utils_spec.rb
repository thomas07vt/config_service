require_relative('../rspec_helper')

describe HashUtils do
  context 'hash_to_open_struct(data_hash)' do
    describe 'single level hash' do
      before :all do
        @one_level_hash= {
                      one: 'number one',
                      two: 'number two'
                    }
      end

      it 'creates an OpenStruct with all the hash keys and values' do
        open_struct = HashUtils.hash_to_open_struct(@one_level_hash)

        @one_level_hash.keys.each do |key|
          expect(open_struct.respond_to? key).to eql(true)
          expect(open_struct.send key).to eql(@one_level_hash[key])
        end
      end

      it 'allows hash-like access via string' do
        open_struct = HashUtils.hash_to_open_struct(@one_level_hash)
        expect(open_struct['one']).to eq('number one')
      end

      it 'allows hash-like access via symbol' do
        open_struct = HashUtils.hash_to_open_struct(@one_level_hash)
        expect(open_struct[:one]).to eq('number one')
      end

    end

    describe 'nested hash' do
      before :all do
        @nested_hash = {
                          one: { digit: 1, word: 'number one'},
                          two: { digit: 2, word: 'number two'},
                          three: 'number three'
                        }
      end

      it 'creates an OpenStruct with all the hash keys and values, deep down to all nested levels' do
        open_struct = HashUtils.hash_to_open_struct(@nested_hash)

        expect(open_struct.respond_to? :one).to eql(true)
        expect(open_struct.one.digit).to eql(1)
        expect(open_struct.one.word).to eql('number one')

        expect(open_struct.respond_to? :two).to eql(true)
        expect(open_struct.two.digit).to eql(2)
        expect(open_struct.two.word).to eql('number two')

        expect(open_struct.respond_to? :three).to eql(true)
        expect(open_struct.three).to eql('number three')

      end

    end

  end #'hash_to_open_struct(data_hash)'
end
