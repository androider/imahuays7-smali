.class public Lorg/seamless/xml/SAXParser$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/xml/SAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xml/sax/helpers/DefaultHandler;"
    }
.end annotation


# instance fields
.field protected attributes:Lorg/xml/sax/Attributes;

.field protected characters:Ljava/lang/StringBuilder;

.field protected instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field protected parent:Lorg/seamless/xml/SAXParser$Handler;

.field protected parser:Lorg/seamless/xml/SAXParser;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0, v0}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .line 148
    invoke-virtual {p2}, Lorg/seamless/xml/SAXParser$Handler;->getParser()Lorg/seamless/xml/SAXParser;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, v0}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser;",
            "Lorg/seamless/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    .line 152
    iput-object p1, p0, Lorg/seamless/xml/SAXParser$Handler;->instance:Ljava/lang/Object;

    .line 153
    iput-object p2, p0, Lorg/seamless/xml/SAXParser$Handler;->parser:Lorg/seamless/xml/SAXParser;

    .line 154
    iput-object p3, p0, Lorg/seamless/xml/SAXParser$Handler;->parent:Lorg/seamless/xml/SAXParser$Handler;

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p2, p0}, Lorg/seamless/xml/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;->isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-static {}, Lorg/seamless/xml/SAXParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": last element, switching to parent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->switchToParent()V

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lorg/seamless/xml/SAXParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ending: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method

.method protected getAttributes()Lorg/xml/sax/Attributes;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->attributes:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method public getCharacters()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lorg/seamless/xml/SAXParser$Handler;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->parent:Lorg/seamless/xml/SAXParser$Handler;

    return-object v0
.end method

.method public getParser()Lorg/seamless/xml/SAXParser;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->parser:Lorg/seamless/xml/SAXParser;

    return-object v0
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/seamless/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    .line 187
    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1, p4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object p1, p0, Lorg/seamless/xml/SAXParser$Handler;->attributes:Lorg/xml/sax/Attributes;

    .line 188
    invoke-static {}, Lorg/seamless/xml/SAXParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " starting: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method

.method protected switchToParent()V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->parser:Lorg/seamless/xml/SAXParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->parent:Lorg/seamless/xml/SAXParser$Handler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->parser:Lorg/seamless/xml/SAXParser;

    iget-object v1, p0, Lorg/seamless/xml/SAXParser$Handler;->parent:Lorg/seamless/xml/SAXParser$Handler;

    invoke-virtual {v0, v1}, Lorg/seamless/xml/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/seamless/xml/SAXParser$Handler;->attributes:Lorg/xml/sax/Attributes;

    :cond_0
    return-void
.end method
