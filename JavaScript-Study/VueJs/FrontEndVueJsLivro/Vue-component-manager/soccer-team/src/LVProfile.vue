<template>
    <div>
        <h3>Profile</h3>
        <p>Competitor: {{ name }}</p>
        <p>Stadium: {{ stadium }}</p>
    </div>
</template>

<script>
export default {
    name: 'lv-profile',
    data() {
        return {
            name: 'Cruzeiro',
            stadium: 'Mineirão',
        }
    }
}
</script>