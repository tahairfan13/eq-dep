module ApplicationHelper

  def process_string_array2(arr)
    result = []
    previous = ""

    arr.each do |str|
      if str.include?("\n")
        result << "<p class='resume-text'>#{str}</p>"
        previous = ""
      elsif str.include?("•") || str.include?("o")
        if result.last && result.last.start_with?("<ol>")
          result.last << "<li class='resume-item'>#{str}</li>"
        else
          result << "<ol class='resume-list'><li class='resume-item'>#{str}</li></ol>"
        end
        previous = ""
      else
        if previous.empty?
          previous = str
        else
          previous += " " + str
        end
        if result.last && result.last.start_with?("<ol>")
          result.last = result.last.sub("</ol>", "</li><li class='resume-item'>#{previous}</li></ol>")
        elsif result.last && result.last.start_with?("<p>")
          result.last << " #{str}"
        else
          result << "<p class='resume-text'>#{previous}</p>"
        end
      end
    end

    result.join("").html_safe
  end


  def process_string_array(arr)
    result = []
    previous = ""

    arr.each do |str|
      str = str.gsub(/[^0-9a-ln-z ]/i, '')  # remove non-alphanumeric characters but keep spaces and 'o'
      if str.include?("\n")
        result << "<p class='resume-text'>#{str}</p>"
        previous = ""
      elsif str.include?("•") || str.include?("o")
        if result.last && result.last.start_with?("<ol>")
          result.last << "<li class='resume-item'>#{str}</li>"
        else
          result << "<ol class='resume-list'><li class='resume-item'>#{str}</li></ol>"
        end
        previous = ""
      else
        if previous.empty?
          previous = str
        else
          previous += " " + str
        end
        if result.last && result.last.start_with?("<ol>")
          result.last = result.last.sub("</ol>", "</li><li class='resume-item'>#{previous}</li></ol>")
        elsif result.last && result.last.start_with?("<p>")
          result.last << " #{str}"
        else
          result << "<p class='resume-text'>#{previous}</p>"
        end
      end
    end

    result.join("").html_safe
  end


  def remove_non_alphanumeric(str)
    str
  end

  def check_for_o str
    remove_non_alphanumeric(str)
  end
end
