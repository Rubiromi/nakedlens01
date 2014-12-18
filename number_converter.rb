class NumberConverter
  def initialize
    @numbers = {
      'zero' => 0,
      'one' => 1,
      'two' => 2,
      'three' => 3,
      'four' => 4,
      'five' => 5,
      'six' => 6,
      'seven' => 7,
      'eight' => 8,
      'nine' => 9,
      'ten' => 10,
      'eleven' => 11,
      'twelve' => 12,
      'thirteen' => 13,
      'fourteen' => 14,
      'fifteen' => 15,
      'sixteen' => 16,
      'seventeen' => 17,
      'eighteen' => 18,
      'nineteen' => 19,
      'twenty' => 20,
      'thirty' => 30,
      'forty' => 40,
      'fifty' => 50,
      'sixty' => 60,
      'seventy' => 70,
      'eighty' => 80,
      'ninety' => 90,
      'hundred' => 100,
      'thousand' => 1000,
      'hundred thousand' => 100000,
      'million' => 1000000,
      'hundred million' => 100000000,
      'billion' => 1000000000,
      'hundred billion' => 100000000000,
      'trillion' => 1000000000000,
    }
  end

  def convert(num)
    res = 0
    number_groups = [
      'trillion',
      'hundred billion',
      'billion',
      'hundred million',
      'million',
      'hundred thousand',
      'thousand',
      'hundred',
    ]

    # Remove ands
    num.gsub!(' and', '')

    # Process all numbers greater than 100
    number_groups.each do |ng|
      res += calculate(num, ng)
      num = clean_number_string(num, ng)
    end

    # Process ones and tens
    unless num.nil?
      num = num.split
      num.each { |n| res += @numbers[n] } unless num.nil?
    end

    res
  end

  private
  def calculate(num, str)
    if num =~ /[\w]+ #{str}/
      pos = num.scan(/[\w\s]+ #{str}/)[0].split
      case pos.length
      when 2
        @numbers[pos[0]] * @numbers[pos[1]]
      when 3
        if str.split.length == 2
          @numbers[pos[0]] * @numbers["#{pos[1]} #{pos[2]}"]
        else
          sum = @numbers[pos[0]] + @numbers[pos[1]]
          sum * @numbers[pos[2]]
        end
      when 4
        sum = @numbers[pos[0]] + @numbers[pos[1]]
        sum * @numbers["#{pos[2]} #{pos[3]}"]
      end
    else
      0
    end
  end

  def clean_number_string(num, str)
    unless num.nil?
      num = num.split(/[\w\s]+ #{str}/).map(&:strip)
      num.delete('')
      num[0]
    else
      ''
    end
  end
end

nc = NumberConverter.new
numbers = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
  'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty',
  'twenty one', 'twenty two', 'twenty three', 'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight', 'twenty nine', 'thirty',
  'thirty one', 'thirty two', 'thirty three', 'thirty four', 'thirty five', 'thirty six', 'thirty seven', 'thirty eight', 'thirty nine', 'forty',
  'forty one', 'forty two', 'forty three', 'forty four', 'forty five', 'forty six', 'forty seven', 'forty eight', 'forty nine', 'fifty',
  'ninety one', 'ninety two', 'ninety nine', 'one hundred',
  'one hundred and one',
  'one thousand two hundred and seventeen',
  'seven hundred thousand five hundred and one',
  'five million three hundred thousand seven hundred and twelve',
  'thirty five thousand',
  'three billion five hundred million thirty five thousand eight hundred and six'
]

numbers.each { |num| puts nc.convert(num) }


