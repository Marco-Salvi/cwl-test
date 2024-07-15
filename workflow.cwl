cwlVersion: v1.2
class: Workflow

inputs:
  DT5301: File
  DT5302: File
  DT5303: File

outputs:
  DT5305:
    type: File
    outputSource: SS5303/DT5305

steps:
  SS5301:
    run:
      class: CommandLineTool
      baseCommand: ["SS5301"]
      inputs:
        DT5301:
          type: File
          inputBinding:
            position: 1
        DT5302:
          type: File
          inputBinding:
            position: 2
        DT5303:
          type: File
          inputBinding:
            position: 3
      outputs:
        DT5304:
          type: File
          outputBinding:
            glob: DT5304
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
    out: [DT5304]

  SS5302:
    run:
      class: CommandLineTool
      baseCommand: ["SS5302"]
      inputs:
        DT5301:
          type: File
          inputBinding:
            position: 1
        DT5302:
          type: File
          inputBinding:
            position: 2
        DT5303:
          type: File
          inputBinding:
            position: 3
        DT5304:
          type: File
          inputBinding:
            position: 4
      outputs:
        DT5301:
          type: File
          outputBinding:
            glob: DT5301
        DT5302:
          type: File
          outputBinding:
            glob: DT5302
        DT5303:
          type: File
          outputBinding:
            glob: DT5303
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
      DT5304: SS5301/DT5304
    out: [DT5301, DT5302, DT5303]

  SS5303:
    run:
      class: CommandLineTool
      baseCommand: ["SS5303"]
      inputs:
        DT5301:
          type: File
          inputBinding:
            position: 1
        DT5302:
          type: File
          inputBinding:
            position: 2
        DT5303:
          type: File
          inputBinding:
            position: 3
        DT5304:
          type: File
          inputBinding:
            position: 4
      outputs:
        DT5305:
          type: File
          outputBinding:
            glob: DT5305
    in:
      DT5301: SS5302/DT5301
      DT5302: SS5302/DT5302
      DT5303: SS5302/DT5303
      DT5304: SS5301/DT5304
    out: [DT5305]
