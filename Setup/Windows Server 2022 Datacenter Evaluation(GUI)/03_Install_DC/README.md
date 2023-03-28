# Install Domain Controller

1. Install the Active Directory Windows Feature
![1](https://user-images.githubusercontent.com/94680549/228311446-663a16f0-b8aa-4239-9f18-2e672cc4b7d1.png)

![2](https://user-images.githubusercontent.com/94680549/228311471-7efdfa3e-f6c5-4cb7-978d-93826e376da1.png)

![5](https://user-images.githubusercontent.com/94680549/228311515-334c02f0-baca-4731-86c8-3c0d3e69c6c0.png)

![6](https://user-images.githubusercontent.com/94680549/228311545-573d3ba2-317a-4abc-adc0-ca4e03a5b701.png)

![7](https://user-images.githubusercontent.com/94680549/228311568-73eff45f-977e-439a-8b59-daf81fb7ca29.png)

![2023-03-28 19_21_11-Greenshot](https://user-images.githubusercontent.com/94680549/228311739-f41f6dd4-edd3-4ee4-b5e6-6e8a7781730f.jpg)

![2023-03-28 19_21_25-Greenshot](https://user-images.githubusercontent.com/94680549/228311756-ec281e8f-d6bf-4c52-9798-8ceb4c482145.jpg)

![2023-03-28 19_21_36-Greenshot](https://user-images.githubusercontent.com/94680549/228311791-bdced351-3347-4cdd-a1fd-4d4cb72402c1.jpg)

![2023-03-28 19_21_43-Greenshot](https://user-images.githubusercontent.com/94680549/228311817-563683e2-304d-4dca-b13a-c547f495dcbb.jpg)

![2023-03-28 19_21_50-Greenshot](https://user-images.githubusercontent.com/94680549/228311849-6aef0ed0-e5f4-4c8d-aba3-ade3a1d10120.jpg)


2. Configure The Active Directory
![2023-03-28 19_23_21-Greenshot](https://user-images.githubusercontent.com/94680549/228312068-16d95fc0-1f7e-4821-b12d-1ad5a68de488.jpg)

Choose A DomainName Of Your Liking And Set A Password
![2023-03-28 19_23_51-Greenshot](https://user-images.githubusercontent.com/94680549/228312098-9fab7581-8d86-4cf6-b8bd-403dfae0998c.jpg)

![2023-03-28 19_24_40-Greenshot](https://user-images.githubusercontent.com/94680549/228312350-a406d93a-831e-4815-a554-8921f16edc1e.jpg)

![2023-03-28 19_24_52-Greenshot](https://user-images.githubusercontent.com/94680549/228312400-7d09eb97-b2ce-4d95-ae8b-70d4954b1ef3.jpg)

![2023-03-28 19_25_20-Greenshot](https://user-images.githubusercontent.com/94680549/228312437-2ad7b8a4-36bf-4f58-8f3c-06f8c74a0632.jpg)

![2023-03-28 19_25_38-Greenshot](https://user-images.githubusercontent.com/94680549/228312465-d9ab87d2-17ad-41ad-a1ee-a3821f3262b3.jpg)

![2023-03-28 19_25_57-Greenshot](https://user-images.githubusercontent.com/94680549/228312513-2e09a2b6-cae9-4e58-99d3-a11846ae8a41.jpg)

![2023-03-28 19_26_25-Greenshot](https://user-images.githubusercontent.com/94680549/228312543-c20c8d21-505b-41ce-968c-4a77d09f6ffa.jpg)

![2023-03-28 19_29_25-Greenshot](https://user-images.githubusercontent.com/94680549/228312586-0aaacf84-acd5-4083-8773-7a9cef72f1e7.jpg)


After The Server Has Restarted, We Need To Reconfigure The DNS Settings

```shell
Get-DNSClientServerAddress
```
![2](https://user-images.githubusercontent.com/94680549/228236889-f385f7d5-f5dd-4297-8268-fda7114b23dc.png)
As You Can See The DNS Has Changed To Local Network Which Puts It In A Loop

To Change It

```shell
Set-DNSClientServerAddress -InterfaceIndex {InterfaceIndex} -ServerAddress {StaticIPOfTheServer}
```
![3](https://user-images.githubusercontent.com/94680549/228237517-329090e1-bf22-40eb-bc94-a74804018440.png)




