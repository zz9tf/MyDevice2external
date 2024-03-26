# How to connect docker container in my windows directly with ssh (without any third party services)

Before taking about any step I need to do to allow other computers to connect my computer, we need to talk about how the ssh signal go into my windows.

![image](https://github.com/zz9tf/MyDevice2external/assets/77183284/a41f5337-371a-4340-b134-fd44d17fc707)

Above image shows the path of ssh access request signal go into my windows. As we can see, the signal will first visit **public ip**, and then go to **my windows system**, and finally it will go to docker container which is holding ssh service. So in this task, we need to force our router to transfer our ssh access signal to our local drive private ip address first, which we need to set port forwarding. And then, we set our firewall inbound rule to accept ssh signal, finally the signal go to the proper port where we are holding our docker container. Then, we get what we want!
<p align="center">
   <img src="https://github.com/zz9tf/MyDevice2external/assets/77183284/a153fb21-a4ff-46f6-b4ad-ec693dfafc24"/>
 </p>
Yeah!!

**Task**:
-------
  **Router part:**
  1. Get my public ip address
  2. Set port forwarding rule
  
  **Windows:**
  
  3. Set inbound rule in firewall in windows
  
  **Docker container**
  
  4. run setup-SSH.sh


## Details
1. Google to get my public ip address (Many website can do this, here is one: [www.whatismyip](https://www.whatismyip.com/))
2. Set port forwarding rule
  To set the port forwarding, we need to google how to do so according to our ISP(internet service provider). Here, since mine is Verizon, so I google how to set port forwarding in Verizon.[link](https://www.verizon.com/support/knowledge-base-87064/)

![image](https://github.com/zz9tf/MyDevice2external/assets/77183284/3cce621a-5539-4ca0-a57f-aa5f1611c9ef)

3. In windows, we need to set inbound rule to allows windows accept specific port signal(which is also more safety for our local drive).
  
   To do so, we need to go to Windows Security:
   
   ![image](https://github.com/zz9tf/MyDevice2external/assets/77183284/57f18dd4-1c88-4cc1-99f1-46777818db65)

   Then, go to firewall & network protection:
   
   ![image](https://github.com/zz9tf/MyDevice2external/assets/77183284/a02e673d-c837-4118-aa5d-9dca68716e77)

  Then, advantage setting:
  
  ![image](https://github.com/zz9tf/MyDevice2external/assets/77183284/84d472c9-907c-4a5a-a0e2-ca7d93d48261)

  Then, click new rule in Inbound Rule:
  
  ![image](https://github.com/zz9tf/MyDevice2external/assets/77183284/67c7da5e-8d15-443d-a02f-00abe1cb6101)

  Then, port > TCP > Special local ports > Allow the connection > Domain & Private & Public > Name it and click "Finish" button.

4. run cmd, and go into wsl, and then run setup-SSH.sh to set up ssh service.

Now, you are avaiable to "ssh root@your-public-ip -p 2222" with password: root12345.
