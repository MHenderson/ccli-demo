results/queen16_16.out:
	ccli greedy --type="simple" --ordering="decdeg" --seed=42 --kempe ${QUEEN_GRAPHS_PATH}/queen16_16.col > $@
