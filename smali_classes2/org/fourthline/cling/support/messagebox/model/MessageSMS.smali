.class public Lorg/fourthline/cling/support/messagebox/model/MessageSMS;
.super Lorg/fourthline/cling/support/messagebox/model/Message;
.source "MessageSMS.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final receiveTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

.field private final receiver:Lorg/fourthline/cling/support/messagebox/model/NumberName;

.field private final sender:Lorg/fourthline/cling/support/messagebox/model/NumberName;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V
    .locals 6

    .line 37
    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;-><init>(Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->SMS:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/messagebox/model/Message;-><init>(Lorg/fourthline/cling/support/messagebox/model/Message$Category;Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;)V

    .line 42
    iput-object p2, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->receiveTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    .line 43
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->receiver:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    .line 44
    iput-object p4, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->sender:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    .line 45
    iput-object p5, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->body:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V
    .locals 1

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/DateTime;

    invoke-direct {v0}, Lorg/fourthline/cling/support/messagebox/model/DateTime;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;-><init>(Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->getReceiveTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;

    move-result-object v0

    const-string v1, "ReceiveTime"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->getReceiver()Lorg/fourthline/cling/support/messagebox/model/NumberName;

    move-result-object v0

    const-string v1, "Receiver"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    .line 67
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->getSender()Lorg/fourthline/cling/support/messagebox/model/NumberName;

    move-result-object v0

    const-string v1, "Sender"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    const-string v0, "Body"

    .line 68
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->receiveTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getReceiver()Lorg/fourthline/cling/support/messagebox/model/NumberName;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->receiver:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    return-object v0
.end method

.method public getSender()Lorg/fourthline/cling/support/messagebox/model/NumberName;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageSMS;->sender:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    return-object v0
.end method
