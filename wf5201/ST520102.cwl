cwlVersion: v1.2
class: Workflow
inputs:
    DT5209: Directory
outputs: {}
steps:
    SS5202:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
                DT5209: Directory
        out:
            - SS5202/DT5201
            - DT5209
