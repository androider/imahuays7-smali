.class public Lorg/dom4j/tree/DefaultDocument;
.super Lorg/dom4j/tree/AbstractDocument;
.source "DefaultDocument.java"


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end field

.field private docType:Lorg/dom4j/DocumentType;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private transient entityResolver:Lorg/xml/sax/EntityResolver;

.field private name:Ljava/lang/String;

.field private rootElement:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 41
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 41
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 50
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 41
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 68
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 70
    iput-object p3, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentType;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 41
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 58
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 41
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 54
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Lorg/dom4j/DocumentType;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractDocument;-><init>()V

    .line 41
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 62
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 63
    iput-object p2, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method


# virtual methods
.method public addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/DocumentType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->setDocType(Lorg/dom4j/DocumentType;)V

    return-object p0
.end method

.method protected addNode(ILorg/dom4j/Node;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 265
    invoke-interface {p2}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Node already has an existing document: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance v0, Lorg/dom4j/IllegalAddException;

    invoke-direct {v0, p0, p2, p1}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 275
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    :cond_1
    return-void
.end method

.method protected addNode(Lorg/dom4j/Node;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 249
    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Node already has an existing document: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Lorg/dom4j/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    :cond_1
    return-void
.end method

.method public clearContent()V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 226
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 114
    invoke-super {p0}, Lorg/dom4j/tree/AbstractDocument;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/DefaultDocument;

    const/4 v1, 0x0

    .line 115
    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 116
    iput-object v1, v0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 117
    invoke-virtual {v0, p0}, Lorg/dom4j/tree/DefaultDocument;->appendContent(Lorg/dom4j/Branch;)V

    return-object v0
.end method

.method protected contentList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    .line 239
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    iget-object v1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDocType()Lorg/dom4j/DocumentType;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-object v0
.end method

.method protected getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lorg/dom4j/Element;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;
    .locals 3

    .line 151
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 153
    instance-of v2, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_0

    .line 154
    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    .line 156
    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public processingInstructions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 126
    instance-of v3, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_0

    .line 127
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public processingInstructions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/dom4j/ProcessingInstruction;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 138
    instance-of v3, v2, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_0

    .line 139
    check-cast v2, Lorg/dom4j/ProcessingInstruction;

    .line 141
    invoke-interface {v2}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultDocument;->childRemoved(Lorg/dom4j/Node;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeProcessingInstruction(Ljava/lang/String;)Z
    .locals 3

    .line 166
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 169
    instance-of v2, v1, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_0

    .line 170
    check-cast v1, Lorg/dom4j/ProcessingInstruction;

    .line 172
    invoke-interface {v1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected rootElementAdded(Lorg/dom4j/Element;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 295
    invoke-interface {p1, p0}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    .line 185
    invoke-virtual {p0}, Lorg/dom4j/tree/DefaultDocument;->contentRemoved()V

    .line 187
    instance-of v1, p1, Lorg/dom4j/tree/ContentListFacade;

    if-eqz v1, :cond_0

    .line 188
    check-cast p1, Lorg/dom4j/tree/ContentListFacade;

    invoke-virtual {p1}, Lorg/dom4j/tree/ContentListFacade;->getBackingList()Ljava/util/List;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 192
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    goto :goto_2

    .line 194
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 195
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/DefaultDocument;->createContentList(I)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 198
    invoke-interface {v2}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eq v3, p0, :cond_2

    .line 201
    invoke-interface {v2}, Lorg/dom4j/Node;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 204
    :cond_2
    instance-of v3, v2, Lorg/dom4j/Element;

    if-eqz v3, :cond_4

    .line 205
    iget-object v3, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    if-nez v3, :cond_3

    .line 206
    move-object v3, v2

    check-cast v3, Lorg/dom4j/Element;

    iput-object v3, p0, Lorg/dom4j/tree/DefaultDocument;->rootElement:Lorg/dom4j/Element;

    goto :goto_1

    .line 208
    :cond_3
    new-instance v0, Lorg/dom4j/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A document may only contain one root element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/dom4j/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_4
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/DefaultDocument;->childAdded(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 219
    :cond_5
    iput-object v0, p0, Lorg/dom4j/tree/DefaultDocument;->content:Ljava/util/List;

    :goto_2
    return-void
.end method

.method public setDocType(Lorg/dom4j/DocumentType;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->docType:Lorg/dom4j/DocumentType;

    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/dom4j/tree/DefaultDocument;->name:Ljava/lang/String;

    return-void
.end method
