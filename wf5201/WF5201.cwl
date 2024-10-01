cwlVersion: v1.2
class: Workflow
inputs:
    DT5210: Directory
outputs:
    DT5201:
        type: Directory
        outputSource: ST520101/DT5201
    DT5202:
        type: Directory
        outputSource: ST520104/DT5202
    DT5203:
        type: Directory
        outputSource: ST520105/DT5203
    DT5204:
        type: Directory
        outputSource: ST520106/DT5204
    DT5205:
        type: Directory
        outputSource: ST520109/DT5205
    DT5206:
        type: Directory
        outputSource: ST520110/DT5206
    DT5207:
        type: Directory
        outputSource: ST520111/DT5207
    DT5208:
        type: Directory
        outputSource: ST520114/DT5208
    DT5209:
        type: Directory
        outputSource: ST520116/DT5209
requirements:
    SubworkflowFeatureRequirement: {}
steps:
    ST520101:
        run: ST520101.cwl
        in:
            DT5202: ST520104/DT5202
            DT5203: ST520105/DT5203
            DT5204: ST520106/DT5204
            DT5205: ST520109/DT5205
            DT5206: ST520110/DT5206
            DT5207: ST520111/DT5207
        out:
            - DT5201
    ST520102:
        run: ST520102.cwl
        in:
            DT5209: ST520116/DT5209
        out: []
    ST520103:
        run: ST520103.cwl
        in:
            DT5210: DT5210
        out: []
    ST520104:
        run: ST520104.cwl
        in:
            DT5210: DT5210
        out:
            - DT5202
    ST520105:
        run: ST520105.cwl
        in:
            DT5210: DT5210
        out:
            - DT5203
    ST520106:
        run: ST520106.cwl
        in:
            DT5210: DT5210
        out:
            - DT5204
    ST520107:
        run: ST520107.cwl
        in:
            DT5210: DT5210
        out: []
    ST520108:
        run: ST520108.cwl
        in:
            DT5210: DT5210
        out: []
    ST520109:
        run: ST520109.cwl
        in:
            DT5210: DT5210
        out:
            - DT5205
    ST520110:
        run: ST520110.cwl
        in:
            DT5210: DT5210
        out:
            - DT5206
    ST520111:
        run: ST520111.cwl
        in:
            DT5210: DT5210
        out:
            - DT5207
    ST520112:
        run: ST520112.cwl
        in: {}
        out: []
    ST520113:
        run: ST520113.cwl
        in:
            DT5205: ST520109/DT5205
            DT5206: ST520110/DT5206
            DT5207: ST520111/DT5207
        out: []
    ST520114:
        run: ST520114.cwl
        in: {}
        out:
            - DT5208
    ST520115:
        run: ST520115.cwl
        in:
            DT5208: ST520114/DT5208
        out:
            - DT5209
    ST520116:
        run: ST520116.cwl
        in:
            DT5208: ST520114/DT5208
        out:
            - DT5209
    ST520117:
        run: ST520117.cwl
        in: {}
        out: []
