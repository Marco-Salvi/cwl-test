cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs:
    DT5206:
        type: Directory
        outputSource: ST520110/DT5206
steps:
    SS5210:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
                DT5204: Directory
        in: {}
        out:
            - DT5201
            - DT5204
