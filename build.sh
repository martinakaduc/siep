#!/bin/bash
cd boostgraphql && rm -rf objs && mkdir objs && make
cd ../BoostISO && rm -rf objs && mkdir objs && make
cd ../boostquicksi && rm -rf objs && mkdir objs && make
cd ../CECI && rm -rf objs && mkdir objs && make
cd ../CECI-boost && rm -rf objs && mkdir objs && make
cd ../cfl-boost && rm -rf objs && mkdir objs && make
cd ../cfl-match && rm -rf objs && mkdir objs && make
cd ../DAF && rm -rf objs && mkdir objs && make
cd ../DAF-boost && rm -rf objs && mkdir objs && make
cd ../graphql && rm -rf objs && mkdir objs && make
cd ../quicksi && rm -rf objs && mkdir objs && make
cd ../TurboISO && rm -rf objs && mkdir objs && make
cd ../VF3 && rm -rf objs && mkdir objs && make
cd ../VF3-boost && rm -rf objs && mkdir objs && make