cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs: {}
steps:
    SS5203:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
        out:
            - SS5203/DT5201
