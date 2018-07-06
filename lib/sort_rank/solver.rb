
module SortRank
  class Solver

    # AlgoService.new.parse
    def parse(args={})
      binding.pry
      string_block = args.fetch(:text, nil)
      title = args.fetch(:title, nil)

      if !string_block.present?
        wiki_hsh = generate_string_block
        string_block = wiki_hsh.fetch(:text)
        title = wiki_hsh.fetch(:title)
      end

      result_hsh = {title: title, ranked_words: count_strings(string_block), text: string_block }
      result_hsh
    end


    def count_strings(string)
      if string.present?
        array = string.split(/\W+/)
        array.map!(&:downcase)
        array.reject!{|el| el.length < 5 }

        string_count_hash = array.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
        word_rankings = string_count_hash.sort_by {|key, value| value}.reverse!
        ranked_words = word_rankings.to_h.map { |k,v| "#{k} (#{v})" }.join(',  ')
      end
    end


    def generate_string_block
      binding.pry
      page = Wikipedia.find('Austin, Texas')
      wiki_hsh = {title: page.title,  text: page.text }
      binding.pry
    end
    #
    # def generate_topic
    #   topics = ["Economy of the United States", "Nobel Prize in Literature", "Vegan Diet", "Healthy Living", "Austin, Texas", "San Antonio, Texas", "South Korea", "Automobile Dealerships", "Ruby Programming Language", "Cute Animals", "Africa", "Asia", "South America", "Hobbies", "Food", "Cooking", "Art", "Travel"]
    #   topic = topics.shuffle.sample
    # end



  end
end
