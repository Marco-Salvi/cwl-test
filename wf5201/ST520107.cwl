cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs: {}
steps:
    SS5207:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
        out:
            - SS5207/DT5201
