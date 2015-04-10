class GenerateCatNameService < ArchService::ServiceObject
  def self.call
    cat_name = ""
    if (1..7).to_a.sample == 1
      cat_name += I18n.t('cat_names.prefixes').sample + " "
    end

    if (1..10).to_a.sample == 1
      cat_name += I18n.t('cat_names.double_names.part1').sample + I18n.t('cat_names.double_names.part2').sample
    else
      cat_name += I18n.t('cat_names.singular_names').sample
    end
  end
end