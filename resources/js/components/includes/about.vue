<template>
    <header class="sidebar-header" role="banner">
        <h1 class="sidebar-logo">
            <a href="#">about <span>kevron</span></a>
        </h1>
        <div class="nav-wrap">
            <nav class="main-nav" role="navigation">
                <ul class="unstyled list-hover-slide">
                    <li>
                        <router-link :to="{ name: 'about-page' }"
                            :class="current == 'about' ? 'current' : ''">About</router-link>
                    </li>
                    <li><a href="/about/core-values" :class="current == 'core-values' ? 'current' : ''">core values</a></li>
                    <li>
                        <a href="/locations" :class="current == 'our-offices' ? 'current' : ''">our
                            offices</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
</template>
<script>
export default {
    props: ["current"],
};
</script>
