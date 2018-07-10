# rspec spec/sort_rank/solver_spec.rb

require 'spec_helper'

describe 'Solver' do
  let(:solver_obj) { SortRank::Solver.new }
  # before { solver_obj.inst = inst }

  describe '#parse' do
    let(:args) do
      { text: "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies." }
    end

    let(:result_hash) do
      { results:   { 'the' => 7,
                     'austin' => 5,
                     'of' => 5,
                     'is' => 4,
                     'and' => 4,
                     'as' => 3,
                     'music' => 2,
                     'to' => 2,
                     'technology' => 2,
                     'capital' => 2,
                     'texas' => 2,
                     'in' => 2,
                     'state' => 2,
                     'keep' => 1,
                     'read' => 1,
                     'that' => 1,
                     'stickers' => 1,
                     'bumper' => 1,
                     'shirts' => 1,
                     'on' => 1,
                     'town' => 1,
                     'about' => 1,
                     'emblazoned' => 1,
                     'commonly' => 1,
                     'cultures' => 1,
                     'alternative' => 1,
                     'embrace' => 1,
                     'scene' => 1,
                     'food' => 1,
                     'increasingly' => 1,
                     'film' => 1,
                     'politics' => 1,
                     'for' => 1,
                     'center' => 1,
                     'influential' => 1,
                     'an' => 1,
                     'well' => 1,
                     'university' => 1,
                     'major' => 1,
                     'home' => 1,
                     'it' => 1,
                     'central' => 1,
                     'country' => 1,
                     'hill' => 1,
                     '000' => 1,
                     '912' => 1,
                     'over' => 1,
                     'city' => 1,
                     'capitol' => 1,
                     'many' => 1,
                     'reflecting' => 1,
                     'hills' => 1,
                     'silicon' => 1,
                     'venues' => 1,
                     'number' => 1,
                     'large' => 1,
                     'due' => 1,
                     'world' => 1,
                     'live' => 1,
                     'marketed' => 1,
                     'also' => 1,
                     'weird' => 1,
                     'companies' => 1 },
        text:   "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies." }
    end

    it 'parse' do
      expect(solver_obj.parse(args)).to eql(result_hash)
    end
  end

  describe '#count_strings' do
    let(:string) do
      "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies."
    end

    let(:results) do
      { 'the' => 7,
        'austin' => 5,
        'of' => 5,
        'is' => 4,
        'and' => 4,
        'as' => 3,
        'music' => 2,
        'to' => 2,
        'technology' => 2,
        'capital' => 2,
        'texas' => 2,
        'in' => 2,
        'state' => 2,
        'keep' => 1,
        'read' => 1,
        'that' => 1,
        'stickers' => 1,
        'bumper' => 1,
        'shirts' => 1,
        'on' => 1,
        'town' => 1,
        'about' => 1,
        'emblazoned' => 1,
        'commonly' => 1,
        'cultures' => 1,
        'alternative' => 1,
        'embrace' => 1,
        'scene' => 1,
        'food' => 1,
        'increasingly' => 1,
        'film' => 1,
        'politics' => 1,
        'for' => 1,
        'center' => 1,
        'influential' => 1,
        'an' => 1,
        'well' => 1,
        'university' => 1,
        'major' => 1,
        'home' => 1,
        'it' => 1,
        'central' => 1,
        'country' => 1,
        'hill' => 1,
        '000' => 1,
        '912' => 1,
        'over' => 1,
        'city' => 1,
        'capitol' => 1,
        'many' => 1,
        'reflecting' => 1,
        'hills' => 1,
        'silicon' => 1,
        'venues' => 1,
        'number' => 1,
        'large' => 1,
        'due' => 1,
        'world' => 1,
        'live' => 1,
        'marketed' => 1,
        'also' => 1,
        'weird' => 1,
        'companies' => 1 }
    end

    it 'count_strings' do
      expect(solver_obj.count_strings(string)).to eql(results)
    end
  end
end
