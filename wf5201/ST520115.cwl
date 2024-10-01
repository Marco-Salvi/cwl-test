cwlVersion: v1.2
class: Workflow
inputs:
    DT5208: Directory
outputs:
    DT5209:
        type: Directory
        outputSource: DT5209
steps:
    SS5215:
        run:
            class: Operation
            inputs:
                DT5208: Directory
                DT5209: Directory
            outputs:
                DT5201: Directory
        in:
            DT5208: DT5208
            DT5209: DT5209
        out:
            - DT5201
