<template>
    <div>
        <ul>
            <li v-for="item in list">{{ item }}</li>
        </ul>
    </div>
</template>

<script>
export default {
    name: 'LvList',
    props: {
        ordened: null,
        list: {
            required: true,
            type: Array,
            default: []
        }
    }
}
</script>

<style>
    li {
        display: inline;
        list-style-type: none;
        padding-right: 20px;
    }
</style>