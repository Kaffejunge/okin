<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="34" versionDevel="251" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_39" name="Function for J1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_39">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1*A*cat-kN1*cat1)/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="cat" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="cat1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_269" name="default_compartment" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_270" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kN1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for J2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_40">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k2*B*cat1-kN2*P*cat)/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="B" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_281" name="cat" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_282" name="cat1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="default_compartment" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_284" name="k2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="kN2" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for J3" type="UserDefined" reversible="true">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_41">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k3*A*cat-kN3*catI)/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="cat" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="catI" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_295" name="default_compartment" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_296" name="k3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="kN3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="NoName" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m&#178;" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
      <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
        <rdf:Description rdf:about="#Model_1">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2025-03-31T12:16:02Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
        </rdf:Description>
      </rdf:RDF>
    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Compartment_0">
              <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000410"/>
            </rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_2" name="cat1" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="catI" simulationType="reactions" compartment="Compartment_0" addNoise="false" particle_numbers="0.0">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="cat" simulationType="reactions" compartment="Compartment_0" particle_numbers="1.2044281714e+22"/>
      <Metabolite key="Metabolite_4" name="P" simulationType="reactions" compartment="Compartment_0" particle_numbers="0.0"/>
      <Metabolite key="Metabolite_3" name="B" simulationType="reactions" compartment="Compartment_0" particle_numbers="4.8177126856000004e+23"/>
      <Metabolite key="Metabolite_0" name="A" simulationType="reactions" compartment="Compartment_0" particle_numbers="3.0110704285e+23"/>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed" initial_value="1423.47"/>
      <ModelValue key="ModelValue_1" name="kN1" simulationType="fixed" initial_value="426.919"/>
      <ModelValue key="ModelValue_2" name="k2" simulationType="fixed" initial_value="5.38586"/>
      <ModelValue key="ModelValue_3" name="kN2" simulationType="fixed" initial_value="2.13008"/>
      <ModelValue key="ModelValue_4" name="k3" simulationType="fixed" initial_value="0.176787"/>
      <ModelValue key="ModelValue_5" name="kN3" simulationType="fixed" initial_value="0.104406"/>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="J1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="k1" value="1"/>
          <Constant key="Parameter_4991" name="kN1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_39" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="J2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k2" value="1"/>
          <Constant key="Parameter_4989" name="kN2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="J3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k3" value="1"/>
          <Constant key="Parameter_4987" name="kN3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
          <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
            <rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
          </rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[catI]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k1]" value="49941" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kN1]" value="79097" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k2]" value="74286" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kN2]" value="16290" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[k3]" value="31655" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Values[kN3]" value="49340" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[J1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[J1],ParameterGroup=Parameters,Parameter=k1" value="49941" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[k1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[J1],ParameterGroup=Parameters,Parameter=kN1" value="79097" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[kN1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[J2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[J2],ParameterGroup=Parameters,Parameter=k2" value="74286" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[k2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[J2],ParameterGroup=Parameters,Parameter=kN2" value="16290" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[kN2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[J3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[J3],ParameterGroup=Parameters,Parameter=k3" value="31655" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[k3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[J3],ParameterGroup=Parameters,Parameter=kN3" value="49340" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NoName,Vector=Values[kN3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
    </StateTemplate>
    <InitialState type="initialState">0.0 0.0 0.0 1.0 1423.47 426.919 5.38586 2.13008 0.176787 0.104406 1.2044281714e+22 0.0 4.8177126856000004e+23 3.0110704285e+23 
</InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_100" name="Time-Course" type="timeCourse" scheduled="true" update_model="false">
      <Report append="0" target="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\TimeCourseData.txt" reference="Report_52" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="20.0"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="20.0"/>
        <Parameter name="TimeSeriesRequested" type="float" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0.0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="0">
      <Report reference="Report_32" target="results" append="False" confirmOverwrite="False"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        <ParameterGroup name="FitItem"><ParameterGroup name="Affected Experiments"/><ParameterGroup name="Affected Cross Validation Experiments"/><Parameter type="cn" name="LowerBound" value="1e-05"/><Parameter type="cn" name="UpperBound" value="10000000.0"/><Parameter type="float" name="StartValue" value="49941.0"/><Parameter type="cn" name="ObjectCN" value="CN=Root,Model=NoName,Vector=Values[k1],Reference=InitialValue"/></ParameterGroup><ParameterGroup name="FitItem"><ParameterGroup name="Affected Experiments"/><ParameterGroup name="Affected Cross Validation Experiments"/><Parameter type="cn" name="LowerBound" value="1e-05"/><Parameter type="cn" name="UpperBound" value="10000000.0"/><Parameter type="float" name="StartValue" value="79097.0"/><Parameter type="cn" name="ObjectCN" value="CN=Root,Model=NoName,Vector=Values[kN1],Reference=InitialValue"/></ParameterGroup><ParameterGroup name="FitItem"><ParameterGroup name="Affected Experiments"/><ParameterGroup name="Affected Cross Validation Experiments"/><Parameter type="cn" name="LowerBound" value="1e-05"/><Parameter type="cn" name="UpperBound" value="10000000.0"/><Parameter type="float" name="StartValue" value="74286.0"/><Parameter type="cn" name="ObjectCN" value="CN=Root,Model=NoName,Vector=Values[k2],Reference=InitialValue"/></ParameterGroup><ParameterGroup name="FitItem"><ParameterGroup name="Affected Experiments"/><ParameterGroup name="Affected Cross Validation Experiments"/><Parameter type="cn" name="LowerBound" value="1e-05"/><Parameter type="cn" name="UpperBound" value="10000000.0"/><Parameter type="float" name="StartValue" value="16290.0"/><Parameter type="cn" name="ObjectCN" value="CN=Root,Model=NoName,Vector=Values[kN2],Reference=InitialValue"/></ParameterGroup><ParameterGroup name="FitItem"><ParameterGroup name="Affected Experiments"/><ParameterGroup name="Affected Cross Validation Experiments"/><Parameter type="cn" name="LowerBound" value="1e-05"/><Parameter type="cn" name="UpperBound" value="10000000.0"/><Parameter type="float" name="StartValue" value="31655.0"/><Parameter type="cn" name="ObjectCN" value="CN=Root,Model=NoName,Vector=Values[k3],Reference=InitialValue"/></ParameterGroup><ParameterGroup name="FitItem"><ParameterGroup name="Affected Experiments"/><ParameterGroup name="Affected Cross Validation Experiments"/><Parameter type="cn" name="LowerBound" value="1e-05"/><Parameter type="cn" name="UpperBound" value="10000000.0"/><Parameter type="float" name="StartValue" value="49340.0"/><Parameter type="cn" name="ObjectCN" value="CN=Root,Model=NoName,Vector=Values[kN3],Reference=InitialValue"/></ParameterGroup></ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        <ParameterGroup name="rct2_5"><Parameter type="key" name="Key" value="Experiment_rct2_5"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct2_5.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct2_4"><Parameter type="key" name="Key" value="Experiment_rct2_4"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct2_4.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct2_3"><Parameter type="key" name="Key" value="Experiment_rct2_3"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct2_3.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct2_2"><Parameter type="key" name="Key" value="Experiment_rct2_2"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct2_2.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct2_1"><Parameter type="key" name="Key" value="Experiment_rct2_1"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct2_1.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct1_5"><Parameter type="key" name="Key" value="Experiment_rct1_5"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct1_5.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct1_4"><Parameter type="key" name="Key" value="Experiment_rct1_4"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct1_4.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct1_3"><Parameter type="key" name="Key" value="Experiment_rct1_3"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct1_3.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct1_2"><Parameter type="key" name="Key" value="Experiment_rct1_2"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct1_2.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup><ParameterGroup name="rct1_1"><Parameter type="key" name="Key" value="Experiment_rct1_1"/><Parameter type="file" name="File Name" value="c:\users\finn\heinlab\hein_modules\chem_model\src\chem_model\local_copasi\temp\input\rct1_1.csv"/><Parameter type="bool" name="Data is Row Oriented" value="1"/><Parameter type="unsignedInteger" name="First Row" value="1"/><Parameter type="unsignedInteger" name="Last Row" value="41"/><Parameter type="unsignedInteger" name="Experiment Type" value="1"/><Parameter type="bool" name="Normalize Weights per Experiment" value="1"/><Parameter type="string" name="Separator" value=","/><Parameter type="unsignedInteger" name="Weight Method" value="3"/><Parameter type="unsignedInteger" name="Row containing Names" value="1"/><Parameter type="unsignedInteger" name="Number of Columns" value="9"/><ParameterGroup name="Object Map"><ParameterGroup name="0"><Parameter type="unsignedInteger" name="Role" value="3"/></ParameterGroup><ParameterGroup name="1"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="2"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="3"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="4"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/><Parameter type="unsignedInteger" name="Role" value="2"/></ParameterGroup><ParameterGroup name="5"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="6"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="7"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup><ParameterGroup name="8"><Parameter type="cn" name="Object CN" value="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=InitialConcentration"/><Parameter type="unsignedInteger" name="Role" value="1"/></ParameterGroup></ParameterGroup></ParameterGroup></ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Genetic Algorithm" type="GeneticAlgorithm">
        <Parameter type="unsignedInteger" name="Number of Generations" value="180"/>
        <Parameter type="unsignedInteger" name="Population Size" value="120"/>
        <Parameter type="unsignedInteger" name="Random Number Generator" value="1"/>
        <Parameter type="unsignedInteger" name="Seed" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_27" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#9;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#9;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#10;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report precision="6" separator="&#9;" name="multi_parameter_estimation" key="Report_32" taskType="parameterFitting">
      <Comment/>
      <Table printTitle="1">
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
      </Table>
    </Report>
    <Report precision="6" separator="&#9;" name="Time-Course" key="Report_52" taskType="Time-Course">
      <Comment/>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NoName,Reference=Time"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[catI],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[cat],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[B],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Compartments[default_compartment],Vector=Metabolites[A],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NoName,Vector=Values[k1],Reference=Value"/>
        <Object cn="CN=Root,Model=NoName,Vector=Values[kN1],Reference=Value"/>
        <Object cn="CN=Root,Model=NoName,Vector=Values[k2],Reference=Value"/>
        <Object cn="CN=Root,Model=NoName,Vector=Values[kN2],Reference=Value"/>
        <Object cn="CN=Root,Model=NoName,Vector=Values[k3],Reference=Value"/>
        <Object cn="CN=Root,Model=NoName,Vector=Values[kN3],Reference=Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <SBMLReference file="my_copasi.sbml">
    <SBMLMap SBMLid="A" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="B" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="J1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="J2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="J3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="P" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="cat" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="cat1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="catI" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="default_compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="kN1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="kN2" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kN3" COPASIkey="ModelValue_5"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_0">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_4">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_12">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_16">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_34">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
        <rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Unit_40">
</rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
