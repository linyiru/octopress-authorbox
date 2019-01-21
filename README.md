# Author Box for Octopress

Author Box is a simple Octopress plugin that could display more author information below every single post.

You can configure your authors information if there are multiple authors.

# Feature

* Easily attach author info box with YAML.
* Use Gravatar image url as a author pic.

# Usage

1. Put the plugin file: ```author_box.rb``` into ```plugins``` folder.
* Put ```author.yml``` into your Octopress root path and add your author's information.
* Put ```author.html``` into ```source/_layouts``` for rendering author box below your posts
* Edit ```_style.scss``` to adjust the style of author box.
* Add or change the ```author: Your Name``` to the metadata on a post. The author name should be exactly matched to one of authors with author.yml.

# Example for author.yml

```yaml
linyiru:
    name: Lawrence Lin
    twitter: linyiru
    email: hi@linyiru.com
    blog: https://blog.linyiru.com/
    description: "Hello World!"
```

# Example for a post


```markdown
---
layout: post
title: "Octopress"
date: 2011-09-30 13:48
comments: true
categories: [octopress]
author: deduce
---

```

# Example Stylesheets(in SCSS format)

```scss
.octopress-authorbox {
	border-top: 4px solid #333;
	background-color: #eee;

	.author-pic {
		float: left;
		margin: 8px;
	}

	.author-about {
		float: left;
		margin: 5px;
		padding: 5px;
		ul {
			list-style: none;

			li {
				display: inline;
				margin-left: 5px;
			}
		}

	}
}

.octopress-authorbox:after {
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
```

# TODO

* More easier setting of this plugin(maybe it would be a install script & git submodule as a octopress plugin) 
* **More posts of this author** link and its generator

# Author

* Lawrence Yi-Ru Lin, [@linyiru](http://twitter.com/linyiru)

# License

Licensed under the MIT: www.opensource.org/licenses/mit-license.php
