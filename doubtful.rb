module Doubtful

  PROMPTS = [
    'Are you sure',
    'Really',
  ]

  DENIALS = [
    'n',
    'no',
  ]

  def self.doubt_input(prompt, denials=DENIALS[0])
    denials << DENIALS[0] if denials.empty?
    print "#{prompt}? "
    denials.member?(gets.chomp[0].downcase)
  end

  def self.redoubt_input(*prompt)
    prompts << PROMPTS[0] if prompts.empty?
    prompts.cycle do |prompt| 
      return if doubt prompt
    end
  end
 
  def self.doubt_output(denial, &block)
    denial == yield
  end

  def self.redoubt_output
    raise NotImplementedError
  end

end
