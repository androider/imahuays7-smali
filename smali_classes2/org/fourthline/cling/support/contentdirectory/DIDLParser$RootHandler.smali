.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/SAXParser$Handler<",
        "Lorg/fourthline/cling/support/model/DIDLContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 837
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V

    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    .line 869
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DIDL-Lite"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 873
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->replaceGenericContainerAndItems()V

    const/4 p1, 0x1

    return p1

    :cond_0
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

    .line 842
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    .line 844
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "container"

    .line 846
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 848
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createContainer(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/container/Container;

    move-result-object p1

    .line 849
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/DIDLContent;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 850
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createContainerHandler(Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    goto :goto_0

    :cond_1
    const-string p1, "item"

    .line 852
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 854
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItem(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/item/Item;

    move-result-object p1

    .line 855
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/DIDLContent;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 856
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItemHandler(Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;

    goto :goto_0

    :cond_2
    const-string p1, "desc"

    .line 858
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 860
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object p1

    .line 861
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/DIDLContent;->addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 862
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    :cond_3
    :goto_0
    return-void
.end method
