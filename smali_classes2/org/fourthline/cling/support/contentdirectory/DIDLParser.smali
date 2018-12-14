.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.super Lorg/seamless/xml/SAXParser;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;,
        Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;,
        Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;,
        Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;,
        Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;,
        Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
    }
.end annotation


# static fields
.field public static final UNKNOWN_TITLE:Ljava/lang/String; = "Unknown Title"

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/seamless/xml/SAXParser;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 78
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 241
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V
    .locals 2

    .line 607
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 603
    invoke-static {p1, p2, p4, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 610
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "name"

    .line 611
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string p2, "includeDerived"

    .line 613
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->isIncludeDerived()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/w3c/dom/Element;",
            "Lorg/fourthline/cling/support/model/DIDLObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property$NAMESPACE;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 595
    invoke-virtual {p3, p5}, Lorg/fourthline/cling/support/model/DIDLObject;->getPropertiesByNamespace(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;

    move-result-object p3

    array-length p5, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    aget-object v1, p3, v0

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p6, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 597
    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 598
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->setOnElement(Lorg/w3c/dom/Element;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected booleanToInt(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    return-object p1
.end method

.method protected buildDOM(Lorg/fourthline/cling/support/model/DIDLContent;Z)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 329
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 331
    invoke-virtual {p0, p1, v0, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateRoot(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/w3c/dom/Document;Z)V

    return-object v0
.end method

.method protected createContainer(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 3

    .line 144
    new-instance v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    const-string v1, "id"

    .line 146
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    const-string v1, "parentID"

    .line 147
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    const-string v1, "childCount"

    .line 149
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "childCount"

    .line 150
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 153
    :cond_0
    :try_start_0
    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    const-string v2, "restricted"

    .line 154
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-interface {v1, v2}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->setRestricted(Z)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 159
    :cond_1
    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    const-string v2, "searchable"

    .line 160
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-interface {v1, p1}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/container/Container;->setSearchable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method protected createContainerHandler(Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;
    .locals 1

    .line 127
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;
    .locals 2

    .line 248
    new-instance v0, Lorg/fourthline/cling/support/model/DescMeta;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DescMeta;-><init>()V

    const-string v1, "id"

    .line 250
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DescMeta;->setId(Ljava/lang/String;)V

    const-string v1, "type"

    .line 252
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    .line 253
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DescMeta;->setType(Ljava/lang/String;)V

    :cond_0
    const-string v1, "nameSpace"

    .line 255
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "nameSpace"

    .line 256
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/DescMeta;->setNameSpace(Ljava/net/URI;)V

    :cond_1
    return-object v0
.end method

.method protected createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;
    .locals 1

    .line 139
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createItem(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/item/Item;
    .locals 3

    .line 172
    new-instance v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/item/Item;-><init>()V

    const-string v1, "id"

    .line 174
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    const-string v1, "parentID"

    .line 175
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/item/Item;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 178
    :try_start_0
    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    const-string v2, "restricted"

    .line 179
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {v1, v2}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/item/Item;->setRestricted(Z)Lorg/fourthline/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v1, "refID"

    .line 188
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "refID"

    .line 189
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/item/Item;->setRefID(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method protected createItemHandler(Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;
    .locals 1

    .line 131
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createResHandler(Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;
    .locals 1

    .line 135
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createResource(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/Res;
    .locals 3

    .line 195
    new-instance v0, Lorg/fourthline/cling/support/model/Res;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/Res;-><init>()V

    const-string v1, "importUri"

    .line 197
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "importUri"

    .line 198
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setImportUri(Ljava/net/URI;)V

    .line 201
    :cond_0
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    const-string v2, "protocolInfo"

    .line 202
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setProtocolInfo(Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "size"

    .line 209
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "size"

    .line 210
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setSize(Ljava/lang/Long;)V

    :cond_1
    const-string v1, "duration"

    .line 212
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "duration"

    .line 213
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setDuration(Ljava/lang/String;)V

    :cond_2
    const-string v1, "bitrate"

    .line 215
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "bitrate"

    .line 216
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setBitrate(Ljava/lang/Long;)V

    :cond_3
    const-string v1, "sampleFrequency"

    .line 218
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "sampleFrequency"

    .line 219
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setSampleFrequency(Ljava/lang/Long;)V

    :cond_4
    const-string v1, "bitsPerSample"

    .line 221
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "bitsPerSample"

    .line 222
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setBitsPerSample(Ljava/lang/Long;)V

    :cond_5
    const-string v1, "nrAudioChannels"

    .line 224
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "nrAudioChannels"

    .line 225
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setNrAudioChannels(Ljava/lang/Long;)V

    :cond_6
    const-string v1, "colorDepth"

    .line 227
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "colorDepth"

    .line 228
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setColorDepth(Ljava/lang/Long;)V

    :cond_7
    const-string v1, "protection"

    .line 230
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "protection"

    .line 231
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setProtection(Ljava/lang/String;)V

    :cond_8
    const-string v1, "resolution"

    .line 233
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "resolution"

    .line 234
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/Res;->setResolution(Ljava/lang/String;)V

    :cond_9
    return-object v0

    :catch_0
    move-exception p1

    .line 205
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In DIDL content, invalid resource protocol info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createRootHandler(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;
    .locals 1

    .line 123
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)V

    return-object v0
.end method

.method public debugXML(Ljava/lang/String;)V
    .locals 3

    .line 626
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v1, "-------------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 628
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 629
    sget-object p1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v0, "-------------------------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected documentToString(Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "omit-xml-declaration"

    const-string v1, "yes"

    .line 313
    invoke-virtual {v0, p2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 320
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p1, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v1, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 321
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/fourthline/cling/support/model/DIDLContent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generate(Lorg/fourthline/cling/support/model/DIDLContent;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/fourthline/cling/support/model/DIDLContent;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->buildDOM(Lorg/fourthline/cling/support/model/DIDLContent;Z)Lorg/w3c/dom/Document;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->documentToString(Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected generateContainer(Lorg/fourthline/cling/support/model/container/Container;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)V
    .locals 8

    .line 363
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing \'upnp:class\' element for container: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "container"

    .line 367
    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 369
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing id on container: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "id"

    .line 371
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getParentID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 374
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing parent id on container: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string v0, "parentID"

    .line 375
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getParentID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "childCount"

    .line 378
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "restricted"

    .line 381
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->booleanToInt(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchable"

    .line 382
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->isSearchable()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->booleanToInt(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 386
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \'dc:title\' element for container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v0, "Unknown Title"

    :cond_4
    const-string v1, "dc:title"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    .line 390
    invoke-static {p2, p3, v1, v0, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "dc:creator"

    .line 402
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getCreator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    .line 398
    invoke-static {p2, p3, v0, v1, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "upnp:writeStatus"

    .line 410
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v1

    const-string v2, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 406
    invoke-static {p2, p3, v0, v1, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 414
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v4

    const-string v5, "upnp:class"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    .line 416
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v5, "upnp:searchClass"

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 417
    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    goto :goto_0

    .line 420
    :cond_5
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v5, "upnp:createClass"

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 421
    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string v5, "upnp"

    .line 424
    const-class v6, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;

    const-string v7, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v5, "dc"

    .line 425
    const-class v6, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$NAMESPACE;

    const-string v7, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 428
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    if-nez v0, :cond_7

    goto :goto_2

    .line 430
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateItem(Lorg/fourthline/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 434
    :cond_8
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getResources()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    if-nez v0, :cond_9

    goto :goto_3

    .line 436
    :cond_9
    invoke-virtual {p0, v0, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateResource(Lorg/fourthline/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 439
    :cond_a
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getDescMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/fourthline/cling/support/model/DescMeta;

    if-nez p4, :cond_b

    goto :goto_4

    .line 441
    :cond_b
    invoke-virtual {p0, p4, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method protected generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 547
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 548
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing id of description metadata: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 550
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getNameSpace()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_1

    .line 551
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing namespace of description metadata: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "desc"

    .line 554
    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    const-string p3, "id"

    .line 555
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "nameSpace"

    .line 556
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getNameSpace()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p3, "type"

    .line 558
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_2
    invoke-virtual {p0, p2, p1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->populateDescMetadata(Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DescMeta;)V

    return-void
.end method

.method protected generateItem(Lorg/fourthline/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 8

    .line 447
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing \'upnp:class\' element for item: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "item"

    .line 451
    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 453
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 454
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing id on item: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "id"

    .line 455
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getParentID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 458
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing parent id on item: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string v0, "parentID"

    .line 459
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getParentID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "refID"

    .line 462
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "restricted"

    .line 463
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->booleanToInt(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 467
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \'dc:title\' element for item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v0, "Unknown Title"

    :cond_4
    const-string v1, "dc:title"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    .line 471
    invoke-static {p2, p3, v1, v0, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "dc:creator"

    .line 483
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getCreator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    .line 479
    invoke-static {p2, p3, v0, v1, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    const-string v0, "upnp:writeStatus"

    .line 491
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v1

    const-string v2, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 487
    invoke-static {p2, p3, v0, v1, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 495
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v4

    const-string v5, "upnp:class"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    const-string v5, "upnp"

    .line 497
    const-class v6, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;

    const-string v7, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v5, "dc"

    .line 498
    const-class v6, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$NAMESPACE;

    const-string v7, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    const-string v5, "sec"

    .line 499
    const-class v6, Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$NAMESPACE;

    const-string v7, "http://www.sec.co.kr/"

    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/Res;

    if-nez v1, :cond_5

    goto :goto_0

    .line 503
    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateResource(Lorg/fourthline/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 506
    :cond_6
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getDescMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DescMeta;

    if-nez v0, :cond_7

    goto :goto_1

    .line 508
    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method protected generateResource(Lorg/fourthline/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 514
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 515
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing resource URI value"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 517
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 518
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing resource protocol info: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "res"

    .line 521
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object p2

    const-string p3, "protocolInfo"

    .line 522
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getImportUri()Ljava/net/URI;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p3, "importUri"

    .line 524
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getImportUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string p3, "size"

    .line 526
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string p3, "duration"

    .line 528
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_4
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_5

    const-string p3, "bitrate"

    .line 530
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_5
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_6

    const-string p3, "sampleFrequency"

    .line 532
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_6
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_7

    const-string p3, "bitsPerSample"

    .line 534
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_7
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_8

    const-string p3, "nrAudioChannels"

    .line 536
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_8
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getColorDepth()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string p3, "colorDepth"

    .line 538
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getColorDepth()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_9
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtection()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    const-string p3, "protection"

    .line 540
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtection()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_a
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    const-string p3, "resolution"

    .line 542
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected generateRoot(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/w3c/dom/Document;Z)V
    .locals 4

    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    const-string v1, "DIDL-Lite"

    .line 337
    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 338
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns:upnp"

    const-string v3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 341
    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns:dc"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 342
    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns:sec"

    const-string v3, "http://www.sec.co.kr/"

    .line 343
    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/support/model/container/Container;

    if-nez v2, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p0, v2, p2, v0, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateContainer(Lorg/fourthline/cling/support/model/container/Container;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/model/item/Item;

    if-nez v1, :cond_2

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {p0, v1, p2, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateItem(Lorg/fourthline/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 355
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getDescMetadata()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fourthline/cling/support/model/DescMeta;

    if-nez p3, :cond_4

    goto :goto_2

    .line 357
    :cond_4
    invoke-virtual {p0, p3, p2, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    .line 115
    invoke-virtual {p0, v0, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createRootHandler(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;

    .line 117
    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v2, "Parsing DIDL XML content"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Lorg/xml/sax/InputSource;)V

    return-object v0

    .line 111
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null or empty XML"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseResource(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-static {p1}, Lorg/seamless/util/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method

.method protected populateDescMetadata(Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DescMeta;)V
    .locals 4

    .line 574
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Document;

    .line 577
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    .line 578
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 579
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 580
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 583
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 584
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    sget-object p1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown desc metadata content, please override populateDescMetadata(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
