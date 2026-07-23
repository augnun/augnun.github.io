+++
template = "homepage.html"
+++

<style>
.homepage-hero {
    text-align: center;
    padding: 2rem 0;
}

.homepage-hero-title {
    font-size: 3rem;
    margin-bottom: 1rem;
}

.homepage-hero-subtitle {
    font-size: 1.25rem;
    margin-bottom: 1rem;
}

</style>

<div class="homepage-hero">
    <h1 class="homepage-hero-title">Blog do Augusto</h1>
    <p class="homepage-hero-subtitle">Uma tentativa de desmerdificar a internet. De novo. </p>
</div>

# Features

Checkout all the [options you can configure](@/posts/configuration.md) and the [example pages](@/posts/_index.md).

# Quick Start

1.  **Add the theme as a submodule:**
    ```bash
    git submodule add https://github.com/not-matthias/apollo themes/apollo
    ```
2.  **Configure your `config.toml`:**
    Set `theme = "apollo"` and add your site's configuration.
3.  **Start the Zola server:**
    ```bash
    zola serve
    ```
