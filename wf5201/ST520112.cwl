cwlVersion: v1.2
class: Workflow
inputs: {}
outputs: {}
steps:
    SS5212:
        run:
            class: Operation
            inputs:
                DT5204: Directory
                DT5205: Directory
                DT5206: Directory
            outputs:
                DT5201: Directory
        in:
            DT5204: DT5204
            DT5205: DT5205
            DT5206: DT5206
        out:
            - SS5212/DT5201
