# Write your code here.
def line(katz_deli)
    if katz_deli.empty?
      puts "The line is currently empty."
    else
      line_status = "The line is currently:"
      katz_deli.each.with_index(1) do |customer, index|
        line_status += " #{index}. #{customer}"
      end
      puts line_status
    end
  end
  
  def take_a_number(katz_deli, customer)
    katz_deli << customer
    position = katz_deli.length
    puts "Welcome, #{customer}. You are number #{position} in line."
  end
  
  def now_serving(katz_deli)
    if katz_deli.empty?
      puts "There is nobody waiting to be served!"
    else
      served_customer = katz_deli.shift
      puts "Currently serving #{served_customer}."
    end
  end
  
  katz_deli = []

take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Kent")

line(katz_deli)

now_serving(katz_deli)

line(katz_deli)

take_a_number(katz_deli, "Matz")

line(katz_deli)

now_serving(katz_deli)

line(katz_deli)
