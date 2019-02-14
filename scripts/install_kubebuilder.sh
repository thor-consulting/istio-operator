#!/usr/bin/env bash

version=1.0.8 # latest stable version
arch=amd64
opsys=$(echo "$(uname -s)" | awk '{print tolower($0)}')

# download the release
curl -L -O "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v${version}/kubebuilder_${version}_${opsys}_${arch}.tar.gz"

# extract the archive
tar -zxvf kubebuilder_${version}_${opsys}_${arch}.tar.gz
mv kubebuilder_${version}_${opsys}_${arch} kubebuilder && sudo mv kubebuilder /usr/local/

# delete tar file
rm kubebuilder_${version}_${opsys}_${arch}.tar.gz

# update your PATH to include /usr/local/kubebuilder/bin
export PATH=$PATH:/usr/local/kubebuilder/bin