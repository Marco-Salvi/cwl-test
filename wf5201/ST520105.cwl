cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs:
    DT5203:
        type: Directory
        outputSource: SS5205/DT5203
steps:
    SS5205:
        run:
            class: Operation
            inputs:
                DT5209: Directory
            outputs:
                DT5201: Directory
                DT5203: Directory
        in:
            DT5209: DT5209
        out:
            - DT5201
            - DT5203
