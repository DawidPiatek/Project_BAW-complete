import { Container, Flex } from '@chakra-ui/react'
import NavbarLinks from './NavbarLinks'

const Navbar = ({ sidebarContent, search, links, buttons }) => {
	return (
		<Container maxWidth='1720px' px={[8, 8, 8]}>
			<nav className='navbar navbar-expand-lg my-3'>
				<Flex
					as='header'
					align='center'
					justify='space-between'
					w='full'
					bg='white'
					borderColor='blackAlpha.300'
					h='14'
				>
					{sidebarContent}
					{search}
					{links}
					{buttons}
				</Flex>
			</nav>
		</Container>
	)
}

export default Navbar
