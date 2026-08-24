+++
title = "Shortcode Example"
date = "2024-06-14"

[taxonomies]
tags=["example"]

[extra]
comment = true
+++


## Note

Here is an example of the `note` shortcode:

This one is static!
{% <note header="Note!"> %}This blog assumes basic terminal maturity{% </note> %}

This one is clickable!
{% <note clickable={true} hidden={true} header="Quiz!"> %}The answer to the quiz!{% </note> %}


Syntax:
```
&#123;&#123;&lt;note header="Note!" body="This blog assumes basic terminal maturity" /&gt;&#125;&#125;
&#123;&#123;&lt;note clickable=&#123;true&#125; hidden=&#123;true&#125; header="Quiz!" body="The answer to the quiz!" /&gt;&#125;&#125;
```

You can also use some HTML in the text:
{% <note header="Note!"> %}<h1>This blog assumes basic terminal maturity</h1>{% </note> %}


Literal shortcode:
```
&#123;&#123;&lt;note header="Note!" body="&lt;h1&gt;This blog assumes basic terminal maturity&lt;/h1&gt;" /&gt;&#125;&#125;
```

Pretty cool, right?

Finally, you can do something like this (hopefully):

{% <note clickable={true} header="Quiz!"> %}

# Hello this is markdown inside a note shortcode

```rust
fn main() {
    println!("Hello World");
}
```

We can't call another shortcode inside a shortcode, but this is good enough.

{% </note> %}

Here is the raw markdown:

```markdown
&#123;% &lt;note clickable=&#123;true&#125; header="Quiz!"&gt; %&#125;

# Hello this is markdown inside a note shortcode

\`\`\`rust
fn main() {
    println!("Hello World");
}
\`\`\`

We can't call another shortcode inside a shortcode, but this is good enough.

&#123;% &lt;/note&gt; %&#125;
```

Finally, we have center
{% <note center={true} header="Centered Text"> %}This is centered text{% </note> %}

```markdown
&#123;&#123;&lt;note center=&#123;true&#125; header="Centered Text" body="This is centered text" /&gt;&#125;&#125;
```
It works good enough for me!
