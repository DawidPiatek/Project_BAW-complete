import {
	Drawer,
	DrawerBody,
	DrawerFooter,
	DrawerHeader,
	DrawerOverlay,
	DrawerContent,
	DrawerCloseButton,
	Button,
	Stack,
	Box,
	FormLabel,
	Input,
	useDisclosure,
} from '@chakra-ui/react'
import { AddIcon, EditIcon } from '@chakra-ui/icons'
import { useRef, useState } from 'react'
import axios from 'axios'

function CreateItemDrawer({ dataType, onUpdate }) {
	const { isOpen, onOpen, onClose } = useDisclosure()
	const firstField = useRef()

	const [formData, setFormData] = useState({})

	const handleChange = e => {
		setFormData({ ...formData, [e.target.id]: e.target.value })
	}

	const handleSubmit = () => {
		console.log(formData)
		axios
			.post(`http://127.0.0.1:8000/api/${dataType}`, formData)
			.then(response => {
				console.log(response.data.data)
				onClose()
			})
			.catch(error => {
				console.log(error)
			})
	}

	const renderInputFields = () => {
		if (dataType === 'cars') {
			return (
				<>
					<Box>
						<FormLabel htmlFor='photo1'>Zdjęcie 1</FormLabel>
						<Input ref={firstField} id='photo1' onChange={handleChange} />
					</Box>
					<Box>
						<FormLabel htmlFor='photo2'>Zdjęcie 2</FormLabel>
						<Input id='photo2' onChange={handleChange} />
					</Box>
					<Box>
						<FormLabel htmlFor='brand'>Marka</FormLabel>
						<Input id='brand' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='model'>Model</FormLabel>
						<Input id='model' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='gearbox'>Skrzynia biegów</FormLabel>
						<Input id='gearbox' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='fuel_type'>Typ paliwa</FormLabel>
						<Input id='fuel_type' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='price'>Cena</FormLabel>
						<Input id='price' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='available'>Dostępność</FormLabel>
						<Input id='available' onChange={handleChange} />
					</Box>
				</>
			)
		} else if (dataType === 'users') {
			return (
				<>
					<Box>
						<FormLabel htmlFor='firstname'>Imie</FormLabel>
						<Input ref={firstField} id='firstname' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='lastname'>Nazwisko</FormLabel>
						<Input id='lastname' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='telephone'>Nr telefonu</FormLabel>
						<Input id='telephone' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='email'>Email</FormLabel>
						<Input id='email' onChange={handleChange} />
					</Box>
				</>
			)
		} else if (dataType === 'rents') {
			return (
				<>
					<Box>
						<FormLabel htmlFor='rental_date'>Data wynajęcia</FormLabel>
						<Input ref={firstField} id='rental_date' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='return_date'>Data zwrotu</FormLabel>
						<Input id='return_date' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='price'>Cena</FormLabel>
						<Input id='price' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='user_id'>ID Klienta</FormLabel>
						<Input id='user_id' onChange={handleChange} />
					</Box>

					<Box>
						<FormLabel htmlFor='car_id'>ID Samochodu</FormLabel>
						<Input id='car_id' onChange={handleChange} />
					</Box>
				</>
			)
		}

		return null
	}

	return (
		<>
			<Button colorScheme='telegram' ml={4} leftIcon={<AddIcon color='white' />} onClick={onOpen}>
				New item
			</Button>

			<Drawer isOpen={isOpen} placement='right' initialFocusRef={firstField} onClose={onClose}>
				<DrawerOverlay />
				<DrawerContent>
					<DrawerCloseButton />

					<DrawerHeader borderBottomWidth='1px'>Edit {dataType}</DrawerHeader>

					<DrawerBody>
						<Stack spacing='24px'>{renderInputFields()}</Stack>
					</DrawerBody>

					<DrawerFooter borderTopWidth='1px'>
						<Button variant='outline' mr={3} onClick={onClose}>
							Cancel
						</Button>
						<Button colorScheme='green' px={7} onClick={handleSubmit}>
							Create
						</Button>
					</DrawerFooter>
				</DrawerContent>
			</Drawer>
		</>
	)
}

export default CreateItemDrawer
