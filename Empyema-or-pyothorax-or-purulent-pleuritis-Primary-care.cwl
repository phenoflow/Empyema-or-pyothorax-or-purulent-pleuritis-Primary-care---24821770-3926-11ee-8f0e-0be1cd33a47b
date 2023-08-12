cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-gallbladder---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-gallbladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleurisy---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleurisy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-gallbladder---primary/output
  streptococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: streptococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleurisy---primary/output
  fibrinous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: fibrinous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: streptococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  bacterial-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: bacterial-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: fibrinous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-questionnaire---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-questionnaire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: bacterial-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  hepatopleural-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: hepatopleural-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-questionnaire---primary/output
  tuberculous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: tuberculous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hepatopleural-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-tuberculosis---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-tuberculosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: tuberculous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-necessitan---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-necessitan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-tuberculosis---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-fistula---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-fistula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-necessitan---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-fistula---primary/output
  mastoid-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: mastoid-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  suppurative-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: suppurative-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: mastoid-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema---primary:
    run: empyema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: suppurative-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-benign---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-benign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: empyema---primary/output
  epidemic-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: epidemic-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-benign---primary/output
  staphylococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: staphylococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: epidemic-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  pneumococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: pneumococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: staphylococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-encysted---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-encysted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: pneumococcal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleura---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-encysted---primary/output
  empyema-or-pyothorax-or-purulent-pleuritis-primary-care-loculated---primary:
    run: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-loculated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-pleura---primary/output
  bronchocutaneous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: bronchocutaneous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: empyema-or-pyothorax-or-purulent-pleuritis-primary-care-loculated---primary/output
  mediastinal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: mediastinal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: bronchocutaneous-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  bronchopleural-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: bronchopleural-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: mediastinal-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  acute-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary:
    run: acute-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: bronchopleural-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: acute-empyema-or-pyothorax-or-purulent-pleuritis-primary-care---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
