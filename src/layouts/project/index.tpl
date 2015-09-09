<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" extends="index">

    <!--Append-->
    <tpl:append path="//tpl:block[@name='content']">
        <div class="page-header">
            <h1>The Project</h1>
            <div class="navbar navbar-tabs navbar-sm">
                <div class="navbar-holder">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="summary.html">Summary</a></li>
                        <li><a href="project.html">Activity</a></li>
                        <li><a href="tasks.html">Tasks</a></li>
                        <li><a href="calendar.html">Calendar</a></li>
                        <li><a href="meetings.html">Meetings</a></li>
                        <li><a href="documents.html">Files</a></li>
                        <li><a href="editor.html">Notes</a></li>
                        <li><a href="people.html">People</a></li>
                        <li><a href="discussions.html">Discussions</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <tpl:import name="stream" />
    </tpl:append>

    <!--Replace-->
    <!--
    <tpl:replace path="//div[@role='side']">
        This replaces something;
    </tpl:replace>
    -->

    <!--Remove-->
    <!--
    <tpl:remove path="//div[@role='aside']" />
    -->

    <!--Prepend-->
    <!--
    <tpl:replace path="//div[@role='side']">
        This is prepended to Path
    </tpl:replace>
    -->

</tpl:layout>
