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
    run: SS5301.cwl
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
    out: [DT5304]
  SS5302:
    run: SS5302.cwl
    in:
      DT5301: DT5301
      DT5302: DT5302
      DT5303: DT5303
      DT5304: SS5301/DT5304
    out: [DT5301, DT5302, DT5303]
  SS5303:
    run: SS5303.cwl
    in:
      DT5301: SS5302/DT5301
      DT5302: SS5302/DT5302
      DT5303: SS5302/DT5303
      DT5304: SS5301/DT5304
    out: [DT5305]
