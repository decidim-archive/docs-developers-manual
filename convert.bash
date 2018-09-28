#!/usr/bin/env bash

function convert_md_to_asciidoc(){
    filename=$1
    pandoc -t asciidoc -f markdown tmp/docs/${filename}.md > en/modules/ROOT/pages/${filename}.adoc
}

if [ ! -d tmp/ ] ; then
    mkdir tmp
    git clone https://github.com/decidim/decidim tmp/
fi

pandoc -t asciidoc -f markdown tmp/README.md > en/modules/ROOT/pages/introduction.adoc

convert_md_to_asciidoc manual-installation
convert_md_to_asciidoc development_guide
convert_md_to_asciidoc checklist

convert_md_to_asciidoc customization/code
convert_md_to_asciidoc customization/authorizations
convert_md_to_asciidoc customization/gemfile
convert_md_to_asciidoc customization/images
convert_md_to_asciidoc customization/javascript
convert_md_to_asciidoc customization/oauth
convert_md_to_asciidoc customization/styles
convert_md_to_asciidoc customization/texts
convert_md_to_asciidoc customization/views

convert_md_to_asciidoc advanced/activity_log
convert_md_to_asciidoc advanced/add_authorizable_action
convert_md_to_asciidoc advanced/adding_fixtures_aka_dummy_content
convert_md_to_asciidoc advanced/components
convert_md_to_asciidoc advanced/content_blocks
convert_md_to_asciidoc advanced/content_processors
convert_md_to_asciidoc advanced/data-picker
convert_md_to_asciidoc advanced/deploy
convert_md_to_asciidoc advanced/followers
convert_md_to_asciidoc advanced/how_to_create_a_module
convert_md_to_asciidoc advanced/managing_translations_i18n
convert_md_to_asciidoc advanced/metrics
convert_md_to_asciidoc advanced/testing
convert_md_to_asciidoc advanced/tradeoffs
convert_md_to_asciidoc advanced/view_hooks
convert_md_to_asciidoc advanced/view_models_aka_cells

convert_md_to_asciidoc services/activejob
convert_md_to_asciidoc services/analytics
convert_md_to_asciidoc services/geocoding
convert_md_to_asciidoc services/social_providers

