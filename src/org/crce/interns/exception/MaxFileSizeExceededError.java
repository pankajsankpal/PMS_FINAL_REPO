package org.crce.interns.exception;

public class MaxFileSizeExceededError extends Exception{

	public String toString(){
		return("Failed to upload...Max file size exceeded!");
	}
}
