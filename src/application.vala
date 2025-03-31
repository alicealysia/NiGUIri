/* application.vala
 *
 * Copyright 2025 Alice
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

using GLib;
using Gdk; 

public class Niguiri.Application : Adw.Application {

    public Application () {
        Object (
            application_id: "au.alysia.niguiri",
            flags: ApplicationFlags.DEFAULT_FLAGS,
            resource_base_path: "/au/alysia/niguiri"
        );
    }

    public override void activate () {
        base.activate ();
        ListModel monitorList = Display.get_default ().get_monitors ();
        uint monitorCount = monitorList.get_n_items ();
        for (uint i = 0; i < monitorCount; i ++) {
            Monitor monitor = monitorList.get_item (i) as Monitor;
        }
        new Niguiri.Window (this).present ();
    }
}
