<?xml version="1.0" encoding="UTF-8"?>
<plannerBenchmark>
  <benchmarkDirectory>target/benchmarkTest/output</benchmarkDirectory>
  <warmUpSecondsSpentLimit>0</warmUpSecondsSpentLimit>
<#list ['FIRST_FIT', 'CHEAPEST_INSERTION'] as constructionHeuristicType>
  <solverBenchmark>
    <problemBenchmarks>
      <solutionFileIOClass>ai.timefold.solver.persistence.common.api.domain.solution.RigidTestdataSolutionFileIO</solutionFileIOClass>
      <inputSolutionFile>target/test/benchmarkTest/input.xml</inputSolutionFile>
    </problemBenchmarks>
    <solver>
      <solutionClass>ai.timefold.solver.core.impl.testdata.domain.TestdataSolution</solutionClass>
      <entityClass>ai.timefold.solver.core.impl.testdata.domain.TestdataEntity</entityClass>
      <scoreDirectorFactory>
        <easyScoreCalculatorClass>ai.timefold.solver.core.impl.testdata.domain.TestdataEasyScoreCalculator</easyScoreCalculatorClass>
      </scoreDirectorFactory>
      <termination>
        <secondsSpentLimit>0</secondsSpentLimit>
      </termination>
      <constructionHeuristic>
        <constructionHeuristicType>${constructionHeuristicType}</constructionHeuristicType>
      </constructionHeuristic>
    </solver>
  </solverBenchmark>
</#list>
</plannerBenchmark>
