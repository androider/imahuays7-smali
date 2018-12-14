.class Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RootHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/SAXParser$Handler<",
        "Lorg/fourthline/cling/support/lastchange/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;->this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 142
    invoke-direct {p0, p2}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;Lorg/seamless/xml/SAXParser;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;->this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 138
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 148
    sget-object p1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    sget-object p1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    new-instance p2, Lorg/fourthline/cling/support/lastchange/InstanceID;

    new-instance p3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p3, p1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/lastchange/InstanceID;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 152
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance p1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;

    iget-object p3, p0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$RootHandler;->this$0:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    invoke-direct {p1, p3, p2, p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$InstanceIDHandler;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/InstanceID;Lorg/seamless/xml/SAXParser$Handler;)V

    :cond_0
    return-void
.end method
