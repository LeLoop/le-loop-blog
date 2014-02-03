<%page args="post"/>
<div class="post roundedTop">
  <div class="post_title roundedTop"><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a></div>
  <div class="post_extras">${post.date.strftime("%B %d, %Y at %H:%M")} | by ${post.author} | categories: 
<% 
   category_links = []
   for category in post.categories:
       if post.draft:
           #For drafts, we don't write to the category dirs, so just write the categories as text
           category_links.append(category.name)
       else:
           category_links.append("<a href='%s'>%s</a>" % (category.path, category.name))
%>
${", ".join(category_links)}
</div>
  <div class="post_excerpt">
    <div class="post_shown post_sum">${post.summary} <a href="${post.permapath()}" class="post_more">&#10132; Afficher</a></div>
    <div class="post_hidden post_all"><i><a href="javascript:void(0);" class="post_hide">&#10006; Replier</a></i> <br />${post.content}</div>
  </div>
</div>

