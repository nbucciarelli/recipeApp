require 'digest'
class User < ActiveRecord::Base
  attr_accessor :password

  validates :username, :uniqueness => true,
                       :length => { :within => 1..20 },
                       :presence => true
  validates :email, :uniqueness => true,
                    :length => { :within => 5..50 },
                    :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
  validates :password, :confirmation => true,
                       :length => { :within => 4..20 },
                       :presence => true,
                       :if => :password_required?

  has_one :profile, :dependent => :nullify
  has_many :recipes, :order => 'published_at DESC, title ASC',
                      :dependent => :nullify
  has_many :replies, :through => :recipes, :source => :comments

  before_save :encrypt_new_password

  COUNTRIES = [['None'], ['United States'], ['United Kingdom'], ['Afghanistan'], ['Albania'], ['Algeria'], ['Andorra'], ['Angola'], ['Antigua & Deps'], ['Argentina'], ['Armenia'], ['Australia'], ['Austria'], ['Azerbaijan'], ['Bahamas'], ['Bahrain'], ['Bangladesh'], ['Barbados'], ['Belarus'], ['Belgium'], ['Belize'], ['Benin'], ['Bhutan'], ['Bolivia'], ['Bosnia Herzegovina'], ['Botswana'], ['Brazil'], ['Brunei'], ['Bulgaria'], ['Burkina'], ['Burundi'], ['Cambodia'], ['Cameroon'], ['Canada'], ['Cape Verde'], ['Central African Rep'], ['Chad'], ['Chile'], ['China'], ['Colombia'], ['Comoros'], ['Congo'], ['Congo {Democratic Rep}'], ['Costa Rica'], ['Croatia'], ['Cuba'], ['Cyprus'], ['Czech Republic'], ['Denmark'], ['Djibouti'], ['Dominica'], ['Dominican Republic'], ['East Timor'], ['Ecuador'], ['Egypt'], ['El Salvador'], ['Equatorial Guinea'], ['Eritrea'], ['Estonia'], ['Ethiopia'], ['Fiji'], ['Finland'], ['France'], ['Gabon'], ['Gambia'], ['Georgia'], ['Germany'], ['Ghana'], ['Greece'], ['Grenada'], ['Guatemala'], ['Guinea'], ['Guinea-Bissau'], ['Guyana'], ['Haiti'], ['Honduras'], ['Hungary'], ['Iceland'], ['India'], ['Indonesia'], ['Iran'], ['Iraq'], ['Ireland {Republic}'], ['Israel'], ['Italy'], ['Ivory Coast'], ['Jamaica'], ['Japan'], ['Jordan'], ['Kazakhstan'], ['Kenya'], ['Kiribati'], ['Korea North'], ['Korea South'], ['Kosovo'], ['Kuwait'], ['Kyrgyzstan'], ['Laos'], ['Latvia'], ['Lebanon'], ['Lesotho'], ['Liberia'], ['Libya'], ['Liechtenstein'], ['Lithuania'], ['Luxembourg'], ['Macedonia'], ['Madagascar'], ['Malawi'], ['Malaysia'], ['Maldives'], ['Mali'], ['Malta'], ['Marshall Islands'], ['Mauritania'], ['Mauritius'], ['Mexico'], ['Micronesia'], ['Moldova'], ['Monaco'], ['Mongolia'], ['Montenegro'], ['Morocco'], ['Mozambique'], ['Myanmar, {Burma}'], ['Namibia'], ['Nauru'], ['Nepal'], ['Netherlands'], ['New Zealand'], ['Nicaragua'], ['Niger'], ['Nigeria'], ['Norway'], ['Oman'], ['Pakistan'], ['Palau'], ['Panama'], ['Papua New Guinea'], ['Paraguay'], ['Peru'], ['Philippines'], ['Poland'], ['Portugal'], ['Qatar'], ['Romania'], ['Russian Federation'], ['Rwanda'], ['St Kitts & Nevis'], ['St Lucia'], ['Saint Vincent & the Grenadines'], ['Samoa'], ['San Marino'], ['Sao Tome & Principe'], ['Saudi Arabia'], ['Senegal'], ['Serbia'], ['Seychelles'], ['Sierra Leone'], ['Singapore'], ['Slovakia'], ['Slovenia'], ['Solomon Islands'], ['Somalia'], ['South Africa'], ['Spain'], ['Sri Lanka'], ['Sudan'], ['Suriname'], ['Swaziland'], ['Sweden'], ['Switzerland'], ['Syria'], ['Taiwan'], ['Tajikistan'], ['Tanzania'], ['Thailand'], ['Togo'], ['Tonga'], ['Trinidad & Tobago'], ['Tunisia'], ['Turkey'], ['Turkmenistan'], ['Tuvalu'], ['Uganda'], ['Ukraine'], ['United Arab Emirates'], ['Uruguay'], ['Uzbekistan'], ['Vanuatu'], ['Vatican City'], ['Venezuela'], ['Vietnam'], ['Yemen'], ['Zambia'], ['Zimbabwe']]

  def self.authenticate(email, password)
    user = find_by_email(email)
    return user if user && user.authenticated?(password)
  end

  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  protected
    def encrypt_new_password
      return if password.blank?
      self.hashed_password = encrypt(password)
    end

    def password_required?
      hashed_password.blank? || password.present?
    end

    def encrypt(string)
      Digest::SHA1.hexdigest(string)
    end
end
