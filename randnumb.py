import random, string


FILENAME = "alu_unit_1000 - Copy.v"

def process_data(data):
	data = data.split("#100")
	data2 = []
	for line in data:
		data2.append("#100" + str(line).replace("A =0", "A =" + str(''.join(random.SystemRandom().choice(string.digits) for _ in range(4)))).replace("B =0", "B =" + str(str(''.join(random.SystemRandom().choice(string.digits) for _ in range(4))))))
	return "".join(str(dat) for dat in data2)

def gen_rand():
	f = open(FILENAME, "r")
	data = f.read()
	print(data)
	f.close()
	data = process_data(data)
	print(data)
	f = open(FILENAME, "w")
	f.write(data)
	f.close()

gen_rand()