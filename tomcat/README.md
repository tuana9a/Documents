# Tomcat

note about tomcat

## Directory Structure

(cấu trúc là cấu trúc không đc đạo chế thay đổi)

![tomcat-directory-structure.jpg](./img/tomcat-directory-structure.jpg)

## `web-app`

- là thư mục root chứa tất cả code, resource
    tên sẽ được dùng ở url prefix của tomcat

- ví dụ bạn để tên thư mục là tuana9a thì tất cả url sẽ được map từ /tuana9a/cái/gì/đó
    nếu đặt tên là ROOT thì url sẽ bắt đầu từ /

- một tomcat có thể có nhiều web-app độc lập
  - mỗi webapp là một project khác nhau được
  - các phần con còn lại là cấu trúc của web-app

## `WEB-INF/classes`

- chứa các class tự viết

## `WEB-INF/lib`

- chứa thư viện đi kèm của project đó
- VD:
  - mysql-connector-java-8.0.19.jar
  - javax.servlet.jar
  - jsoup-1.11.3.jar

## `WEB-INF/web.xml`

"deployment descriptor"
web container parse this to manipulate your app

## `web.xml`

cấu trúc web.xml (ngoài ra còn rất nhiều config khác)