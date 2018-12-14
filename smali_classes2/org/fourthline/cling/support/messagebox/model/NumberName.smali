.class public Lorg/fourthline/cling/support/messagebox/model/NumberName;
.super Ljava/lang/Object;
.source "NumberName.java"

# interfaces
.implements Lorg/fourthline/cling/support/messagebox/model/ElementAppender;


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/model/NumberName;->number:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/fourthline/cling/support/messagebox/model/NumberName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V
    .locals 2

    const-string v0, "Number"

    .line 42
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    const-string v0, "Name"

    .line 43
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/NumberName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/NumberName;->number:Ljava/lang/String;

    return-object v0
.end method
