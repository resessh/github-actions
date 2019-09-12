# can-npm-publish

This action checks can npm publish.

## Inputs

### `npm_token`

**Optional** Your NPM token.

## Outputs

### `result`

Bool of can or not.

## Example usage

```yaml
steps:
  - name: can npm publish
    id: can
    uses: resessh/github-actions/can-npm-publish@master
    with:
      npm_token: ${{ secrets.NPM_TOKEN }}
  - name: publish
    if: steps.can.outputs.result == 'true'
    run: npm publish
```
