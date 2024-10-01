#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5202: Directory
  DT5203: Directory
  DT5210: Directory

outputs: {}

steps:
  SS5213:
    in:
      DT5202: DT5202
      DT5203: DT5203
      DT5210: DT5210
    run:
      class: Operation
      inputs:
        DT5202: Directory
        DT5203: Directory
        DT5210: Directory
      outputs:
        DT5201: Directory
        DT5208: Directory
    out:
    - DT5201
    - DT5208
