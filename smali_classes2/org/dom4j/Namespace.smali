.class public Lorg/dom4j/Namespace;
.super Lorg/dom4j/tree/AbstractNode;
.source "Namespace.java"


# static fields
.field protected static final CACHE:Lorg/dom4j/tree/NamespaceCache;

.field public static final NO_NAMESPACE:Lorg/dom4j/Namespace;

.field public static final XML_NAMESPACE:Lorg/dom4j/Namespace;


# instance fields
.field private hashCode:I

.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lorg/dom4j/tree/NamespaceCache;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceCache;-><init>()V

    sput-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    .line 26
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    .line 30
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractNode;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 50
    :goto_0
    iput-object p1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 51
    :goto_1
    iput-object p2, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1

    .line 79
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .locals 1

    .line 66
    sget-object v0, Lorg/dom4j/Namespace;->CACHE:Lorg/dom4j/tree/NamespaceCache;

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/NamespaceCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 0

    .line 227
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public asXML()Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 210
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "xmlns:"

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "=\""

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "xmlns=\""

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_0
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createHashCode()I
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const v0, 0xbabe

    :cond_0
    return v0
.end method

.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 3

    .line 231
    new-instance v0, Lorg/dom4j/tree/DefaultNamespace;

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/dom4j/tree/DefaultNamespace;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lorg/dom4j/Namespace;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 129
    check-cast p1, Lorg/dom4j/Namespace;

    .line 132
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 133
    iget-object v1, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 177
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 180
    invoke-interface {v1, p1}, Lorg/dom4j/Element;->getPath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x2f

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getXPathNameStep()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/dom4j/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 194
    invoke-interface {v1, p1}, Lorg/dom4j/Element;->getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x2f

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getXPathNameStep()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXPathNameStep()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "namespace::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/dom4j/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "namespace::*[name()=\'\']"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/dom4j/Namespace;->hashCode:I

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->createHashCode()I

    move-result v0

    iput v0, p0, Lorg/dom4j/Namespace;->hashCode:I

    .line 97
    :cond_0
    iget v0, p0, Lorg/dom4j/Namespace;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Namespace: prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
