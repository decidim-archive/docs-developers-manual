#!/usr/bin/env bash

function pandoc_wrapper() {
  pandoc -t asciidoc -f markdown $1
}

function convert_md_to_asciidoc(){
  filename=$1
  module=$2

  if [ $module == 1 ] ; then
    pandoc_wrapper tmp/decidim/decidim-${filename}/README.md > en/modules/ROOT/pages/modules/official/${filename}.adoc
  else
    pandoc_wrapper tmp/decidim/docs/${filename}.md > en/modules/ROOT/pages/${filename}.adoc
  fi
}

if [ ! -d tmp/ ] ; then
  mkdir tmp
  git clone https://github.com/decidim/decidim tmp/decidim
  git clone https://github.com/diputacioBCN/decidim-diba/ tmp/mods/decidim-diba
  git clone https://github.com/castilla-lamancha/participa-castillalamancha/ tmp/mods/clm
  git clone https://github.com/podemos-info/participa2 tmp/mods/podemos
  git clone https://github.com/AjuntamentdeBarcelona/decidim-barcelona tmp/mods/barcelona
  git clone https://github.com/ElectricThings/decidim-members tmp/mods/members
  git clone https://github.com/PierreMesure/decidim-module-personal_number tmp/mods/personal_number
  git clone https://github.com/OpenSourcePolitics/decidim-polis tmp/mods/polis
  git clone https://github.com/OpenSourcePolitics/decidim-questions tmp/mods/questions
  git clone https://github.com/DinRiksdag/decidim-module-riksdagen tmp/mods/riksdagen
  git clone https://github.com/OpenSourcePolitics/decidim-user-export tmp/mods/user-export
fi

pandoc_wrapper tmp/decidim/README.md > en/modules/ROOT/pages/introduction.adoc

pandoc_wrapper tmp/decidim/README.md > en/modules/ROOT/pages/introduction.adoc

convert_md_to_asciidoc manual-installation 0
convert_md_to_asciidoc development_guide 0
convert_md_to_asciidoc checklist 0

convert_md_to_asciidoc customization/code 0
convert_md_to_asciidoc customization/authorizations 0
convert_md_to_asciidoc customization/gemfile 0
convert_md_to_asciidoc customization/images 0
convert_md_to_asciidoc customization/javascript 0
convert_md_to_asciidoc customization/oauth 0
convert_md_to_asciidoc customization/styles 0
convert_md_to_asciidoc customization/texts 0
convert_md_to_asciidoc customization/views 0

convert_md_to_asciidoc advanced/activity_log 0
convert_md_to_asciidoc advanced/add_authorizable_action 0
convert_md_to_asciidoc advanced/adding_fixtures_aka_dummy_content 0
convert_md_to_asciidoc advanced/components 0
convert_md_to_asciidoc advanced/content_blocks 0
convert_md_to_asciidoc advanced/content_processors 0
convert_md_to_asciidoc advanced/data-picker 0
convert_md_to_asciidoc advanced/deploy 0
convert_md_to_asciidoc advanced/followers 0
convert_md_to_asciidoc advanced/how_to_create_a_module 0
convert_md_to_asciidoc advanced/managing_translations_i18n 0
convert_md_to_asciidoc advanced/metrics 0
convert_md_to_asciidoc advanced/testing 0
convert_md_to_asciidoc advanced/tradeoffs 0
convert_md_to_asciidoc advanced/view_hooks 0
convert_md_to_asciidoc advanced/view_models_aka_cells 0

convert_md_to_asciidoc services/activejob 0
convert_md_to_asciidoc services/analytics 0
convert_md_to_asciidoc services/geocoding 0
convert_md_to_asciidoc services/social_providers 0

convert_md_to_asciidoc accountability 1
convert_md_to_asciidoc admin 1
convert_md_to_asciidoc api 1
convert_md_to_asciidoc assemblies 1
convert_md_to_asciidoc blogs 1
convert_md_to_asciidoc budgets 1
convert_md_to_asciidoc comments 1
convert_md_to_asciidoc conferences 1
convert_md_to_asciidoc consultations 1
convert_md_to_asciidoc core 1
convert_md_to_asciidoc debates 1
convert_md_to_asciidoc dev 1
convert_md_to_asciidoc generators 1
convert_md_to_asciidoc initiatives 1
convert_md_to_asciidoc meetings 1
convert_md_to_asciidoc pages 1
convert_md_to_asciidoc participatory_processes 1
convert_md_to_asciidoc proposals 1
convert_md_to_asciidoc sortitions 1
convert_md_to_asciidoc surveys 1
convert_md_to_asciidoc system 1
convert_md_to_asciidoc verifications 1

pandoc_wrapper tmp/mods/decidim-diba/decidim-age_action_authorization/README.md > en/modules/ROOT/pages/modules/community/age_action_authorization.adoc
pandoc_wrapper tmp/mods/decidim-diba/decidim-ldap/README.md > en/modules/ROOT/pages/modules/community/ldap.adoc
pandoc_wrapper tmp/mods/clm/decidim-calendar/README.md > en/modules/ROOT/pages/modules/community/calendar.adoc
pandoc_wrapper tmp/mods/clm/decidim-news/README.md > en/modules/ROOT/pages/modules/community/news.adoc
pandoc_wrapper tmp/mods/podemos/decidim-module-crowdfundings/README.md > en/modules/ROOT/pages/modules/community/crowdfundings.adoc
pandoc_wrapper tmp/mods/podemos/decidim-module-census_connector/README.md > en/modules/ROOT/pages/modules/community/census_connector.adoc
pandoc_wrapper tmp/mods/podemos/decidim-module-gravity_forms/README.md > en/modules/ROOT/pages/modules/community/gravity_forms.adoc
pandoc_wrapper tmp/mods/podemos/decidim-module-votings/README.md > en/modules/ROOT/pages/modules/community/votings.adoc
pandoc_wrapper tmp/mods/barcelona/decidim-dataviz/README.md > en/modules/ROOT/pages/modules/community/dataviz.adoc
pandoc_wrapper tmp/mods/members/README.md > en/modules/ROOT/pages/modules/community/members.adoc
pandoc_wrapper tmp/mods/personal_number/README.md > en/modules/ROOT/pages/modules/community/personal_number.adoc
pandoc_wrapper tmp/mods/polis/README.md > en/modules/ROOT/pages/modules/community/polis.adoc
pandoc_wrapper tmp/mods/questions/README.md > en/modules/ROOT/pages/modules/community/questions.adoc
pandoc_wrapper tmp/mods/riksdagen/README.md > en/modules/ROOT/pages/modules/community/riksdagen.adoc
pandoc_wrapper tmp/mods/user-export/README.md > en/modules/ROOT/pages/modules/community/user_export.adoc
