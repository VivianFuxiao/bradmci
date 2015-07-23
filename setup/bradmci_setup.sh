#!/bin/bash

alias nrgreload="\`cleanpath -E /cluster/nrg -E /cluster/vc -E freesurfer -E fsl -E java -E python -E matlab -E afni -E spm -E php -E xjview -E dcmtk -E mricron\` && . \"$BASH_ARGV\" && \`cleanpath -C\`"

## --- variables used to restore original login environment
export _HVD_ORG_ENV=${_HVD_ORG_ENV:=`env | grep -v "_HVD_" | sed "s@^\(\w\+\)=\(.*\)@export \1='\2'@p";`}
export _HVD_ORG_NAMES=${_HVD_ORG_NAMES:=`set | grep -v "_HVD_" | sed "s@^\(\w\+\)=\(.*\)@\1@p"`}

## --- export some useful environment variables
export HVD_ROOT_DIR="/cluster/nrg/tools/current" #Martinos addition
export ROOT_DIR="$_HVD_ROOT_DIR" 	#legacy
export CODE_DIR="$_HVD_ROOT_DIR/code" 	#legacy
export LIB_DIR="$CODE_DIR/lib"		#legacy
export _HVD_ROOT_DIR
export _HVD_CODE_DIR="$_HVD_ROOT_DIR/code"
export _HVD_LIB_DIR="$_HVD_CODE_DIR/lib"
export _HVD_BIN_DIR="$_HVD_CODE_DIR/bin"
export _HVD_APPS_DIR="$_HVD_ROOT_DIR/apps"
export _HVD_TEMPLATES_DIR="$_HVD_CODE_DIR/templates"
export _HVD_TARGETS_DIR="$_HVD_CODE_DIR/targets"
export _HVD_MASKS_DIR="$_HVD_CODE_DIR/masks"
export _HVD_PIPELINES_DIR="$_HVD_CODE_DIR/nrgtools/pipelines"

## --- source package loader
export PATH=$_HVD_BIN_DIR/.package_loaders:$PATH

## --- setup libraries
export PERL5LIB="$_HVD_LIB_DIR/perl:$PERL5LIB"
_HVD_PERL_LIB="$_HVD_LIB_DIR/perl/Common"
_HVD_SHELL_LIB="$_HVD_CODE_DIR/lib/shell"

## --- build platform string
export _HVD_PLATFORM="$(echo $(uname)_$(uname -p) | tr '[:upper:]' '[:lower:]')"

## --- set C library directory
_HVD_C_LIB="$_HVD_LIB_DIR/c/$_HVD_PLATFORM"
export PATH=$_HVD_C_LIB:$PATH

## --- set platform-specific binaries directory
_HVD_PLATFORM_BIN_DIR="$_HVD_BIN_DIR/$_HVD_PLATFORM"

## --- load software packages
shopt -s expand_aliases
. load_afni $_HVD_AFNI_VER
. load_java $_HVD_JAVA_VER
. load_python $_HVD_PYTHON_VER
. load_nit $_HVD_NIT_VER
. load_sd $_HVD_SD_VER
. load_mricron $_HVD_MRICRON_VER
. load_caret $_HVD_CARET_VER
. load_xjview $_HVD_XJVIEW_VER
. load_dcmtk $_HVD_DCMTK_VER
. load_matlab $_HVD_MATLAB_VER
. load_spm $_HVD_SPM_VER
. load_fsl $_HVD_FSL_VER
. load_freesurfer $_HVD_FREESURFER_VER
. load_php $_HVD_PHP_VER
. load_mongodb $_HVD_MONGODB_VER
. load_apps $_HVD_APPS_VER

## --- post-package load exports
export SPM_DIR=$_HVD_SPM_DIR		#legacy
export _HVD_SPM_DIR
export _HVD_SD_DIR
export _HVD_XJVIEW_DIR
export _HVD_MATLAB_DIR

## --- note: putting FSL/bin back in front of FreeSurfer =< 5.0.0
export PATH=$_HVD_BIN_DIR:$_HVD_PLATFORM_BIN_DIR:$_HVD_PERL_LIB:$_HVD_SHELL_LIB:$_HVD_FSL_DIR/bin:$PATH
