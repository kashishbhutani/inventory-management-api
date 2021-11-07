# frozen_string_literal: true

# app/controllers/concerns/response.rb
module Response
  def render_data(data, status = :ok)
    render json: data, status: status
  end

  def render_error(message, status = :unprocessable_entity)
    render_data({ error: message }, status)
  end
end
