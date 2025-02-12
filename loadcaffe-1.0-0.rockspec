package = "loadcaffe"
version = "1.0-0"

source = {
   url = "git+https://github.com/jmauro1/loadcaffe.git",
   tag = "master"
}

description = {
   summary = "Load Caffe networks in Torch7",
   detailed = [[
Loading Caffe networks without caffe dependency
   ]],
   homepage = "https://github.com/jmauro1/loadcaffe",
   license = "BSD"
}

dependencies = {
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
