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
                DT5201: Directory
                DT5202: Directory
                DT5203: Directory
                DT5209: Directory
            outputs:
                DT5201: Directory
                DT5207: Directory
        in:
            DT5201: DT5201
            DT5202: DT5202
            DT5203: DT5203
            DT5209: DT5209
        out:
            - DT5201
            - DT5207
