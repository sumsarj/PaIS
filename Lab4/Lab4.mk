##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Lab4
ConfigurationName      :=Debug
WorkspacePath          := "F:\Dokument\GitHub\PaIS"
ProjectPath            := "F:\Dokument\GitHub\PaIS\Lab4"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Rasmus
Date                   :=05/11/15
CodeLitePath           :="F:\Program\CodeLite"
LinkerName             :=gcc
SharedObjectLinkerName :=gcc -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="Lab4.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := gcc
CC       := gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=F:\Program\CodeLite
UNIT_TEST_PP_SRC_DIR:=F:\UnitTest++-1.3
Objects0=$(IntermediateDirectory)/qtest$(ObjectSuffix) $(IntermediateDirectory)/queue$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/qtest$(ObjectSuffix): qtest.c $(IntermediateDirectory)/qtest$(DependSuffix)
	$(CC) $(SourceSwitch) "F:/Dokument/GitHub/PaIS/Lab4/qtest.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/qtest$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/qtest$(DependSuffix): qtest.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/qtest$(ObjectSuffix) -MF$(IntermediateDirectory)/qtest$(DependSuffix) -MM "qtest.c"

$(IntermediateDirectory)/qtest$(PreprocessSuffix): qtest.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/qtest$(PreprocessSuffix) "qtest.c"

$(IntermediateDirectory)/queue$(ObjectSuffix): queue.c $(IntermediateDirectory)/queue$(DependSuffix)
	$(CC) $(SourceSwitch) "F:/Dokument/GitHub/PaIS/Lab4/queue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/queue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/queue$(DependSuffix): queue.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/queue$(ObjectSuffix) -MF$(IntermediateDirectory)/queue$(DependSuffix) -MM "queue.c"

$(IntermediateDirectory)/queue$(PreprocessSuffix): queue.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/queue$(PreprocessSuffix) "queue.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/qtest$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/qtest$(DependSuffix)
	$(RM) $(IntermediateDirectory)/qtest$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/queue$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/queue$(DependSuffix)
	$(RM) $(IntermediateDirectory)/queue$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile).exe
	$(RM) "../.build-debug/Lab4"


