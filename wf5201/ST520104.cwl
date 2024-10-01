cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs:
    DT5202:
        type: Directory
        outputSource: SS5204/DT5202
steps:
    SS5204:
        run:
            class: Operation
            inputs:
                DT5210: Directory
            outputs:
                DT5201: Directory
                DT5202: Directory
        in:
            DT5210: DT5210
        out:
            - DT5201
            - DT5202
