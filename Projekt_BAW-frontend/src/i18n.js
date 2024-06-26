import i18n from 'i18next'
import { initReactI18next } from 'react-i18next'
import enTranslation from './locales/en.json'
import plTranslation from './locales/pl.json'

const resources = {
	pl: {
		translation: plTranslation,
	},
	en: {
		translation: enTranslation,
	},
}

i18n.use(initReactI18next).init({
	resources,
	lng: 'pl',
	interpolation: {
		escapeValue: false,
	},
})

export default i18n
