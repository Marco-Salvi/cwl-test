cwlVersion: v1.2
class: Workflow
inputs:
  DT5301: Directory
  DT5302: Directory
  DT5303: Directory
outputs:
  DT5305: # Output of the workflow
    type: Directory
    outputSource: SS5303/DT5305
  DT5301: # Updated input
    type: Directory
    outputSource: SS5302/DT5301
  DT5302: # Updated input
    type: Directory
    outputSource: SS5302/DT5302
  DT5303: # Updated input
    type: Directory
    outputSource: SS5302/DT5303
steps:
  SS5301:
    run:
      class: Operation
      inputs:
        DT5301: Directory
        DT5302: Directory
        DT5303: Directory
      outputs:
        DT5304: Directory
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
    out: [ DT5304 ]
  SS5302:
    run:
      class: Operation
      inputs:
        DT5301: Directory
        DT5302: Directory
        DT5303: Directory
        DT5304: Directory
      outputs:
        DT5301: Directory
        DT5302: Directory
        DT5303: Directory
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
      DT5304: SS5301/DT5304
    out: [ DT5301, DT5302, DT5303 ]
  SS5303:
    run:
      class: Operation
      inputs:
        DT5301: Directory
        DT5302: Directory
        DT5303: Directory
        DT5304: Directory
      outputs:
        DT5305: Directory
    in:
      DT5301: SS5302/DT5301
      DT5302: SS5302/DT5302
      DT5303: SS5302/DT5303
      DT5304: SS5301/DT5304
    out: [ DT5305 ]
