#--
# Project:   google_checkout4r 
# File:      test/unit/carrier_calculated_shipping_test.rb
# Author:    Tony Chan <api.htchan at gmail dot com>
# Copyright: (c) 2007 by Manuel Holtgrewe
# License:   MIT License as follows:
#
# Permission is hereby granted, free of charge, to any person obtaining 
# a copy of this software and associated documentation files (the 
# "Software"), to deal in the Software without restriction, including 
# without limitation the rights to use, copy, modify, merge, publish, 
# distribute, sublicense, and/or sell copies of the Software, and to permit
# persons to whom the Software is furnished to do so, subject to the 
# following conditions:
#
# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
# OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
#++

require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

require 'google4r/checkout'

require 'test/frontend_configuration'

# Test for the FlatRateShipping class.
class Google4R::Checkout::CarrierCalculatedShippingTest < Test::Unit::TestCase
  include Google4R::Checkout

  def setup
    @shipping = CarrierCalculatedShipping.new
  end
  
  def test_carrier_calculated_shipping_method_behaves_correctly
    [ :carrier_calculated_shipping_options, :shipping_packages,
      :create_carrier_calculated_shipping_option,
      :create_shipping_package,
      :create_from_element
    ].each do |symbol|
      assert_respond_to @shipping, symbol
    end
  end
  
  def test_initialization
    assert_equal [], @shipping.carrier_calculated_shipping_options
    assert_equal [], @shipping.shipping_packages
  end

end