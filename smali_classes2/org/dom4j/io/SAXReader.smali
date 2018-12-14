.class public Lorg/dom4j/io/SAXReader;
.super Ljava/lang/Object;
.source "SAXReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/SAXReader$SAXEntityResolver;
    }
.end annotation


# static fields
.field private static final SAX_DECL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field private static final SAX_LEXICALHANDLER:Ljava/lang/String; = "http://xml.org/sax/handlers/LexicalHandler"

.field private static final SAX_LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final SAX_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SAX_NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SAX_STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private encoding:Ljava/lang/String;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private ignoreComments:Z

.field private includeExternalDTDDeclarations:Z

.field private includeInternalDTDDeclarations:Z

.field private mergeAdjacentText:Z

.field private stringInternEnabled:Z

.field private stripWhitespaceText:Z

.field private validating:Z

.field private xmlFilter:Lorg/xml/sax/XMLFilter;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 152
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 160
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 163
    :cond_0
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 137
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 146
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 104
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 107
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 110
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 113
    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 128
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1

    .line 763
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    return-void
.end method

.method protected configureReader(Lorg/xml/sax/XMLReader;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    .line 895
    invoke-static {p1, v0, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 898
    invoke-static {p1, v0, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 901
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 902
    invoke-static {p1, v0, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "http://xml.org/sax/features/namespaces"

    const/4 v1, 0x1

    .line 906
    invoke-static {p1, v0, v1}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x0

    .line 908
    invoke-static {p1, v0, v2}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    const-string v0, "http://xml.org/sax/features/string-interning"

    .line 912
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isStringInternEnabled()Z

    move-result v2

    .line 911
    invoke-static {p1, v0, v2}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    const-string v0, "http://xml.org/sax/features/use-locator2"

    .line 923
    invoke-static {p1, v0, v1}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    :try_start_0
    const-string v0, "http://xml.org/sax/features/validation"

    .line 929
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v1

    .line 928
    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 931
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_2

    .line 932
    iget-object p2, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    .line 934
    :cond_2
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 937
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 938
    new-instance v0, Lorg/dom4j/DocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation not supported for XMLReader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method protected createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .locals 2

    .line 953
    new-instance p1, Lorg/dom4j/io/SAXContentHandler;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {p1, v0, v1}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    return-object p1
.end method

.method protected createDefaultEntityResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;
    .locals 2

    if-eqz p1, :cond_0

    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2f

    .line 960
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 963
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 967
    :goto_0
    new-instance v0, Lorg/dom4j/io/SAXReader$SAXEntityResolver;

    invoke-direct {v0, p1}, Lorg/dom4j/io/SAXReader$SAXEntityResolver;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v0

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .line 857
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 861
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 628
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 632
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 676
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    .line 805
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 702
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method protected installXMLFilter(Lorg/xml/sax/XMLReader;)Lorg/xml/sax/XMLReader;
    .locals 4

    .line 832
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLFilter()Lorg/xml/sax/XMLFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 839
    :goto_0
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 841
    instance-of v3, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v3, :cond_0

    .line 842
    move-object v1, v2

    check-cast v1, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    .line 848
    :cond_0
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method public isIgnoreComments()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    return v0
.end method

.method public isIncludeExternalDTDDeclarations()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    return v0
.end method

.method public isIncludeInternalDTDDeclarations()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    return v0
.end method

.method public isMergeAdjacentText()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    return v0
.end method

.method public isStringInternEnabled()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    return v0
.end method

.method public isStripWhitespaceText()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return v0
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 229
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 230
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 237
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 240
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/"

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v2, 0x5c

    const/16 v3, 0x2f

    .line 244
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 250
    :cond_2
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 252
    new-instance v0, Lorg/dom4j/DocumentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 324
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 325
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 370
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 375
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 344
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 345
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 349
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 395
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 396
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 401
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 302
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 272
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->installXMLFilter(Lorg/xml/sax/XMLReader;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXReader;->createDefaultEntityResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;

    move-result-object v1

    .line 428
    iput-object v1, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 431
    :cond_0
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 433
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;

    move-result-object v2

    .line 434
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXContentHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 435
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXContentHandler;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 437
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIncludeInternalDTDDeclarations()Z

    move-result v1

    .line 438
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIncludeExternalDTDDeclarations()Z

    move-result v3

    .line 440
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXContentHandler;->setIncludeInternalDTDDeclarations(Z)V

    .line 441
    invoke-virtual {v2, v3}, Lorg/dom4j/io/SAXContentHandler;->setIncludeExternalDTDDeclarations(Z)V

    .line 442
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isMergeAdjacentText()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXContentHandler;->setMergeAdjacentText(Z)V

    .line 443
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isStripWhitespaceText()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXContentHandler;->setStripWhitespaceText(Z)V

    .line 444
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIgnoreComments()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXContentHandler;->setIgnoreComments(Z)V

    .line 445
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 447
    invoke-virtual {p0, v0, v2}, Lorg/dom4j/io/SAXReader;->configureReader(Lorg/xml/sax/XMLReader;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 449
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 451
    invoke-virtual {v2}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 453
    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_2

    .line 455
    move-object v0, p1

    check-cast v0, Lorg/xml/sax/SAXParseException;

    .line 456
    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 462
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-direct {v1, v0, p1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 468
    :cond_2
    new-instance v0, Lorg/dom4j/DocumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1

    .line 774
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    return-void
.end method

.method public resetHandlers()V
    .locals 1

    .line 796
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->resetHandlers()V

    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1

    .line 787
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0

    .line 618
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    return-void
.end method

.method public setIncludeExternalDTDDeclarations(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    return-void
.end method

.method public setIncludeInternalDTDDeclarations(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    return-void
.end method

.method public setMergeAdjacentText(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStringInternEnabled(Z)V
    .locals 0

    .line 558
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    return-void
.end method

.method public setStripWhitespaceText(Z)V
    .locals 0

    .line 599
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    return-void
.end method

.method public setValidation(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlFilter:Lorg/xml/sax/XMLFilter;

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setXMLReaderClassName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 749
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXReader;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    return-void
.end method
