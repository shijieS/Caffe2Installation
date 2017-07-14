# intall caffe2
## Step by Step [^Caffe2Tuturial] [^Caffe2C]
- "required-dependencies.sh": install the dependencies 
- "optional-dependencies.sh": install the optional dependencies
- "update-graphic-card.sh": update the graphic card drivers
- restart computer
- "install-cuDNN.sh": install the cuDNN
- "cloneAndBuild.sh": clone caffe2 from github and make install
- "testGPUBuild.sh": test the install process
- "addCaffe2Env.sh": add the environment path to system
- type "source /etc/profile"
## Install Error
- The first thing you should do is checking the tag of your current HEAD, and make sure it must be at the release tag
- I solved the "__ldg is not defined" error by [^error1]
- if you Cannot find the valiable GPU, update your gpu card drivers and restart computer

## Install By One Step
- run "installAndMake.sh" 
- after that type "source /etc/profile"

## Debug Caffe2
using Eclipse Nsight to Debug caffe2, see [^DebugCaffe]

[^DebugCaffe]: [Build and Debug Caffe in Eclipse Nsight](http://www.pittnuts.com/2015/06/build-and-debug-caffe-in-nsight/)
[^Caffe2Tuturial]: [Caffe Official Tuturial](https://caffe2.ai/docs/getting-started.html)
[^Caffe2C]: [Caffe2 安装教程](http://blog.csdn.net/lemonaha/article/details/71436327)
[^error1]: [Error using __ldg in cuda kernel at compile time](https://stackoverflow.com/questions/24069524/error-using-ldg-in-cuda-kernel-at-compile-time)

