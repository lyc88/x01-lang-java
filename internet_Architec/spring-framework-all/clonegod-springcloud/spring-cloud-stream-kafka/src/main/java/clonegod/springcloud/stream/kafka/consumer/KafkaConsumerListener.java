package clonegod.springcloud.stream.kafka.consumer;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

/**
 * Kafka 消费端监听器
 *	- 消息来源不管是通过kafkaTemplate 发送，还是 stream 方式发送到Kafka，该监听器都可以接收到对应topic上的消息。
 */
@Component
public class KafkaConsumerListener {
	
	@KafkaListener(topics= {"${app.kafka.topic}"})
	public void onMessage(String message) {
		System.err.println("----------- Kafka消费端接听器，接收到消息：" + message);
	}
	
}
