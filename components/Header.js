import Link from 'next/link'
import config from '../config'
const linkStyle = {
  marginRight: 15
}

const Header = () => (
	<div>
		<Link href={`${config.router}/`}>
		  <a style={linkStyle}>Home</a>
		</Link>
		<Link href={`${config.router}/about`}>
		  <a style={linkStyle}>About</a>
		</Link>
	</div>
)

export default Header