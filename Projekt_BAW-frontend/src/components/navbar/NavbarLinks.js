import { Link } from 'react-router-dom'
import React from 'react'
import { useTranslation } from 'react-i18next'
import useAuthentication from '../../useAuthentication'
import SearchInput from '../../components/search'

const NavbarLinks = () => {
	const { t } = useTranslation()
	const { isLoggedIn } = useAuthentication()
	const email = localStorage.getItem('email')
	return (
		<div className='collapse navbar-collapse mt-lg-0 mt-4' id='navbarLinks'>
			<Link className='navbar-brand' to='#'>
				ResCars
			</Link>
			<ul className='navbar-nav'>
				<li className='nav-item mx-2'>
					<Link className='nav-link' to='/home'>
						{t('navbar.home')}
					</Link>
				</li>
				<li className='nav-item mx-2'>
					<Link className='nav-link' to='/cars'>
						{t('navbar.bookCars')}
					</Link>
				</li>
				{email === 'admin@gmail.com' && (
					<li className='nav-item mx-2'>
						<Link className='nav-link' to='/dashboard'>
							{t('navbar.dashboard')}
						</Link>
					</li>
				)}
				{isLoggedIn && email != 'admin@gmail.com' && (
					<li className='nav-item mx-2'>
						<Link className='nav-link' to='/dashboard'>
							{t('navbar.profile')}
						</Link>
					</li>
				)}
			</ul>
		</div>
	)
}

export default NavbarLinks
