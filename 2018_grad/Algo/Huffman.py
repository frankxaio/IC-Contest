import pprint

def pprint_with_combined_last(items, msg=""):
    """
    Display so that:
      - highest freq at top (since we print the whole list),
      - on freq ties, leaves (is_combined=False) come before combined nodes.
    """
    display = sorted(
        items,
        key=lambda x: (
            -x['freq'],         # freq descending
            x['is_combined']    # leaves before combined on ties
        )
    )
    if msg:
        print(msg)
    pprint.pprint(display, sort_dicts=False)
    print("-" * 60)

def huffman_combine_split(symbols, frequencies):
    # 1) Build leaf nodes, giving each an 'order' for the *initial* tie‑break
    items = [
        {
            'symbols':     [sym],
            'freq':        freq,
            'order':       idx + 1,      # only for first sort
            'is_combined': False
        }
        for idx, (sym, freq) in enumerate(zip(symbols, frequencies))
    ]

    # 2) INITIAL sort: freq desc, then order asc
    items.sort(key=lambda x: (-x['freq'], x['order']))
    for item in items:
        item.pop('order', None)

        pprint_with_combined_last(items, "After initial sort:")

    combine_history = []
    next_order = len(items) + 1  # we’ll still assign—but won’t use

    # 3) Combine phase (len(symbols)-1 merges)
    for i in range(1, len(symbols)):
        # re‑sort by freq desc, then is_combined flag only
        items.sort(key=lambda x: (-x['freq'], x['is_combined']))

        # pop two *lowest*‑priority items (end of list)
        left = items.pop()
        right  = items.pop()

        # record for later split
        combine_history.append({
            'combined': right['symbols'] + left['symbols'],
            'left':     left['symbols'],
            'right':    right['symbols']
        })

        # create merged node (we keep order but won’t sort on it)
        new_item = {
            'symbols':     right['symbols'] + left['symbols'],
            'freq':        left['freq'] + right['freq'],
            'order':       next_order,
            'is_combined': True
        }
        next_order += 1
        items.append(new_item)

        pprint_with_combined_last(items, f"After combine #{i}:")

    print("combine_history:")
    pprint.pprint(combine_history)
    print("-" * 60)

    # 4) Split phase: build codes
    codes = {s: "" for s in symbols}
    for merge in reversed(combine_history):
        print(codes)
        for s in merge['left']:
            codes[s] = codes[s] + '1'
        for s in merge['right']:
            codes[s] = codes[s] + '0'

    return codes

if __name__ == "__main__":
    symbols     = ['A1', 'A2', 'A3', 'A4', 'A5', 'A6']
    frequencies = [10,  40,   6,   10,   4,    30]

    codes = huffman_combine_split(symbols, frequencies)
    print("Final Huffman Codes:")
    pprint.pprint(codes)
