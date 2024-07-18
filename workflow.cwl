#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

inputs:
  DT5301: Directory
  DT5302: Directory
  DT5303: Directory

outputs:
  DT5305:
    type: Directory
    outputSource: SS5303/DT5305

steps:
  SS5301:
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
    run:
      class: CommandLineTool

      inputs:
        DT5301:
          type: Directory
          inputBinding:
            position: 1
        DT5302:
          type: Directory
          inputBinding:
            position: 2
        DT5303:
          type: Directory
          inputBinding:
            position: 3

      outputs:
        DT5304:
          type: Directory
          outputBinding:
            glob: DT5304
    out:
    - DT5304
  SS5302:
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
      DT5304: SS5301/DT5304
    run:
      class: CommandLineTool

      inputs:
        DT5301:
          type: Directory
          inputBinding:
            position: 1
        DT5302:
          type: Directory
          inputBinding:
            position: 2
        DT5303:
          type: Directory
          inputBinding:
            position: 3
        DT5304:
          type: Directory
          inputBinding:
            position: 4

      outputs:
        DT5301:
          type: Directory
          outputBinding:
            glob: DT5301
        DT5302:
          type: Directory
          outputBinding:
            glob: DT5302
        DT5303:
          type: Directory
          outputBinding:
            glob: DT5303
    out:
    - DT5301
    - DT5302
    - DT5303
  SS5303:
    in:
      DT5301: SS5302/DT5301
      DT5302: SS5302/DT5302
      DT5303: SS5302/DT5303
      DT5304: SS5301/DT5304
    run:
      class: CommandLineTool

      inputs:
        DT5301:
          type: Directory
          inputBinding:
            position: 1
        DT5302:
          type: Directory
          inputBinding:
            position: 2
        DT5303:
          type: Directory
          inputBinding:
            position: 3
        DT5304:
          type: Directory
          inputBinding:
            position: 4

      outputs:
        DT5305:
          type: Directory
          outputBinding:
            glob: DT5305
    out:
    - DT5305
