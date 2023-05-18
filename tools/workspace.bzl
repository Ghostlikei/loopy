load("//third_party/gtest:workspace.bzl", gtest = "repo")

def initialize_third_party():
    gtest()

def loopy_repositories():
    initialize_third_party() 