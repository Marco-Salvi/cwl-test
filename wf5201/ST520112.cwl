cwlVersion: v1.2
class: Workflow
inputs: {}
outputs: {}
steps:
    SS5212:
        run:
            class: Operation
            inputs:
                DT5205: Directory
                DT5206: Directory
                DT5207: Directory
            outputs:
                DT5201: Directory
        in:
            DT5205: DT5205
            DT5206: DT5206
            DT5207: DT5207
        out:
            - DT5201
