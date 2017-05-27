
plot(train)

hold on 
plot(test,'r')
legend('训练准确率','测试准确率')
xlabel('epoch')
ylabel('accuracy')