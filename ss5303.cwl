cwlVersion: v1.2
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
