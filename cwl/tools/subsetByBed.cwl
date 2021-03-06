cwlVersion: v1.0
class: CommandLineTool
baseCommand: subsetByBed.R
hints:
  - class: DockerRequirement
    dockerPull: "quay.io/epigenomicscrew/screw"
arguments: ["-d", $(runtime.outdir)]

inputs:
  toSubset:
    type: File
    inputBinding:
      prefix: -i
  bedFile:
    type: File
    inputBinding:
      prefix: -b
outputs:
  subsetted:
    type: File
    outputBinding:
      glob: "*.sym"
