class WordCloudWord < ActiveRecord::Base
  attr_accessible :count, :word_text
  # def user_params
  #   params.require(:user).permit(:name, :password_digest, :password, :password_confirmation)
  # end

end
