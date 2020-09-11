class ToneFacade
  def self.get_tone(text)
    tone = ToneService.analyze(text)
    Tone.new(tone)
  end
end
