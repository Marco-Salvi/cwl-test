# Workflow Overview

## Workflow Inputs

The workflow accepts three directories (the only way I found to represent datasets) as inputs:

- `DT5301`: First input directory
- `DT5302`: Second input directory
- `DT5303`: Third input directory

## Workflow Outputs

The workflow produces a new directory and updates the input directories:

- `DT5305`: A directory generated as the final output, sourced from step `SS5303`
- Updated versions of `DT5301`, `DT5302`, `DT5303`

## Workflow Steps

### SS5301

- **Inputs**: `DT5301`, `DT5302`, `DT5303`
- **Outputs**: `DT5304`

### SS5302

- **Inputs**: `DT5301`, `DT5302`, `DT5303`, `DT5304` (from SS5301)
- **Outputs**: Updates `DT5301`, `DT5302`, `DT5303`

### SS5303

- **Inputs**: Updated `DT5301`, `DT5302`, `DT5303` (from SS5302), `DT5304` (from SS5301)
- **Outputs**: `DT5305`

## Abstract Nature

This workflow is represented as an abstract CWL, using the `Operation` class instead of `CommandLineTool`. This
approach:

- Describes the workflow structure and data flow
- Does not specify implementation details
- Is not directly executable

## Considerations

- This abstract CWL maintains the structure of the original Process Run Crate
- It represents software components as operations rather than command-line tools as in the concrete CWL version
- While not executable, it provides a clear representation of the workflow
- CWL has a lot of tools available for validating and visualizing
  workflows ([example](https://view.commonwl.org/workflows/github.com/Marco-Salvi/cwl-test/blob/main/wf5301/workflow.cwl))

## Potential Limitations

- May not capture all metadata from the original RO-Crate (need to explore further)
- Doesn't represent datasets as datasets but as directories

## Manual Step

In the spreadsheets there is a manual step (ST530101) that is executed before the workflow starts. This step is the preparation of the input data. Since it is a manual step it is not represented in the CWL workflow.

## Inconsistencies

In the spreadsheet, `SS5301` should be executed in parallel with `SS5302` but there is also is a dependency between them: `SS5302` requires the output of `SS5301`. Depending on the meaning of "executed in parallel" this could be an inconsistency in the spreadsheet. In the CWL the parallel execution is not represented.
