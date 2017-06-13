FactoryGirl.define do

  factory :note do
    title "Nota 1"
    content  "Contenido Nota 1"

    factory :no_title do
      title nil
    end

    factory :no_content do
      content nil
    end

  end

end