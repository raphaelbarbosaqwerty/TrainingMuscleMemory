import {http} from './configs'

export default {
    list: () => { return http.get('/data/cars.json')}
}