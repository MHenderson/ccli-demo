test: queen

queen: results/queen16_16.out

results/queen16_16.out:
	mkdir results
	ccli greedy --type="simple" --ordering="decdeg" --seed=42 --kempe graphs/queen16_16.col > $@;
	mv graphs/queen16_16.col.res results

clean:
	rm results/*

install-ccli:
	git clone https://github.com/MHenderson/ccli
	cd ccli && make install
