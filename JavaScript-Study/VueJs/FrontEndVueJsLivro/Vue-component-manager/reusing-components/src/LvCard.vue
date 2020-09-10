<template>
    <div class="card">
        <h2>{{ title }}</h2>
        <slot></slot>
        <hr>
        <slot name="card_footer"></slot>
    </div>
</template>

<script>
export default {
    name: 'LvCard',
    props: ['title'],
}
</script>

<style>
    .card {
        border: 1px solid #000;
        padding: 10px;
    }
</style>