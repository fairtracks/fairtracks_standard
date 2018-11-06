package org.elixir_europe.excelerate.benchmarking;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit test for Validator
 */
public class ValidatorTest 
    extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public ValidatorTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( ValidatorTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testValidator()
    {
        assertTrue( true );
    }
}
