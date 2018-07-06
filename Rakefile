require "bundler/gem_tasks"
require "rspec/core/rake_task"

require 'sort_rank'
# require 'webs_criteria'


RSpec::Core::RakeTask.new(:spec)

task :default => :spec
task :test => :spec

###################
task :console do
  require 'irb'
  require 'irb/completion'
  require 'sort_rank'
  require "active_support/all"
  ARGV.clear

  result_hash = run_sort_rank

  IRB.start
end


def run_sort_rank
  # args = {text: "Can a rat eat tar? How big is the arc of that car door? Could you pass me the book just below your elbow? Does your state have a coffee taste test?" }

  args = { text: "The state capitol in Austin, Texas Austin is a city of over 912,000 in the Hill Country of central Texas. It is the state capital and home to a major university as well as an influential center for politics, technology, music, film and increasingly a food scene. Austin's embrace of alternative cultures is commonly emblazoned about town on T-Shirts and bumper stickers that read: 'Keep Austin Weird.' Austin is also marketed as the 'Live Music Capital of the World' due to the large number of venues and 'Silicon Hills' reflecting the many technology companies." }

  result_hash = SortRank.parse(args)

  # scraper = LinkScraper::Scrape.new({text_criteria: text_criteria, path_criteria: path_criteria})
  # scraped_links = scraper.start('https://en.wikipedia.org/wiki/Austin%2C_Texas')
  # binding.pry

  # scraper = LinkScraper::Scrape.new(WebsCriteria.all_scrub_web_criteria)
end
