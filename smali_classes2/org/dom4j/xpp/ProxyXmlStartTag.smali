.class public Lorg/dom4j/xpp/ProxyXmlStartTag;
.super Ljava/lang/Object;
.source "ProxyXmlStartTag.java"

# interfaces
.implements Lorg/gjt/xpp/XmlStartTag;


# instance fields
.field private element:Lorg/dom4j/Element;

.field private factory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    .line 42
    iput-object p1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .line 178
    invoke-static {p3, p1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 179
    iget-object p2, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {p2, p1, p4}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    if-eqz p5, :cond_1

    const-string p2, ""

    const/16 p4, 0x3a

    .line 187
    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    if-lez p4, :cond_0

    const/4 p2, 0x0

    .line 190
    invoke-virtual {p3, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 193
    :cond_0
    iget-object p3, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {p3, p2, p1}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {p3, p1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {p2, p1, p4}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    :goto_0
    return-void
.end method

.method public ensureAttributesCapacity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    instance-of v0, v0, Lorg/dom4j/tree/AbstractElement;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    check-cast v0, Lorg/dom4j/tree/AbstractElement;

    .line 204
    invoke-virtual {v0, p1}, Lorg/dom4j/tree/AbstractElement;->ensureAttributesCapacity(I)V

    :cond_0
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeNamespaceUri(I)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeRawName(I)Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeValueFromName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    .line 139
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeValueFromRawName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    .line 124
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getElement()Lorg/dom4j/Element;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAttributeNamespaceDeclaration(I)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "xmlns"

    .line 154
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public modifyTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 241
    iget-object p2, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {p2, p3, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    return-void
.end method

.method public removeAtttributes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setAttributes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public resetStartTag()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    return-void
.end method

.method public resetTag()V
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->element:Lorg/dom4j/Element;

    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lorg/dom4j/xpp/ProxyXmlStartTag;->factory:Lorg/dom4j/DocumentFactory;

    return-void
.end method
