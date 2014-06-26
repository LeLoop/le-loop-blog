<%inherit file="base.mako" />
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="UTF-8"/>
    ${self.head()}
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
    <script>
      window.onload = function(){
        var i, rm, rh,
            read_mores = document.getElementsByClassName("post_more"),
            read_hides = document.getElementsByClassName("post_hide"),
            read_sum = document.getElementsByClassName("post_sum"),
            read_all = document.getElementsByClassName("post_all");

        for(i=0;i<read_mores.length;i++){
          rh = read_hides[i],
          rm = read_mores[i];
          rm.href = "javascript:void(0);";
          rm.data = rh.data = {};
          rm.data.related_s = rh.data.related_s = read_sum[i];
          rm.data.related_a = rh.data.related_a = read_all[i];
          rm.onclick = rh.onclick = function(){
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