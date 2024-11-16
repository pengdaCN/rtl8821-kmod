#!/bin/bash
sudo dnf install rpm-build rpmdevtools
rpmdev-setuptree
cp rtl8821ce-kmod.spec ~/rpmbuild/SPECS/
cp rename_to_rtl8821ce.patch  ~/rpmbuild/SOURCES/
cp rtw88_blacklist.conf  ~/rpmbuild/SOURCES/

pushd src
tar -czf rtl8821ce.tar.gz rtl8821ce
cp rtl8821ce.tar.gz ~/rpmbuild/SOURCES/
rm rtl8821ce.tar.gz
popd

rpmbuild -ba ~/rpmbuild/SPECS/rtl8821ce-kmod.spec