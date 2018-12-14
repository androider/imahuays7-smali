.class public abstract Lorg/dom4j/tree/AbstractDocument;
.super Lorg/dom4j/tree/AbstractBranch;
.source "AbstractDocument.java"

# interfaces
.implements Lorg/dom4j/Document;


# instance fields
.field protected encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractBranch;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/dom4j/Visitor;)V
    .locals 2

    .line 99
    invoke-interface {p1, p0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/Document;)V

    .line 101
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p1, v0}, Lorg/dom4j/Visitor;->visit(Lorg/dom4j/DocumentType;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->content()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 112
    invoke-interface {v1, p1}, Lorg/dom4j/Node;->accept(Lorg/dom4j/Visitor;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public add(Lorg/dom4j/Element;)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->checkAddElementAllowed(Lorg/dom4j/Element;)V

    .line 185
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 186
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    return-void
.end method

.method public addComment(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createComment(Ljava/lang/String;)Lorg/dom4j/Comment;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Comment;)V

    return-object p0
.end method

.method public addElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    return-object p1
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    return-object p1
.end method

.method public addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/Element;)V

    return-object p1
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/ProcessingInstruction;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    return-object p0
.end method

.method public addProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/dom4j/Document;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/dom4j/ProcessingInstruction;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->add(Lorg/dom4j/ProcessingInstruction;)V

    return-object p0
.end method

.method public asXML()Ljava/lang/String;
    .locals 4

    .line 65
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 69
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 70
    new-instance v2, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v2, v1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 71
    invoke-virtual {v2, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 72
    invoke-virtual {v2}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 74
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while generating textual representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 0

    return-object p0
.end method

.method protected checkAddElementAllowed(Lorg/dom4j/Element;)V
    .locals 4

    .line 219
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Lorg/dom4j/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add another element to this Document as it already has a root element of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {v0}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lorg/dom4j/IllegalAddException;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/Node;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected childAdded(Lorg/dom4j/Node;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1, p0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    :cond_0
    return-void
.end method

.method protected childRemoved(Lorg/dom4j/Node;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-interface {p1, v0}, Lorg/dom4j/Node;->setDocument(Lorg/dom4j/Document;)V

    :cond_0
    return-void
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 0

    return-object p0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getPath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 0

    const-string p1, "/"

    return-object p1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lorg/dom4j/Element;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
    .locals 0

    const-string p1, "/"

    return-object p1
.end method

.method public getXMLEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lorg/dom4j/Element;->normalize()V

    :cond_0
    return-void
.end method

.method public remove(Lorg/dom4j/Element;)Z
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->remove(Lorg/dom4j/Element;)Z

    move-result v0

    .line 191
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/AbstractDocument;->setRootElement(Lorg/dom4j/Element;)V

    .line 197
    :cond_0
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    return v0
.end method

.method protected abstract rootElementAdded(Lorg/dom4j/Element;)V
.end method

.method public setRootElement(Lorg/dom4j/Element;)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->clearContent()V

    if-eqz p1, :cond_0

    .line 178
    invoke-super {p0, p1}, Lorg/dom4j/tree/AbstractBranch;->add(Lorg/dom4j/Element;)V

    .line 179
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/AbstractDocument;->rootElementAdded(Lorg/dom4j/Element;)V

    :cond_0
    return-void
.end method

.method public setXMLEncoding(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Document: name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/dom4j/tree/AbstractDocument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 83
    iget-object v1, p0, Lorg/dom4j/tree/AbstractDocument;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v1, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 86
    invoke-virtual {v1, p0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    return-void
.end method
