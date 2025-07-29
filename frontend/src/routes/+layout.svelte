<script>
  import Header from '$lib/Header.svelte';
  import '../app.css';
</script>

<Header />

<main>
  <slot></slot>
</main>

<style>
  main {
    padding: 20px;
  }
</style>
