test: queen

queen: results/queen16_16.out

results/queen16_16.out:
	ccli greedy --type="simple" --ordering="decdeg" --seed=42 --kempe graphs/queen16_16.col > $@;
	mv graphs/queen16_16.col.res results

clean:
	rm results/*
