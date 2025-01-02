import tensorflow as tf

loaded_model = tf.keras.models.load_model('saved_model/ann-customer-churn')

# Check its architecture
loaded_model.summary()