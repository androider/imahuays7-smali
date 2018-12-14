.class public Lorg/dom4j/util/NodeComparator;
.super Ljava/lang/Object;
.source "NodeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/dom4j/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lorg/dom4j/Node;

    check-cast p2, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I
    .locals 2

    .line 122
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I
    .locals 0

    .line 152
    invoke-interface {p1}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I
    .locals 2

    .line 85
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_2
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 168
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 171
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    return v0
.end method

.method public compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I
    .locals 4

    .line 95
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    if-nez v0, :cond_3

    .line 99
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    .line 100
    invoke-interface {p2}, Lorg/dom4j/Element;->attributeCount()I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 105
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 107
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I
    .locals 2

    .line 179
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I
    .locals 2

    .line 142
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I
    .locals 3

    .line 38
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    .line 39
    invoke-interface {p2}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    sub-int v1, v0, v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 78
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node types. node1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and node2: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_1
    check-cast p1, Lorg/dom4j/Namespace;

    check-cast p2, Lorg/dom4j/Namespace;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I

    move-result p1

    return p1

    .line 72
    :pswitch_2
    check-cast p1, Lorg/dom4j/DocumentType;

    check-cast p2, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result p1

    return p1

    .line 50
    :pswitch_3
    check-cast p1, Lorg/dom4j/Document;

    check-cast p2, Lorg/dom4j/Document;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I

    move-result p1

    return p1

    .line 69
    :pswitch_4
    check-cast p1, Lorg/dom4j/Comment;

    check-cast p2, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result p1

    return p1

    .line 65
    :pswitch_5
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    check-cast p2, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I

    move-result p1

    return p1

    .line 62
    :pswitch_6
    check-cast p1, Lorg/dom4j/Entity;

    check-cast p2, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I

    move-result p1

    return p1

    .line 59
    :pswitch_7
    check-cast p1, Lorg/dom4j/CDATA;

    check-cast p2, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result p1

    return p1

    .line 56
    :pswitch_8
    check-cast p1, Lorg/dom4j/Text;

    check-cast p2, Lorg/dom4j/Text;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result p1

    return p1

    .line 53
    :pswitch_9
    check-cast p1, Lorg/dom4j/Attribute;

    check-cast p2, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result p1

    return p1

    .line 47
    :pswitch_a
    check-cast p1, Lorg/dom4j/Element;

    check-cast p2, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I
    .locals 2

    .line 189
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I
    .locals 2

    .line 132
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I
    .locals 4

    .line 199
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v0

    .line 200
    invoke-interface {p2}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 205
    invoke-interface {p1, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 206
    invoke-interface {p2, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 207
    invoke-virtual {p0, v1, v3}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
