#!/bin/bash
#
# Environment setup for bash
#
# :author: tokeefe
# :date: 2011.11.30

## --- determine the root directory of this deployment
_HVD_ENV_SCRIPT=${_HVD_ENV_SCRIPT:="$BASH_ARGV"}
_HVD_ROOT_DIR=${_HVD_ROOT_DIR:=`python -c "import os; print os.path.abspath('/cluster/nrg/tools/current/')"`}

_HVD_FREESURFER_VER=${_HVD_FREESURFER_VER:="5.3.0"}
_HVD_FSL_VER=${_HVD_FSL_VER:="5.0.1"}
_HVD_MATLAB_VER=${_HVD_MATLAB_VER:="7.4"}
_HVD_SPM_VER=${_HVD_SPM_VER:="2.0"}
_HVD_SD_VER=${_HVD_SD_VER:="1.5.1"}
_HVD_AFNI_VER=${_HVD_AFNI_VER:="2012_08_29_2057"}
_HVD_MRICRON_VER=${_HVD_MRICRON_VER:="2009_12"}
_HVD_XJVIEW_VER=${_HVD_XJVIEW_VER:="8.4"}
_HVD_JAVA_VER=${_HVD_JAVA_VER:="1.6.0_24"}
_HVD_PYTHON_VER=${_HVD_PYTHON_VER:="2.7.3"}
_HVD_NIT_VER=${_HVD_NIT_VER:="1.5.2"}
_HVD_DCMTK_VER=${_HVD_DCMTK_VER:="3.6"}
_HVD_CARET_VER=${_HVD_CARET_VER:="5.0"}
_HVD_PHP_VER=${_HVD_PHP_VER:="5.4.3"}
_HVD_MONGODB_VER=${_HVD_MONGODB_VER:="2.2.0"}
_HVD_APPS_VER=${_HVD_APPS_VER:="1.0"}

. /autofs/cluster/animal/users/stepanov/scripts/NRG-fc/bradmci_setup.sh
