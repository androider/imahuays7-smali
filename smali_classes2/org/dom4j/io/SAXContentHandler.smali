.class public Lorg/dom4j/io/SAXContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXContentHandler.java"

# interfaces
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field private cdataText:Ljava/lang/StringBuffer;

.field private currentElement:Lorg/dom4j/Element;

.field private declaredNamespaceIndex:I

.field private document:Lorg/dom4j/Document;

.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private elementHandler:Lorg/dom4j/ElementHandler;

.field private elementStack:Lorg/dom4j/io/ElementStack;

.field private entity:Ljava/lang/String;

.field private entityLevel:I

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private externalDTDDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreComments:Z

.field private includeExternalDTDDeclarations:Z

.field private includeInternalDTDDeclarations:Z

.field private inputSource:Lorg/xml/sax/InputSource;

.field private insideCDATASection:Z

.field private insideDTDSection:Z

.field private internalDTDDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/dom4j/dtd/Decl;",
            ">;"
        }
    .end annotation
.end field

.field private internalDTDsubset:Z

.field private locator:Lorg/xml/sax/Locator;

.field private mergeAdjacentText:Z

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;

.field private stripWhitespaceText:Z

.field private textBuffer:Ljava/lang/StringBuffer;

.field private textInTextBuffer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;Lorg/dom4j/io/ElementStack;)V

    .line 138
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->createElementStack()Lorg/dom4j/io/ElementStack;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;Lorg/dom4j/io/ElementStack;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    .line 116
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    .line 119
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->ignoreComments:Z

    .line 125
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->stripWhitespaceText:Z

    .line 143
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 144
    iput-object p2, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    .line 145
    iput-object p3, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    .line 146
    new-instance p2, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {p2, p1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object p2, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    return-void
.end method

.method private getEncoding()Ljava/lang/String;
    .locals 2

    .line 835
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->locator:Lorg/xml/sax/Locator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 839
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->locator:Lorg/xml/sax/Locator;

    instance-of v0, v0, Lorg/xml/sax/ext/Locator2;

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->locator:Lorg/xml/sax/Locator;

    check-cast v0, Lorg/xml/sax/ext/Locator2;

    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected addAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 896
    instance-of v0, p1, Lorg/dom4j/tree/AbstractElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 898
    check-cast p1, Lorg/dom4j/tree/AbstractElement;

    .line 899
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1, p2, v0, v1}, Lorg/dom4j/tree/AbstractElement;->setAttributes(Lorg/xml/sax/Attributes;Lorg/dom4j/tree/NamespaceStack;Z)V

    goto :goto_1

    .line 902
    :cond_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 905
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    .line 908
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 909
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 911
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 913
    iget-object v6, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v6, v3, v4, v2}, Lorg/dom4j/tree/NamespaceStack;->getAttributeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    .line 915
    invoke-interface {p1, v2, v5}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected addDTDDeclaration(Lorg/dom4j/dtd/Decl;)V
    .locals 1

    .line 928
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDDeclarations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDDeclarations:Ljava/util/List;

    .line 932
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDDeclarations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addDeclaredNamespaces(Lorg/dom4j/Element;)V
    .locals 3

    .line 869
    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    .line 871
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lorg/dom4j/io/SAXContentHandler;->declaredNamespaceIndex:I

    if-ge v1, v0, :cond_0

    .line 873
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iget v2, p0, Lorg/dom4j/io/SAXContentHandler;->declaredNamespaceIndex:I

    .line 874
    invoke-virtual {v1, v2}, Lorg/dom4j/tree/NamespaceStack;->getNamespace(I)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 877
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Namespace;)V

    .line 872
    iget v1, p0, Lorg/dom4j/io/SAXContentHandler;->declaredNamespaceIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/io/SAXContentHandler;->declaredNamespaceIndex:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addExternalDTDDeclaration(Lorg/dom4j/dtd/Decl;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->externalDTDDeclarations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->externalDTDDeclarations:Ljava/util/List;

    .line 946
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->externalDTDDeclarations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 496
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    if-eqz v0, :cond_0

    .line 497
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 498
    new-instance v0, Lorg/dom4j/dtd/AttributeDecl;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/dom4j/dtd/AttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    goto :goto_0

    .line 502
    :cond_0
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 503
    new-instance v0, Lorg/dom4j/dtd/AttributeDecl;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/dom4j/dtd/AttributeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addExternalDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_6

    .line 273
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 274
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->completeCurrentTextNode()V

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    const/4 p1, 0x0

    .line 279
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_2
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->insideCDATASection:Z

    if-eqz v0, :cond_4

    .line 281
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_3

    .line 282
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->completeCurrentTextNode()V

    .line 285
    :cond_3
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->cdataText:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 287
    :cond_4
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    goto :goto_0

    .line 291
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    :cond_6
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 409
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->ignoreComments:Z

    if-nez v0, :cond_2

    .line 410
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->completeCurrentTextNode()V

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 416
    iget-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->insideDTDSection:Z

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 417
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    :cond_2
    :goto_0
    return-void
.end method

.method protected completeCurrentTextNode()V
    .locals 4

    .line 793
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->stripWhitespaceText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 797
    iget-object v3, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 805
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    iget-object v2, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_2

    .line 808
    :cond_2
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    iget-object v2, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 811
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 812
    iput-boolean v1, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    return-void
.end method

.method protected createDocument()Lorg/dom4j/Document;
    .locals 2

    .line 821
    invoke-direct {p0}, Lorg/dom4j/io/SAXContentHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, v0}, Lorg/dom4j/DocumentFactory;->createDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 825
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 827
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected createElementStack()Lorg/dom4j/io/ElementStack;
    .locals 1

    .line 950
    new-instance v0, Lorg/dom4j/io/ElementStack;

    invoke-direct {v0}, Lorg/dom4j/io/ElementStack;-><init>()V

    return-object v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 450
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    if-eqz v0, :cond_0

    .line 451
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 452
    new-instance v0, Lorg/dom4j/dtd/ElementDecl;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dtd/ElementDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 456
    new-instance v0, Lorg/dom4j/dtd/ElementDecl;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dtd/ElementDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addExternalDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->insideCDATASection:Z

    .line 405
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->cdataText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    return-void
.end method

