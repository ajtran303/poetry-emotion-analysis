class Tone
  attr_reader :tone
  def initialize(params)
    @tone = get_tone(params)
  end

  def get_tone(params)
    params[:document_tone][:tones].map do |tone|
      tone[:tone_name]
    end.join(", ")
  end
end
