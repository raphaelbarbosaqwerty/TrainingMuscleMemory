<template>
    <div>
        <h3>Searching competitors</h3>
        <label>Competitor:</label>
        <input type="text" v-model="search">
        <p>Competitor: {{ competitor(search) }}</p>
    </div>
</template>

<script>
export default {
    name: 'lv-search',
    data() {
        return {
            search: ''
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