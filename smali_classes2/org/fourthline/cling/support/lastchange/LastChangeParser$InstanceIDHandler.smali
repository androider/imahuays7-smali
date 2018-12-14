.class Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstanceIDHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/SAXParser$Handler<",
        "Lorg/fourthline/cling/support/lastchange/InstanceID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/InstanceID;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;->this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 162
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 188
    sget-object p1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->equals(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 168
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    new-array p1, p1, [Ljava/util/Map$Entry;

    const/4 p3, 0x0

    .line 169
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    .line 170
    new-instance v0, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    .line 172
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    :try_start_0
    iget-object p3, p0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;->this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    invoke-virtual {p3, p2, p1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->createValue(Ljava/lang/String;[Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/lastchange/InstanceID;

    invoke-virtual {p2}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 182
    invoke-static {}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error reading event XML, ignoring value: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
