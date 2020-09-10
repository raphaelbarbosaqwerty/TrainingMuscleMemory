<template>
    <div>
        <h4>List of {{title}}</h4>
        <ul>
            <li v-for="item in list" :key="item.id">
                {{ item.name}} of <i>{{ item.model }}</i>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    name: 'lv-list',
    props: {
        title: null,
        list: {
            required: true,
            type: Array | Object
        }
    }
}
</script>

<style>
    
</style>