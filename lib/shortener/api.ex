defmodule Shortener.Api do
    alias Shortener.Implementation
    
    defdelegate short(url), to: Implementation

end