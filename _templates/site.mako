<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
  <head>
     ${self.head()}
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="Hackerspace located in central Paris." /> 
    <meta name="keywords" content="hackerspace, diy, hackers, workshops, conferences" /> 
    <link rel="space-api" href="http://spaceapi.leloop.org/status.json" />
  </head>
  <body>
    <div id="content" class="content">
      ${self.header()}

      <div id="main_block">
        <div id="prose_block">
          ${next.body()}
        </div><!-- End Prose Block -->
      </div><!-- End Main Block -->
    </div> <!-- End Content -->

    <footer>
      ${self.footer()}
    </footer>

        var sum = this.data.related_s,
          all = this.data.related_a;
        sum.className = (sum.className.indexOf("post_shown")!==-1) ? "post_hidden" : "post_shown";
        sum.className += " post_sum";
        all.className = (all.className.indexOf("post_shown")!==-1) ? "post_hidden" : "post_shown";
        all.className += " post_all";
      };
    }
  };
  </script>
  </body>
</html>
<%def name="head()">
  <%include file="head.mako" />
</%def>
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