.method public endDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->insideDTDSection:Z

    .line 354
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDDeclarations:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDDeclarations:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/dom4j/DocumentType;->setInternalDeclarations(Ljava/util/List;)V

    .line 361
    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->externalDTDDeclarations:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->externalDTDDeclarations:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/dom4j/DocumentType;->setExternalDeclarations(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDDeclarations:Ljava/util/List;

    .line 367
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->externalDTDDeclarations:Ljava/util/List;

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 215
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->clear()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 217
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 255
    iget-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->completeCurrentTextNode()V

    .line 259
    :cond_0
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz p1, :cond_1

    .line 260
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    iget-object p2, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-interface {p1, p2}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    .line 263
    :cond_1
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {p1}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    .line 264
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {p1}, Lorg/dom4j/io/ElementStack;->peekElement()Lorg/dom4j/Element;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 390
    iget p1, p0, Lorg/dom4j/io/SAXContentHandler;->entityLevel:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/dom4j/io/SAXContentHandler;->entityLevel:I

    const/4 p1, 0x0

    .line 391
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    .line 393
    iget p1, p0, Lorg/dom4j/io/SAXContentHandler;->entityLevel:I

    if-nez p1, :cond_0

    .line 394
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->pop(Ljava/lang/String;)Lorg/dom4j/Namespace;

    .line 188
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result p1

    iput p1, p0, Lorg/dom4j/io/SAXContentHandler;->declaredNamespaceIndex:I

    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 325
    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 567
    new-instance v0, Lorg/dom4j/dtd/ExternalEntityDecl;

    invoke-direct {v0, p1, p2, p3}, Lorg/dom4j/dtd/ExternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    if-eqz p1, :cond_0

    .line 571
    iget-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    goto :goto_0

    .line 575
    :cond_0
    iget-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addExternalDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 339
    throw p1
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->document:Lorg/dom4j/Document;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->document:Lorg/dom4j/Document;

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->document:Lorg/dom4j/Document;

    return-object v0
.end method

.method public getElementStack()Lorg/dom4j/io/ElementStack;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 532
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    if-eqz v0, :cond_0

    .line 533
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Lorg/dom4j/dtd/InternalEntityDecl;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 538
    new-instance v0, Lorg/dom4j/dtd/InternalEntityDecl;

    invoke-direct {v0, p1, p2}, Lorg/dom4j/dtd/InternalEntityDecl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXContentHandler;->addExternalDTDDeclaration(Lorg/dom4j/dtd/Decl;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected isIgnorableEntity(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "amp"

    .line 856
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "apos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lt"

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "quot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIgnoreComments()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->ignoreComments:Z

    return v0
.end method

.method public isIncludeExternalDTDDeclarations()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    return v0
.end method

.method public isIncludeInternalDTDDeclarations()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    return v0
.end method

.method public isMergeAdjacentText()Z
    .locals 1

    .line 731
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    return v0
.end method

.method public isStripWhitespaceText()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->stripWhitespaceText:Z

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->completeCurrentTextNode()V

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0, p1, p2}, Lorg/dom4j/Element;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    :goto_0
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setElementStack(Lorg/dom4j/io/ElementStack;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0

    .line 782
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->ignoreComments:Z

    return-void
.end method

.method public setIncludeExternalDTDDeclarations(Z)V
    .locals 0

    .line 722
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->includeExternalDTDDeclarations:Z

    return-void
.end method

.method public setIncludeInternalDTDDeclarations(Z)V
    .locals 0

    .line 700
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->includeInternalDTDDeclarations:Z

    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->inputSource:Lorg/xml/sax/InputSource;

    return-void
.end method

.method public setMergeAdjacentText(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    return-void
.end method

.method public setStripWhitespaceText(Z)V
    .locals 0

    .line 763
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->stripWhitespaceText:Z

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->insideCDATASection:Z

    .line 400
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->cdataText:Ljava/lang/StringBuffer;

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/dom4j/Document;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->insideDTDSection:Z

    .line 348
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->document:Lorg/dom4j/Document;

    .line 194
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    .line 196
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {v0}, Lorg/dom4j/io/ElementStack;->clear()V

    .line 198
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    instance-of v0, v0, Lorg/dom4j/io/DispatchHandler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    check-cast v1, Lorg/dom4j/io/DispatchHandler;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/ElementStack;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lorg/dom4j/io/SAXContentHandler;->declaredNamespaceIndex:I

    .line 206
    iget-boolean v1, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    if-nez v1, :cond_1

    .line 207
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/dom4j/io/SAXContentHandler;->textBuffer:Ljava/lang/StringBuffer;

    .line 210
    :cond_1
    iput-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->mergeAdjacentText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->textInTextBuffer:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->completeCurrentTextNode()V

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1, p2, p3}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    if-nez p2, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object p2

    .line 235
    :cond_1
    invoke-interface {p2, p1}, Lorg/dom4j/Branch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->addDeclaredNamespaces(Lorg/dom4j/Element;)V

    .line 241
    invoke-virtual {p0, p1, p4}, Lorg/dom4j/io/SAXContentHandler;->addAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)V

    .line 243
    iget-object p2, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-virtual {p2, p1}, Lorg/dom4j/io/ElementStack;->pushElement(Lorg/dom4j/Element;)V

    .line 244
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->currentElement:Lorg/dom4j/Element;

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    .line 248
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->elementHandler:Lorg/dom4j/ElementHandler;

    iget-object p2, p0, Lorg/dom4j/io/SAXContentHandler;->elementStack:Lorg/dom4j/io/ElementStack;

    invoke-interface {p1, p2}, Lorg/dom4j/ElementHandler;->onStart(Lorg/dom4j/ElementPath;)V

    :cond_2
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 371
    iget v0, p0, Lorg/dom4j/io/SAXContentHandler;->entityLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/SAXContentHandler;->entityLevel:I

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    .line 376
    iget-boolean v0, p0, Lorg/dom4j/io/SAXContentHandler;->insideDTDSection:Z

    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXContentHandler;->isIgnorableEntity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iput-object p1, p0, Lorg/dom4j/io/SAXContentHandler;->entity:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 386
    iput-boolean p1, p0, Lorg/dom4j/io/SAXContentHandler;->internalDTDsubset:Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/dom4j/io/SAXContentHandler;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
