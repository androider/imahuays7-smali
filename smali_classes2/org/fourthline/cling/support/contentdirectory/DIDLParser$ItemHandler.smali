.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;
.super Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler<",
        "Lorg/fourthline/cling/support/model/item/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 965
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    .line 993
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "item"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 994
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 995
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "In DIDL content, missing \'dc:title\' element for item: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 997
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object p1

    if-nez p1, :cond_1

    .line 998
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "In DIDL content, missing \'upnp:class\' element for item: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
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

    .line 970
    invoke-super {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    .line 972
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "res"

    .line 974
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 976
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResource(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/Res;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 978
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/item/Item;->addResource(Lorg/fourthline/cling/support/model/Res;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 979
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResHandler(Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;

    goto :goto_0

    :cond_1
    const-string p1, "desc"

    .line 982
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 984
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object p1

    .line 985
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/item/Item;->addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 986
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    :cond_2
    :goto_0
    return-void
.end method
