<template>
    <div>
        <h3>Profile</h3>
        <p>Competitor: {{ name }}</p>
        <p>Stadium: {{ stadium }}</p>
        <p></p>
    </div>
</template>

<script>
export default {
    name: 'LVTime',
    data() {
        return {
            name: 'Cruzeiro',
            stadium: 'Mineirão',
            search: '',
        }
    },
    methods: {
        competitor(time) {
            switch(time.toLowerCase()) {
                case 'corinthians':
                    return 'palmeiras'
                case 'santos':
                    return 'são paulo'
                case 'flamengo':
                    return 'vasco'
                case 'cruzeiro':
                    return 'em minas é marmelada'
                default:
                    return 'não encontrado'
            }
        }
    }
}
</script>

<style>

</style>