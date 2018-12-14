.class public abstract Lorg/fourthline/cling/support/messagebox/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/fourthline/cling/support/messagebox/model/ElementAppender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;,
        Lorg/fourthline/cling/support/messagebox/model/Message$Category;
    }
.end annotation


# instance fields
.field private final category:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

.field private displayType:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

.field private final id:I

.field protected final randomGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>(ILorg/fourthline/cling/support/messagebox/model/Message$Category;Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->randomGenerator:Ljava/util/Random;

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->randomGenerator:Ljava/util/Random;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 68
    :cond_0
    iput p1, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->id:I

    .line 69
    iput-object p2, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->category:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    .line 70
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->displayType:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/Message$Category;Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, p1, p2}, Lorg/fourthline/cling/support/messagebox/model/Message;-><init>(ILorg/fourthline/cling/support/messagebox/model/Message$Category;Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    check-cast p1, Lorg/fourthline/cling/support/messagebox/model/Message;

    .line 92
    iget v2, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->id:I

    iget p1, p1, Lorg/fourthline/cling/support/messagebox/model/Message;->id:I

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getCategory()Lorg/fourthline/cling/support/messagebox/model/Message$Category;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->category:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    return-object v0
.end method

.method public getDisplayType()Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->displayType:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->id:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/fourthline/cling/support/messagebox/model/Message;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 105
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;-><init>()V

    .line 106
    invoke-virtual {v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDocument()Lorg/seamless/xml/DOM;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    .line 108
    invoke-virtual {v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v1, v2, v3}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;->createRoot(Ljavax/xml/xpath/XPath;Ljava/lang/String;)Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    move-result-object v2

    const-string v3, "Category"

    .line 109
    invoke-virtual {v2, v3}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/Message;->getCategory()Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    move-result-object v4

    iget-object v4, v4, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    const-string v3, "DisplayType"

    .line 110
    invoke-virtual {v2, v3}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/Message;->getDisplayType()Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    move-result-object v4

    iget-object v4, v4, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 111
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/messagebox/model/Message;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2, v2}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<Message xmlns=\"urn:samsung-com:messagebox-1-0\">"

    const-string v2, ""

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "</Message>"

    const-string v2, ""

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/seamless/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
