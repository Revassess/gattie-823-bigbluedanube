package com.revature.tier1;

public class NumberSumLength {

	public static boolean checkNumberPowerLength(long num) {
		Long myLong = num;											// Auto-boxed to give me more functionality.
		int length = String.valueOf(myLong).length();				// this gives us the number of digits.
		
		for(int i = 0; i < length; i++) {
			double exponentLong = Math.pow(myLong, i);								// raises each digit to the power of the length.
			System.out.println("Each digit raised to the power of the length is: ");
			
			long powerSum = 0;
			powerSum += i;
			
			System.out.println(i);
			System.out.println(myLong);
			
			System.out.println("Sum of the powers: " + powerSum);
			
			boolean myAnswer = myLong.equals(powerSum);
			System.out.println("The boolean value for this question is " + myAnswer);
		}
		
		return false;
	}
}
