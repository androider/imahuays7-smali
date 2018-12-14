.class public Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;
.super Lorg/fourthline/cling/support/messagebox/model/Message;
.source "MessageIncomingCall.java"


# instance fields
.field private final callTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

.field private final callee:Lorg/fourthline/cling/support/messagebox/model/NumberName;

.field private final caller:Lorg/fourthline/cling/support/messagebox/model/NumberName;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;)V
    .locals 1

    .line 34
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;-><init>(Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;)V
    .locals 1

    .line 38
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->INCOMING_CALL:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/messagebox/model/Message;-><init>(Lorg/fourthline/cling/support/messagebox/model/Message$Category;Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;)V

    .line 39
    iput-object p2, p0, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->callTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    .line 40
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->callee:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    .line 41
    iput-object p4, p0, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->caller:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;)V
    .locals 1

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/DateTime;

    invoke-direct {v0}, Lorg/fourthline/cling/support/messagebox/model/DateTime;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;-><init>(Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Lorg/fourthline/cling/support/messagebox/model/NumberName;)V

    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->getCallTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;

    move-result-object v0

    const-string v1, "CallTime"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    .line 58
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->getCallee()Lorg/fourthline/cling/support/messagebox/model/NumberName;

    move-result-object v0

    const-string v1, "Callee"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    .line 59
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->getCaller()Lorg/fourthline/cling/support/messagebox/model/NumberName;

    move-result-object v0

    const-string v1, "Caller"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    return-void
.end method

.method public getCallTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->callTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getCallee()Lorg/fourthline/cling/support/messagebox/model/NumberName;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->callee:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    return-object v0
.end method

.method public getCaller()Lorg/fourthline/cling/support/messagebox/model/NumberName;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageIncomingCall;->caller:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    return-object v0
.end method
