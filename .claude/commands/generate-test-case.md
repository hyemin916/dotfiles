# Test Case Generation
Generate all possible test case combinations from the given factors.
- factor: $1
- constraints: $2

# Processing Rules:
1. Generate combinations using the Cartesian product of all factors
2. Analyze constraints to determine applicability per case
3. If a factor becomes meaningless due to constraints, ignore and merge it
4. Write case descriptions in prose form as realistic business scenarios

# Output Format:
- Write each case as "Case X: [prose description of the scenario]"
- Include only the case description, no specific numbers or supplementary details
- Show the total number of cases

# Example Input:
```
# factors
- factor1: value1, value2
- factor2: valueA, valueB
- factor3: option1, option2
# constraints
- factor3 only applies under certain conditions
```

# Example Output:
```
**Case 1:** Combining value1 and valueA with option1 applied
**Case 2:** Combining value1 and valueA with option2 applied
**Case 3:** Combining value2 and valueB

**Total cases: 3**
```
