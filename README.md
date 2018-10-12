# client

1. 使用MQTT协议作为传输层
2. 使用redis作为数据库
3. 使用？？？（待定）作为持久化存储
4. 基于？？？（待定）MQTT Borker进行修改，作为超级节点。
5. 使用？？？（待定）作为加密算法


### install

```
sudo apt install redis-server
sudo gem install redis
sudo gem install mqtt
```

### 发送

```
ruby message.rb 8266.fun xx 000 haha
```

### 验证

```
ruby client.rb 8266.fun xx 000 haha
```


### 参考

参考了blockchain.rb https://github.com/openblockchains/awesome-blockchains/blockchain.rb