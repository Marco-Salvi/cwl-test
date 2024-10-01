cwlVersion: v1.2
class: Workflow
inputs: {}
outputs:
    DT5208:
        type: Directory
        outputSource: SS5214/DT5208
steps:
    SS5214:
        run:
            class: Operation
            inputs:
                DT5207: Directory
            outputs:
                DT5201: Directory
                DT5208: Directory
        in:
            DT5207: DT5207
        out:
            - SS5214/DT5201
            - DT5208
