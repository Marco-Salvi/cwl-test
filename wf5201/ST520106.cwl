cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs:
    DT5204:
        type: Directory
        outputSource: SS5206/DT5204
steps:
    SS5206:
        run:
            class: Operation
            inputs:
                DT52010: Directory
            outputs:
                DT5201: Directory
                DT5204: Directory
        in:
            DT52010: DT52010
        out:
            - DT5201
            - DT5204
