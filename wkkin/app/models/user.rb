# == Schema Information
#
# Table name: users
#
#  id                     :integer(4)      not null, primary key
#  inscription            :date
#  username               :string(255)
#  vousetes               :integer(4)
#  region                 :integer(4)
#  ville                  :integer(4)
#  pays                   :integer(4)
#  orientation_sexuelle   :integer(4)
#  zodiac                 :integer(4)
#  silhouette             :integer(4)
#  yeux                   :integer(4)
#  ethnie                 :integer(4)
#  mobilites              :integer(4)
#  disponibilite          :integer(4)
#  bio                    :text
#  libertinages           :integer(8)
#  recherches             :integer(4)
#  relation_recherchee    :integer(4)
#  charte_validee         :boolean(1)
#  roles                  :integer(4)
#  date_naissance         :date
#  date_naissance2        :date
#  zodiac2                :integer(4)
#  silhouette2            :integer(4)
#  ethnie2                :integer(4)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer(4)      default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer(4)
#  avatar_updated_at      :datetime
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates :username, :email, :presence => true, :uniqueness => true

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :format => { :with => email_regex }

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :avatar, :email, :password, :password_confirmation, :remember_me, :vousetes, :region, :ville,:pays, :orientation_sexuelle, :zodiac, :silhouette, :ethnie, :mobilites, :disponibilite, :bio, :libertinages, :recherches, :relation_recherchee, :charte_validee, :roles, :date_naissance, :date_naissance2, :zodiac2, :silhouette2, :ethnie2
  attr_accessible :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at

  validates :email, :presence => true, :uniqueness => true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :small => "150x150>", :thumb => "100x100>" },
                    :url => "/system/:hash.:extension",
                    :hash_secret => "longSecretString"
  validates_attachment_size :avatar, :less_than => 1.megabyte
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']


  bitmask :roles, :as => [:invite, :membre, :vip, :admin, :tribuleader, :organisateur]
    bitmask :vousetes, :as => [:homme, :femme, :couplehetero, :coupletransetfemme, :coupletransethomme, :travesti, :trans, :couplehomme, :couplefemme]
    bitmask :orientation_sexuelle, :as => [:heterosexuelle, :bicurieux, :bisexuelle, :homosexuelle, :coupledontfemmebi, :coupldonthommebi]
    bitmask :zodiac, :as => [:belier, :taureaux, :gemaux, :cancer, :lion, :vierge, :balance, :scorpion, :sagittaire, :capricorne, :verseau, :poisson]
    bitmask :zodiac2, :as => [:belier, :taureaux, :gemaux, :cancer, :lion, :vierge, :balance, :scorpion, :sagittaire, :capricorne, :verseau, :poisson]
    bitmask :silhouette, :as => [:mince, :normale, :sportive, :genereuse, :ronde]
    bitmask :silhouette2, :as => [:mince, :normale, :sportive, :genereuse, :ronde]
    bitmask :ethnie, :as => [:europeenne, :antillaise, :metisse,:magrebine,:africaine,:asiatique,:hispanique,:indienne,:arabe]
    bitmask :ethnie2, :as => [:europeenne, :antillaise, :metisse,:magrebine,:africaine,:asiatique,:hispanique,:indienne,:arabe]
    bitmask :mobilites, :as => [:sedeplacer, :recevoir, :auclub, :touslieux, :virtuel]
    bitmask :libertinages, :as => [:analinctus, :ejaculation_feminine, :jeuxeau, :double_penetration, :jeuxecoliere, :sexualite_groupe_orgie, :gang_bang, :language_vulgaire, :soumis, :echangisme, :transsexuelle, :fetichisme_lingerie, :phone_sexe, :esclave, :melangisme, :bondage, :humiliation, :fet_latex_cuir, :sado_maso, :jeux_cire, :cuckolding, :scato, :masturbation, :cunnilingus, :sodomiser, :voyeurisme, :facial, :talons_hauts, :gode_ceinture, :lieux_publics, :lieux_insolites, :domination_soumission, :jeux_roles, :etre_dominant, :etre_sodomise, :etre_photographie_filme, :urophilie, :fisting, :facesitting, :bukkake, :piercing, :fet_pied, :jeux_colporteur, :fet_smoking, :abdl_couch_culotte, :femme_mature, :erotisme, :femme_ronde, :exhib, :jeux_infirmiere, :kamasutra, :cumshot, :viol_simule, :fessee, :interracial, :travesti, :collier_laisse, :maitre, :lactation_erotique, :homme_mature, :tantrisme, :candaulisme, :agoraphilie]
    bitmask :disponibilite, :as => [:matinee, :midi, :apresmidi, :soiree, :nuit, :weekend, :libre]
    bitmask :recherches, :as => [:couple, :couple_femme_bi, :couple_homme_bi, :couple_lesdeuxbi]
    bitmask :relation_recherchee, :as => [:aventure_d_un_soir, :relation_durable, :amitie_coquine]
    bitmask :pays, :as => [:france, :belgique, :luxembourg, :suisse, :quebec]
    bitmask :region, :as => [:paris, :idf, :sud, :ouest, :nord, :est]

  def liber_display str
    d = "libertinages.".concat(str)
    t(d)
  end

  def encouple
    self.vousetes?(:couplehetero) || self.vousetes?(:coupletransetfemme) || self.vousetes?(:coupletransethomme) || self.vousetes?(:couplehomme) || self.vousetes?(:couplefemme)
  end




end
