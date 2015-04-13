# Week 1 - Exercise 1
## The online blog
```ruby
require 'pry'
require 'colorize'

class Blog
    attr_accessor :title ,:author, :archive
    def initialize title, author
        @title = title
        @author = author
        @archive = [] # Where all the posts are stored
    end
    
    def push newpost # To add new posts
        self.archive.push newpost
    end
    
    def navigation_bar(j) # To highlight the current page
        if j == @active_page
            print " >#{j}< ".colorize(:green)
        else
            print "  #{j}   "
        end
    end
    
    
    def navigate # To move to a new page:
        puts "\na = left  d = right"
        choice = gets.chomp
        case choice
        when "a"
            publish_front_page(@active_page.pred)
        when "d"
            publish_front_page(@active_page.next)
        else
            puts "\n"
        end
    end
    
    
    def publish_front_page(p = 1)# To print all the posts
        .clear #OPTIONAL to clear the screen (needs pry)
        @n_pages = (archive.length.to_f / 3).ceil
        @active_page = p
        
        self.archive.slice(p*3-3,3).each {|i|
            puts "#{i.print_title} (#{i.time})"
            puts "***************"
            puts i.text
            puts "----------------"
        }
        #Navigation bar and navigation options
        (1..@n_pages).to_a.each {|x| navigation_bar(x)}
        navigate
    end
end

class Post
    attr_accessor :title , :time, :text , :sponsored
    def initialize title, text, sponsored = false #By default, posts are not sponsored
        @title = title
        @time = Time.now # Posting time is added automatically
        @text = text
        @sponsored = sponsored
    end
    
    def print_title # Method to highlight sponsored posts
        if self.sponsored
            puts "*****#{self.title}*****".colorize(:blue)
        else
            puts "#{self.title}"
        end
    end
    
end
```
