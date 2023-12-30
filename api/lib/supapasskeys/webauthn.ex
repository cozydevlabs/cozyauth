defmodule Supapasskeys.WebAuthn do
  use Rustler, otp_app: :supapasskeys, crate: "supapasskeys_webauthn"

  # When your NIF is loaded, it will override this function.
  @spec add(Integer.t(), Integer.t()) :: Integer.t()
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end