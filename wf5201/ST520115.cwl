cwlVersion: v1.2
class: Workflow
inputs:
    DT5208: Directory
outputs:
    DT5209:
        type: Directory
        outputSource: ST520115/DT5209
steps:
    SS5215:
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
            - SS5215/DT5201
            - DT5208
