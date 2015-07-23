#!/bin/csh
#
# MGH environment setup for csh users
#
# @author: tokeefe
set path = ("/usr/sbin" $path)

## --- determine root directory of software release
if(! $?SCRIPT) set SCRIPT = `lsof -w -Fn -p $$ | sed -rn 's@n(.*mgh_setup.csh).*$@\1@p'`
if(! $?ROOT_DIR) set ROOT_DIR = `python -c "import os; print os.path.realpath('$SCRIPT/../../../')"`

## --- site specific software versions
if(! $?FREESURFER_DIR) set FREESURFER_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/freesurfer/4.0.2"
if(! $?FMRIB_DIR) set FMRIB_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/fsl/4.0.3"
if(! $?MATLAB_DIR) set MATLAB_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/matlab/7.4"
if(! $?SPM_DIR) set SPM_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/spm/2.0"
if(! $?SD_DIR) set SD_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/sd/1.5.1"
if(! $?_HVD_AFNI_DIR) set _HVD_AFNI_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/afni/2011_05_26_1457"
if(! $?_MRICRON_DIR) set _HVD_MRICRON_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/mricron/2009_12"
if(! $?_XJVIEW_DIR) set _HVD_XJVIEW_DIR = "$ROOT_DIR/apps/arch/linux_x86_64/xjview/8.4"

source "$ROOT_DIR/code/bin/generic_setup.csh"
