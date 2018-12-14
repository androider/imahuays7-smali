.class public Lorg/dom4j/util/IndexedElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "IndexedElement.java"


# instance fields
.field private attributeIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private elementIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    return-void
.end method


# virtual methods
.method protected addNode(Lorg/dom4j/Node;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->addNode(Lorg/dom4j/Node;)V

    .line 140
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_1

    .line 143
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected addToAttributeIndex(Lorg/dom4j/Attribute;)V
    .locals 2

    .line 249
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    .line 252
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    return-void
.end method

.method protected addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 219
    check-cast v0, Ljava/util/List;

    .line 220
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createList()Ljava/util/List;

    move-result-object v1

    .line 223
    check-cast v0, Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object p2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected addToElementIndex(Lorg/dom4j/Element;)V
    .locals 2

    .line 206
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 209
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    return-void
.end method

.method protected asElement(Ljava/lang/Object;)Lorg/dom4j/Element;
    .locals 2

    .line 92
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lorg/dom4j/Element;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 95
    check-cast p1, Ljava/util/List;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Element;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected asElementIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method protected asElementList(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .line 106
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->createSingleResultList(Lorg/dom4j/Node;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 109
    check-cast p1, Ljava/util/List;

    .line 110
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 113
    invoke-virtual {v0, v1}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    goto :goto_0

    :cond_1
    return-object v0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createEmptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Attribute;

    return-object p1
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/Attribute;

    return-object p1
.end method

.method protected attributeIndex()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createAttributeIndex()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    .line 165
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, v1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    return-object v0
.end method

.method protected createAttributeIndex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/dom4j/Attribute;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createIndex()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected createElementIndex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createIndex()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected createIndex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/dom4j/Node;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElement(Ljava/lang/Object;)Lorg/dom4j/Element;

    move-result-object p1

    return-object p1
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElement(Ljava/lang/Object;)Lorg/dom4j/Element;

    move-result-object p1

    return-object p1
.end method

.method protected elementIndex()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createElementIndex()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    .line 177
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    invoke-virtual {p0, v1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    return-object v0
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/QName;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 274
    iget-object p2, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected removeFromAttributeIndex(Lorg/dom4j/Attribute;)V
    .locals 2

    .line 264
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    .line 267
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    return-void
.end method

.method protected removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Ljava/util/List;

    .line 242
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    iget-object p2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected removeFromElementIndex(Lorg/dom4j/Element;)V
    .locals 2

    .line 231
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 234
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    return-void
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Lorg/dom4j/Element;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_1

    .line 152
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Lorg/dom4j/Attribute;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
