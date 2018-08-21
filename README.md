# What does this do?
This project makes it easy to spin up a simple backend server to power suggestion boxes, contact boxes, or any similar idea on your websites.

## How to setup (Heroku)
1. Fork this repo
2. On Heroku, create a new project and name it whatever you want.
3. Link that heroku project to the newly forked repo
4. In Heroku, you will need to set up a couple of environment variables to make this work. (see table below) I suggest creating a new email address just for sending these notification emails.
5. In Heroku, under the settings menu for your new project, you will see `Domain` with the domain of your newly created project. It will be `https://<project-name>.herokuapp.com\`
6. Once you have your env variables set up, you can try out the app by doing a curl POST request to '`DOMAIN`/mails'.
Example: ```curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"mail":{"source":"Test curl","name":"Person","email":"test@mail.com","body":"Hi I am a real person","time":"11:11"}}' \
  https://<project-name>herokuapp.com/mails```

|Name|Purpose|
|----|-------|
|RECIPIENT_EMAIL | the email address you wish to receive notification emails at|
|SENDER_EMAIL | the email address you wish to have the notification emails sent from|
|SENDER_PASSWORD | the password for SENDER_EMAIL's email account ([Note](https://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail) for Gmail Users)|

# How to Use
* The `/mails` endpoint accepts POST requests with a JSON containing a single `mail` object.
```
{
    "mail":{
      "source":"Where this notification is from",
      "name":"Name of person who created this notification",
      "body":"Message of this notification",
      "time":"Time the notification was created"
      }
}
```
