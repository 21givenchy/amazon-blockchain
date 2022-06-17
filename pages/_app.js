import '../styles/globals.css'
import { MoralisProvider } from 'react-moralis'
import { AmazonProvider } from '../context/AmazonContext'
import { MoralisProvider } from 'react-simple-hook-modal'

function MyApp({ Component, pageProps }) {
  return ( 
  <MoralisProvider
  serverUrl='[process.env.NEXT_PUBLIC_API_URL]'
  appId='[process.env.NEXT_PUBLIC_APP_ID]'
  >
    <Component {...pageProps} />
  </MoralisProvider>
  )
}

export default MyApp
