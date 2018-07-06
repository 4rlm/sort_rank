require "sort_rank/version"

require "sort_rank/solver"
# require 'mechanizer'
# require 'scrub_db'
require 'pry'

module SortRank

  def self.parse(args={})
    result_hash = self::Solver.new.parse(args)
  end

end
