include_recipe 'chocolatey::default'

chocolatey_package 'GoogleChrome' do
  options '--ignorechecksum'
end
chocolatey_package 'VisualStudioCode'

chocolatey_package 'git'

chocolatey_package 'Habitat'