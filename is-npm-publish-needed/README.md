# is-npm-publish-needed

This action checks is npm publish needed.

## Inputs

### `default-branch`

**Optional** The default branch of your repository. Default `"master"`.

## Outputs

### `needed`

Bool of needed or not.

## Example usage

```yaml
steps:
  - name: needed
    id: needed
    uses: resessh/github-actions/is-npm-publish-needed@master
    with:
      default-branch: 'develop'
  - name: publish
    if: steps.needed.outputs.needed == 'true'
    run: npm publish
```
