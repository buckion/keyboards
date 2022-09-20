BOARDS := buckyergo buckygrid

.PHONY: $(BOARDS)
$(BOARDS):
	rm -rf output/$@
	node ../ergogen/src/cli.js input/$@.yaml -o output/$@
	cp output/$@/pcbs/$@.kicad_pcb temp/$@.kicad_pcb
