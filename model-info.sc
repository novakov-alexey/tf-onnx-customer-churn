//> using dep "com.microsoft.onnxruntime:onnxruntime:1.19.2"

import ai.onnxruntime.{OrtEnvironment, OrtSession}
import scala.util.Using

val env = OrtEnvironment.getEnvironment()

Using.resource(
  env.createSession("./models/model.onnx", OrtSession.SessionOptions())
)(_.getInputNames().forEach(println))

env.close
