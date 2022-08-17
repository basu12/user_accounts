class BaseService
  def success(result: nil, message: nil,current_page: nil,next_page: nil,total_record: nil)
    response(
      status: 200,
      result: result
    )
  end

  def not_found(result: nil, message: nil)
    response(
     status: 404,
     result: result,
     message: "not_found"
     )
  end

  def error(result: nil, message: nil)
    response(
     status: 422,
     result: result,
     message: "Something went wrong"
     )
  end
  

  private
  def response(status: nil, result: nil, message: nil)
    raise StandardError.new if status.blank?
    res = { status: status }
    res[:message] = message if message.present?
    res[:result] = result if result.present?
    res
  end
end
