name "graylog2-web"
default_version project.build_version

dependency "server-jre"
dependency "runit"

source url: "http://packages.graylog2.org/releases/graylog2-web-interface/graylog2-web-interface-#{version}.tgz",
       md5: "811138fe8b7b2bd061e865a4775d9951"

relative_path "graylog2-web-interface-#{version}"

build do
  mkdir "#{install_dir}/web"
  sync  "#{project_dir}/", "#{install_dir}/web"
end
