.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;
.super Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler<",
        "Lorg/fourthline/cling/support/model/container/Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 883
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 924
    invoke-super {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 926
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "searchClass"

    .line 928
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 929
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 931
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    .line 932
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 933
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v2

    const-string v3, "includeDerived"

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 929
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "createClass"

    .line 936
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 937
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 939
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    .line 940
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 941
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v2

    const-string v3, "includeDerived"

    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 937
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    .line 950
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "container"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 951
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 952
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "In DIDL content, missing \'dc:title\' element for container: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 954
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object p1

    if-nez p1, :cond_1

    .line 955
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "In DIDL content, missing \'upnp:class\' element for container: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

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

    .line 888
    invoke-super {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    .line 890
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "item"

    .line 892
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 894
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItem(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/item/Item;

    move-result-object p1

    .line 895
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/container/Container;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;

    .line 896
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItemHandler(Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;

    goto :goto_0

    :cond_1
    const-string p1, "desc"

    .line 898
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 900
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object p1

    .line 901
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/container/Container;->addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 902
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0

    :cond_2
    const-string p1, "res"

    .line 904
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 906
    iget-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p1, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResource(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/Res;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 908
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/container/Container;->addResource(Lorg/fourthline/cling/support/model/Res;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 909
    iget-object p2, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {p2, p1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResHandler(Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;

    :cond_3
    :goto_0
    return-void
.end method
