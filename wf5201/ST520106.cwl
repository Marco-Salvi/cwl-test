cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs:
    DT5204:
        type: Directory
        outputSource: ST520106/DT5204
steps:
    SS5206:
        run:
            class: Operation
            inputs:
                DT5209: Directory
            outputs:
                DT5201: Directory
                DT5202: Directory
        in:
            DT5209: DT5209
        out:
            - SS5206/DT5201
            - DT5202
