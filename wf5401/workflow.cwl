cwlVersion: v1.2
class: Workflow
inputs:
  DT5401: Directory
  DT5403: Directory

outputs:
  DT5405:
    type: Directory
    outputSource: SS5404/DT5405

steps:
  SS5401:
    run:
      class: Operation
      inputs:
        DT5401: Directory
      outputs:
        DT5402: Directory
    in:
      DT5401: DT5401
    out: [DT5402]

  SS5402:
    run:
      class: Operation
      inputs:
        DT5403: Directory
      outputs:
        DT5403: Directory
        DT5404: Directory
    in:
      DT5403: DT5403
    out: [DT5403, DT5404]

  SS5404:
    run:
      class: Operation
      inputs:
        DT5402: Directory
        DT5404: Directory
      outputs:
        DT5405: Directory
    in:
      DT5402: SS5401/DT5402
      DT5404: SS5402/DT5404
    out: [DT5405]
