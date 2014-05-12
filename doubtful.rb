module Doubtful

  PROMPTS = [
    'Are you sure',
    'Really',
  ]

  def self.doubt(prompt)
    print "#{prompt}? "
    gets.chomp[0].downcase === 'n'
  end

  def self.redoubt(*prompts)
    prompts << PROMPTS[0] if prompts.empty?
    prompts.cycle do |prompt| 
      return if doubt prompt
    end
  end

end
