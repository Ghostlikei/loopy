load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")
# load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "headers",
    srcs = glob(["include/**/*.h"]),
)

cc_library(
    name = "loopy_common",
    srcs = glob(["src/**/*.c", "src/**/*.cpp"]),
    hdrs = [":headers"],
    strip_include_prefix = "include/",
    includes = [ "include" ],
)

cc_test(
    name = "loopy_common_test",
    srcs = glob(["test/**/*.c", "test/**/*.cpp"]),
    deps = [
        "@com_google_googletest//:gtest_main",
        ":loopy_common",
    ],
)