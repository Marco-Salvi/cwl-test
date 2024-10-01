cwlVersion: v1.2
class: Workflow
inputs:
    DT5205: Directory
    DT5206: Directory
    DT5207: Directory
outputs: {}
steps:
    SS5213:
        run:
            class: Operation
            inputs:
                DT5202: Directory
                DT5203: Directory
                DT52010: Directory
            outputs:
                DT5201: Directory
                DT5208: Directory
        in:
            DT5202: DT5202
            DT5203: DT5203
            DT52010: DT52010
        out:
            - DT5201
            - DT5208
