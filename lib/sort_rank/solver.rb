
module SortRank
  class Solver

    # AlgoService.new.parse
    def parse(args={})
      string_block = args.fetch(:text, nil)
      string_block = sample_string_block if !string_block.present?
      result_hash = {results: count_strings(string_block), text: string_block }
    end

    def count_strings(string)
      if string.present?
        array = string.split(/\W+/)
        array.map!(&:downcase)
        array.reject!{|el| el.length < 2 }

        string_count_hash = array.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
        word_rankings = string_count_hash.sort_by {|key, value| value}.reverse!
        # results = word_rankings.to_h.map { |k,v| "#{k} (#{v})" }.join(',  ')
        results = word_rankings.to_h
      end
    end

    def sample_string_block
      "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies."
    end

  end
end
