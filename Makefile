default build:
	go build cmd/phonedata.go
test0:
	go test -v --bench="."
test:
	@echo
	@echo "  === should succ ==="
	./phonedata 1300000
	./phonedata 1399999
	./phonedata 1899999
	./phonedata 18999999999
	@echo
	@echo "  === should fail ==="
	./phonedata 189999
	./phonedata 189999999999
	./phonedata 1900000
	./phonedata 1230000
	./phonedata 139000x
	./phonedata .......
	@echo
	@echo "  === list ==="
	./phonedata -l | head -3
	./phonedata -l | tail -3
	./phonedata -l | wc
