/*
 *    Copyright (c) 2008-2011 Flowplayer Oy *
 *    This file is part of Flowplayer.
 *
 *    Flowplayer is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    Flowplayer is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with Flowplayer.  If not, see <http://www.gnu.org/licenses/>.
 */

package org.flowplayer.model {

	/**
	 * @author api
	 */
	public interface Callable {

		function addMethod(method:PluginMethod):void;

		function getMethod(externalName:String):PluginMethod;

		/**
		 * Invokes a method that has a return value.
		 * @param args arguments in an Array, if a callback is supported by the method
		 * the callbackId should be the last element in the array.
		 * @return the value returned by the invoked method
		 */
		function invokeMethod(externalName:String, args:Array = null):Object;

	}
}
