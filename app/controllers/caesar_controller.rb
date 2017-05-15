class CaesarController < ApplicationController
  def text
    @start_time = Time.now
  end

  def decrypt
    end_time = Time.now
    start_time = params[:start_time].to_datetime
    @elapsed_time = end_time - start_time
    text_to_decrypt = params['text-to-decrypt']
    caesar = CaesarService.new
    @decrypted_possibilities = caesar.decrypt_message(text_to_decrypt)
  end
end
