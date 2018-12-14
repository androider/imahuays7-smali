.class public Lorg/dom4j/io/DOMWriter;
.super Ljava/lang/Object;
.source "DOMWriter.java"


# static fields
.field private static final DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

.field private static loggedWarning:Z = false


# instance fields
.field private domDocumentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.apache.xerces.dom.DocumentImpl"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "gnu.xml.dom.DomDocument"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "org.apache.crimson.tree.XmlDocument"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.sun.xml.tree.XmlDocument"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "oracle.xml.parser.v2.XMLDocument"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "oracle.xml.parser.XMLDocument"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "org.dom4j.dom.DOMDocument"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 48
    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 224
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/List<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 142
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_1

    .line 143
    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V

    goto :goto_0

    .line 144
    :cond_1
    instance-of v1, v0, Lorg/dom4j/Text;

    if-eqz v1, :cond_2

    .line 145
    check-cast v0, Lorg/dom4j/Text;

    .line 146
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    instance-of v1, v0, Lorg/dom4j/CDATA;

    if-eqz v1, :cond_3

    .line 148
    check-cast v0, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V

    goto :goto_0

    .line 149
    :cond_3
    instance-of v1, v0, Lorg/dom4j/Comment;

    if-eqz v1, :cond_4

    .line 150
    check-cast v0, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V

    goto :goto_0

    .line 151
    :cond_4
    instance-of v1, v0, Lorg/dom4j/Entity;

    if-eqz v1, :cond_5

    .line 152
    check-cast v0, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 153
    :cond_5
    instance-of v1, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V
    .locals 0

    .line 210
    invoke-interface {p3}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p1

    .line 211
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V
    .locals 0

    .line 217
    invoke-interface {p3}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object p3

    .line 216
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    .line 218
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V
    .locals 7

    .line 162
    invoke-interface {p3}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-interface {p3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v1

    .line 170
    invoke-interface {p3}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v2

    .line 172
    invoke-virtual {p0, v2}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v3, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 174
    invoke-virtual {p0, v0, v2}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    .line 178
    :cond_0
    invoke-interface {p3}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 181
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/dom4j/Namespace;

    .line 183
    invoke-virtual {p0, v5}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 184
    iget-object v6, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v6, v5}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 185
    invoke-virtual {p0, v0, v5}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    :cond_2
    invoke-interface {p3}, Lorg/dom4j/Element;->attributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Attribute;

    .line 191
    invoke-interface {v3}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {v3}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-interface {v3}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-interface {v0, v4, v5, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-interface {p3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 200
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 202
    :goto_2
    iget-object p1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 203
    iget-object p1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V
    .locals 0

    .line 230
    invoke-interface {p3}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p1

    .line 231
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V
    .locals 1

    .line 237
    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    .line 238
    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;
    .locals 2

    const-string v0, "xmlns"

    .line 251
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 265
    iget-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 267
    :try_start_0
    iget-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    new-instance v0, Lorg/dom4j/DocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate an instance of DOM Document with class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 272
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->createDomDocumentViaJAXP()Lorg/w3c/dom/Document;

    move-result-object p1

    if-nez p1, :cond_1

    .line 279
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->getDomDocumentClass()Ljava/lang/Class;

    move-result-object p1

    .line 282
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 284
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate an instance of DOM Document with class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 325
    invoke-interface {p2, p1, p1, p1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method protected createDomDocumentViaJAXP()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 297
    :try_start_0
    invoke-static {v0, v1}, Lorg/dom4j/io/JAXPHelper;->createDocument(ZZ)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 299
    sget-boolean v2, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    if-nez v2, :cond_1

    .line 300
    sput-boolean v1, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    .line 302
    invoke-static {}, Lorg/dom4j/io/SAXHelper;->isVerboseErrorReporting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Caught exception attempting to use JAXP to create a W3C DOM document"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Exception was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 310
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Warning: Error occurred using JAXP to create a DOM document."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomDocumentClass()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 56
    sget-object v1, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    array-length v1, v1

    .line 58
    sget-object v1, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 60
    :try_start_0
    const-class v5, Lorg/dom4j/io/DOMWriter;

    .line 61
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    .line 60
    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    move-object v0, v4

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_0

    .line 331
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected resetNamespaceStack()V
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 345
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public setDomDocumentClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    return-void
.end method

.method public setDomDocumentClassName(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 101
    :try_start_0
    const-class v1, Lorg/dom4j/io/DOMWriter;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 101
    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load the DOM Document class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 111
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lorg/w3c/dom/Document;

    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    .line 117
    invoke-virtual {p0, p1}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 119
    iget-object p1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    return-object v0
.end method

.method public write(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 126
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Lorg/w3c/dom/Document;

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 133
    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p2, p1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 134
    iget-object p1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    return-object p2
.end method

.method protected writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V
    .locals 1

    .line 243
    invoke-virtual {p0, p2}, Lorg/dom4j/io/DOMWriter;->attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
