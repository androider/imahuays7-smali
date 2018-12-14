.class public Lorg/seamless/util/mail/EmailSender;
.super Ljava/lang/Object;
.source "EmailSender.java"


# instance fields
.field protected final host:Ljava/lang/String;

.field protected final password:Ljava/lang/String;

.field protected final properties:Ljava/util/Properties;

.field protected final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/seamless/util/mail/EmailSender;->host:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/seamless/util/mail/EmailSender;->user:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lorg/seamless/util/mail/EmailSender;->password:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const-string v1, "mail.smtp.port"

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const-string v1, "mail.smtp.quitwait"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const-string v1, "mail.smtp.host"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const-string v0, "mail.smtp.starttls.enable"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 53
    iget-object p1, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const-string p2, "mail.smtp.auth"

    const-string p3, "true"

    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 41
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Host is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createConnectedTransport(Ljavax/mail/Session;)Ljavax/mail/Transport;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "smtp"

    .line 114
    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->user:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->user:Ljava/lang/String;

    iget-object v1, p0, Lorg/seamless/util/mail/EmailSender;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Transport;->connect()V

    :goto_0
    return-object p1
.end method

.method protected createContent(Lorg/seamless/util/mail/Email;)Ljavax/mail/Multipart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 96
    invoke-virtual {p1}, Lorg/seamless/util/mail/Email;->getPlaintext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    const-string v2, "alternative"

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 101
    invoke-virtual {p1}, Lorg/seamless/util/mail/Email;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 103
    invoke-virtual {p1}, Lorg/seamless/util/mail/Email;->getHtml()Ljava/lang/String;

    move-result-object p1

    const-string v2, "text/html"

    invoke-virtual {v0, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    :cond_0
    return-object v1
.end method

.method protected createSession()Ljavax/mail/Session;
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/seamless/util/mail/EmailSender;->user:Ljava/lang/String;

    return-object v0
.end method

.method public send(Lorg/seamless/util/mail/Email;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/seamless/util/mail/EmailSender;->createSession()Ljavax/mail/Session;

    move-result-object v0

    .line 76
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 78
    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lorg/seamless/util/mail/Email;->getSender()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    const/4 v2, 0x1

    .line 80
    new-array v2, v2, [Ljavax/mail/internet/InternetAddress;

    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lorg/seamless/util/mail/Email;->getRecipient()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 81
    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v3, v2}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 83
    invoke-virtual {p1}, Lorg/seamless/util/mail/Email;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 87
    invoke-virtual {p0, p1}, Lorg/seamless/util/mail/EmailSender;->createContent(Lorg/seamless/util/mail/Email;)Ljavax/mail/Multipart;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 89
    invoke-virtual {p0, v0}, Lorg/seamless/util/mail/EmailSender;->createConnectedTransport(Ljavax/mail/Session;)Ljavax/mail/Transport;

    move-result-object p1

    .line 90
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    .line 91
    invoke-virtual {p1}, Ljavax/mail/Transport;->close()V

    return-void
.end method
