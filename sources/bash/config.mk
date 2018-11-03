
PROJECT_SOURCE_DIR = $(PACKAGE_PREFIX)/source
PROJECT_OUTPUT_DIR = $(PACKAGE_PREFIX)/build

PROJECT_SCRIPT_INTERPRETER = /bin/bash

PROJECT_PROGRAM_DIR = $(PROJECT_OUTPUT_DIR)
PROJECT_OUTPUT_DIRECTORIES = $(PROJECT_OUTPUT_DIR)

PROJECT_AUX_DIRS != echo $(PROJECT_SOURCE_DIR)/{environment.d,functions.d,shortcuts.d}

PROJECT_AUX_SCRIPTS != find $(PROJECT_AUX_DIRS) -maxdepth 1 -type f -name '*.sh'

PROJECT_AUX_SCRIPT = $(PROJECT_OUTPUT_DIR)/xd.o

PROJECT_AUTO_SCRIPTS = $(addprefix $(PROJECT_OUTPUT_DIR)/,options.sh functions.sh)

PROJECT_LIBRARIES_DIR = $(PROJECT_SOURCE_DIR)/libraries.d

PROJECT_LIBRARY_SCRIPTS != find $(PROJECT_SOURCE_DIR)/libraries.d -maxdepth 1 -type f -name '*.sh'

PROJECT_MAIN_SCRIPT = $(PROJECT_SOURCE_DIR)/main.sh

PROJECT_PROGRAM_NAME = xd

PROJECT_PROGRAM = $(PROJECT_PROGRAM_DIR)/$(PROJECT_PROGRAM_NAME)
