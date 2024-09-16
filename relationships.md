## Step-Step relationships

### As of right now

| Name              | Description                                                                  | CWL representable     | Notes         |
|-------------------|------------------------------------------------------------------------------|-----------------------|---------------|
| `follows from`    | A step that is executed after another, without any dependency between them   | Yes                   |               |
| `is manager of`   | A step that conditionally manages the execution of another step              | Yes (need an example) | Since CWL 1.2 |
| `is input to`     | A step that provides input to another step                                   | Yes                   |               |
| `is previous to`  | A step that is executed before another, without any dependency between them  | Yes                   |               |
| `is parent of`    | A step that is executed before another, and the latter depends on the former | Yes                   |               |
| `is parallel to`  | A step that is executed in parallel to another step                          | Yes                   |               |
| `is triggered by` | A step that is executed after another, and the latter triggers the former    | Yes                   |               |

# Refactored CWL Workflow Step-Step Relationships

## Description of Changes

1. Standardized naming convention to verb-based terms for clarity.
2. Reversed some relationships to make the direction more intuitive (e.g., `depends_on` instead of `is parent of`).
3. Replaced vague terms with more specific ones (e.g., `conditionally_runs` instead of `is manager of`).
4. Grouped relationships by their functional similarities.

## Refactored Relationships

### Temporal Relationships

| Proposed Term | Description                                                       | CWL Representable | Replaces         |
|---------------|-------------------------------------------------------------------|-------------------|------------------|
| `precedes`    | A step that is executed before another, without direct dependency | Yes               | `is previous to` |
| `succeeds`    | A step that is executed after another, without direct dependency  | Yes               | `follows from`   |

### Data Flow Relationships

| Proposed Term       | Description                                       | CWL Representable | Replaces                  |
|---------------------|---------------------------------------------------|-------------------|---------------------------|
| `provides_input_to` | A step that provides input to another step        | Yes               | `is input to`             |
| `depends_on`        | A step that depends on the output of another step | Yes               | `is parent of` (reversed) |

### Execution Relationships

| Proposed Term        | Description                                                                      | CWL Representable     | Replaces                        |
|----------------------|----------------------------------------------------------------------------------|-----------------------|---------------------------------|
| `runs_in_parallel`   | A step that is executed concurrently with another step, without any dependencies | Yes                   | `is parallel to`                |
| `conditionally_runs` | A step that is executed based on conditions set by another step                  | Yes (need an example) | `is manager of` (more specific) |
| `triggers`           | A step that initiates the execution of another step                              | Yes                   | `is triggered by` (reversed)    |

## Considerations

- While these relationships are conceptually representable in CWL, the exact implementation may vary depending on the
  specific workflow.
- Some relationships may be more easily represented than others in CWL. Concrete examples of workflows using these
  relationships would help confirm their exact representation.
- For relationships not directly supported by CWL constructs, it may be possible to represent them in the workflow
  metadata or comments (or maybe even in the RO-Crate).
- Further exploration is needed to determine how these relationships map to specific CWL features and best practices.
