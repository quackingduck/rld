var styleLinkNodes = document.querySelectorAll('link[rel=stylesheet]')
for (var i=0; i < styleLinkNodes.length; i++) {
  var node = styleLinkNodes[0]
  node.href = node.href.split('?')[0] + '?' + Date.now()
}
