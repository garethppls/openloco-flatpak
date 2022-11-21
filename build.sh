#!/bin/bash
# flatpak install -y flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08 org.freedesktop.Sdk.Compat.i386//22.08 org.freedesktop.Sdk.Extension.toolchain-i386//22.08 org.flatpak.Builder
flatpak run org.flatpak.Builder --repo=repo build io.openloco.OpenLoco.yml