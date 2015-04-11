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
    
    def publish_front_page # To print all the posts
        self.archive.each {|i|
            puts "#{i.print_title} (#{i.time})"
            puts "***************"
            puts i.text
            puts "----------------"
        }
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
            puts "*****#{self.title}*****"
        else
            puts "#{self.title}"
        end
    end
    
end