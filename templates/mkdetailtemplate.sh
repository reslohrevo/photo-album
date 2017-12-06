#!/bin/sh
#
# Create detail view template.

wipdir=${0%%mkdetailtemplate.sh}

cat <<BODY1
{% extends "base.html" %}
{% block title_td %}
          <td class="title">
            <h1>{{ pkgid }}</h1>
            <p><a href="../contents.html">Table of Contents</a> -
            <a href="gallery.html" title="{{ pkgid }}">Thumbnail Gallery</a></p>
          </td>
{% endblock title_td %}
{% block content %}

    <h2>Description</h2>
    <div class="description">
      <p>{{ package["description"] }}</p>
    </div>

    <h2>Contents</h2>
    <table class="contents">

      <thead>
        <tr>
          <th class="photoid" >Photograph ID</th>
          <th class="notes">Description</th>
        </tr>
      </thead>

      <tbody>

      {% for photoid in photographs.keys() %}
        <tr>
          <td><a href="jpeg/{{ photographs[photoid]["filename"] }}" title="{{ photoid }}">{{ photoid }}</a></td>
          <td>{{ photographs[photoid]["description"] }}</td>
        </tr>
      {% endfor %}

      </tbody>
    </table>

    <p>&nbsp;</p>

    <h2>Metadata</h2>

    <table border="1" class="contents">
      <tr>
        <td class="metakey">Date</td>
        <td class="metaval">{{ package["pkg_date"] }}</td>
      </tr>
      <tr>
        <td>Location</td>
        <td>{{ package["location"] }}</td>
      </tr>
      <tr>
        <td>Subjects</td>
        <td>{{ package["subjects"] }}</td>
      </tr>
      <tr>
        <td>Media Type</td>
        <td>{{ package["media_type"] }}</td>
      </tr>
      <tr>
        <td>Media Format</td>
        <td>{{ package["media_fmt"] }}</td>
      </tr>
      <tr>
        <td>Media Status</td>
        <td>{{ package["media_status"] }}</td>
      </tr>
      <tr>
        <td>Film</td>
        <td>{{ package["film"] }}</td>
      </tr>
      <tr>
        <td>Sequence</td>
        <td>{{ package["sequence"] }}</td>
      </tr>
      <tr>
        <td>Frames</td>
        <td>{{ package["frames"] }}</td>
      </tr>
      <tr>
        <td>Pieces</td>
        <td>{{ package["pieces"] }}</td>
      </tr>
      <tr>
        <td>Sheets</td>
        <td>{{ package["sheets"] }}</td>
      </tr>
      <tr>
        <td>Set Datetime</td>
        <td>{{ package["set_datetime"] }}</td>
      </tr>
      <tr>
        <td>Interval Datetime</td>
        <td>{{ package["interval"] }}</td>
      </tr>
    </table>
    <p>&nbsp;<p>
{% endblock content %}
BODY2
