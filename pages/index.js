export default function Home() {
  return (
    <div>
      RESTURL_SPEAKERS {process.env.API_URL}
      <br />
      RESTURL_SESSIONS {process.env.RESTURL_SESSIONS}
    </div>
  )
}
