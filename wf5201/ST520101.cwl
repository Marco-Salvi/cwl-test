cwlVersion: v1.2
class: Workflow
inputs:
    DT5202: Directory
    DT5203: Directory
    DT5204: Directory
    DT5205: Directory
    DT5206: Directory
    DT5207: Directory
outputs:
    DT5201:
        type: Directory
        outputSource: SS5201/DT5201
steps:
    SS5201:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
        out:
            - DT5201
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
    SS5203:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
        out:
            - SS5203/DT5201
    SS5204:
        run:
            class: Operation
            inputs:
                DT5209: Directory
            outputs:
                DT5201: Directory
                DT5202: Directory
        in:
            DT5209: SS5202/DT5209
        out:
            - SS5204/DT5201
            - DT5202
    SS5205:
        run:
            class: Operation
            inputs:
                DT5209: Directory
            outputs:
                DT5201: Directory
                DT5203: Directory
        in:
            DT5209: SS5202/DT5209
        out:
            - SS5205/DT5201
            - DT5203
    SS5206:
        run:
            class: Operation
            inputs:
                DT5209: Directory
            outputs:
                DT5201: Directory
                DT5202: Directory
        in:
            DT5209: SS5202/DT5209
        out:
            - SS5206/DT5201
            - DT5202
    SS5207:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
        out:
            - SS5207/DT5201
    SS5208:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
        out:
            - SS5208/DT5201
    SS5209:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
                DT5205: Directory
        out:
            - SS5209/DT5201
            - DT5205
    SS5210:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
                DT5204: Directory
        out:
            - SS5210/DT5201
            - DT5204
    SS5211:
        run:
            class: Operation
            inputs: {}
            outputs:
                DT5201: Directory
                DT5206: Directory
        out:
            - SS5211/DT5201
            - DT5206
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
            DT5204: SS5210/DT5204
            DT5205: SS5209/DT5205
            DT5206: SS5211/DT5206
        out:
            - SS5212/DT5201
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
            DT5201: SS5201/DT5201
            DT5202: SS5204/DT5202
            DT5203: SS5205/DT5203
            DT5209: SS5202/DT5209
        out:
            - SS5213/DT5201
            - DT5207
    SS5214:
        run:
            class: Operation
            inputs:
                DT5207: Directory
            outputs:
                DT5201: Directory
                DT5208: Directory
        in:
            DT5207: DT5207
        out:
            - SS5214/DT5201
            - DT5208
    SS5215:
        run:
            class: Operation
            inputs:
                DT5207: Directory
            outputs:
                DT5201: Directory
                DT5208: Directory
        in:
            DT5207: DT5207
        out:
            - SS5215/DT5201
            - DT5208
