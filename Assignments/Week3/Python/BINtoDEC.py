#binary to decimal converter
def BINtoDEC(n): 
    return int(n,2)

def File_BIN_to_DEC():
#open files
	Gray_ieee754 = open('video/RTL/Gray_RTL.txt', 'r')
	Gray_dec = open('video/RTL/Gray_RTL_Float.txt', 'w')
	for _ in Gray_ieee754:
	#sign
		Sign = int(_[0])
		if Sign == 1:
			Gray_dec.write("-")
		elif Sign == 0:
			Gray_dec.write("")

	#exponent
		Exponent_bits = BINtoDEC(_[1:9])
		Exponent = Exponent_bits - 127

	#mantissa
		Mantissa_bit9 = int(_[9]) * (2 ** (-1))
		Mantissa_bit10 = int(_[10]) * (2 ** (-2))
		Mantissa_bit11 = int(_[11]) * (2 ** (-3))
		Mantissa_bit12 = int(_[12]) * (2 ** (-4))
		Mantissa_bit13 = int(_[13]) * (2 ** (-5))
		Mantissa_bit14 = int(_[14]) * (2 ** (-6))
		Mantissa_bit15 = int(_[15]) * (2 ** (-7))
		Mantissa_bit16 = int(_[16]) * (2 ** (-8))
		Mantissa_bit17 = int(_[17]) * (2 ** (-9))
		Mantissa_bit18 = int(_[18]) * (2 ** (-10))
		Mantissa_bit19 = int(_[19]) * (2 ** (-11))
		Mantissa_bit20 = int(_[20]) * (2 ** (-12))
		Mantissa_bit21 = int(_[21]) * (2 ** (-13))
		Mantissa_bit22 = int(_[22]) * (2 ** (-14))
		Mantissa_bit23 = int(_[23]) * (2 ** (-15))
		Mantissa_bit24 = int(_[23]) * (2 ** (-16))
		Mantissa_bit25 = int(_[23]) * (2 ** (-17))
		Mantissa_bit26 = int(_[23]) * (2 ** (-18))
		Mantissa_bit27 = int(_[23]) * (2 ** (-19))
		Mantissa_bit28 = int(_[23]) * (2 ** (-20))
		Mantissa_bit29 = int(_[23]) * (2 ** (-21))
		Mantissa_bit30 = int(_[23]) * (2 ** (-22))
		Mantissa_bit31 = int(_[23]) * (2 ** (-23))
		Mantissa_bit32 = int(_[23]) * (2 ** (-24))
		Mantissa = Mantissa_bit9 + Mantissa_bit10 + Mantissa_bit11 + Mantissa_bit12 + Mantissa_bit13 + Mantissa_bit14 + Mantissa_bit15 + Mantissa_bit16 + Mantissa_bit17 + Mantissa_bit18 + Mantissa_bit19 + Mantissa_bit20 + Mantissa_bit21 + Mantissa_bit22 + Mantissa_bit23 + Mantissa_bit24 + Mantissa_bit25 + Mantissa_bit26 + Mantissa_bit27 + Mantissa_bit28 + Mantissa_bit29 + Mantissa_bit30 + Mantissa_bit31 + Mantissa_bit32

		#result
		dec = (Mantissa + 1) * (2 ** Exponent)


		Gray_dec.write("%f" % dec)
		Gray_dec.write("\n")

	Gray_ieee754.close()
	Gray_dec.close()

def oneElememtBinToDec(_):
		Sign = int(_[0])


	#exponent
		Exponent_bits = BINtoDEC(_[1:9])
		Exponent = Exponent_bits - 127

	#mantissa
		Mantissa_bit9 = int(_[9]) * (2 ** (-1))
		Mantissa_bit10 = int(_[10]) * (2 ** (-2))
		Mantissa_bit11 = int(_[11]) * (2 ** (-3))
		Mantissa_bit12 = int(_[12]) * (2 ** (-4))
		Mantissa_bit13 = int(_[13]) * (2 ** (-5))
		Mantissa_bit14 = int(_[14]) * (2 ** (-6))
		Mantissa_bit15 = int(_[15]) * (2 ** (-7))
		Mantissa_bit16 = int(_[16]) * (2 ** (-8))
		Mantissa_bit17 = int(_[17]) * (2 ** (-9))
		Mantissa_bit18 = int(_[18]) * (2 ** (-10))
		Mantissa_bit19 = int(_[19]) * (2 ** (-11))
		Mantissa_bit20 = int(_[20]) * (2 ** (-12))
		Mantissa_bit21 = int(_[21]) * (2 ** (-13))
		Mantissa_bit22 = int(_[22]) * (2 ** (-14))
		Mantissa_bit23 = int(_[23]) * (2 ** (-15))
		Mantissa_bit24 = int(_[23]) * (2 ** (-16))
		Mantissa_bit25 = int(_[23]) * (2 ** (-17))
		Mantissa_bit26 = int(_[23]) * (2 ** (-18))
		Mantissa_bit27 = int(_[23]) * (2 ** (-19))
		Mantissa_bit28 = int(_[23]) * (2 ** (-20))
		Mantissa_bit29 = int(_[23]) * (2 ** (-21))
		Mantissa_bit30 = int(_[23]) * (2 ** (-22))
		Mantissa_bit31 = int(_[23]) * (2 ** (-23))
		Mantissa_bit32 = int(_[23]) * (2 ** (-24))
		Mantissa = Mantissa_bit9 + Mantissa_bit10 + Mantissa_bit11 + Mantissa_bit12 + Mantissa_bit13 + Mantissa_bit14 + Mantissa_bit15 + Mantissa_bit16 + Mantissa_bit17 + Mantissa_bit18 + Mantissa_bit19 + Mantissa_bit20 + Mantissa_bit21 + Mantissa_bit22 + Mantissa_bit23 + Mantissa_bit24 + Mantissa_bit25 + Mantissa_bit26 + Mantissa_bit27 + Mantissa_bit28 + Mantissa_bit29 + Mantissa_bit30 + Mantissa_bit31 + Mantissa_bit32

		#result
		dec = (Mantissa + 1) * (2 ** Exponent)
		if Sign == 1:
			dec=dec*(-1)	
		return dec
