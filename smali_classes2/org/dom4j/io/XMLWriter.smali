.class public Lorg/dom4j/io/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "XMLWriter.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

.field private static final PAD_TEXT:Ljava/lang/String; = " "


# instance fields
.field private autoFlush:Z

.field private buffer:Ljava/lang/StringBuffer;

.field private charsAdded:Z

.field private escapeText:Z

.field private format:Lorg/dom4j/io/OutputFormat;

.field private inDTD:Z

.field private indentLevel:I

.field private lastChar:C

.field private lastElementClosed:Z

.field protected lastOutputNodeType:I

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private maximumAllowedCharacter:I

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;

.field private namespacesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected preserve:Z

.field private resolveEntityRefs:Z

.field private showCommentsInDTDs:Z

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "http://xml.org/sax/handlers/LexicalHandler"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    .line 78
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    sput-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 161
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v2, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v2}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 162
    sget-object v1, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 163
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 164
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 165
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v2, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v2}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 169
    sget-object v1, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 170
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 171
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 172
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v2, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v2}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 177
    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 178
    invoke-virtual {p2}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 179
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 180
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, p2}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 152
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 3

    .line 155
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v2, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v2}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 156
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 157
    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 158
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, p2}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 96
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 102
    new-instance v2, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v2}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 108
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 114
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 117
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 122
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 184
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 185
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 186
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 187
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 730
    array-length v0, p1

    if-eqz v0, :cond_7

    if-gtz p3, :cond_0

    goto/16 :goto_3

    .line 741
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 743
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    :cond_1
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 748
    iget v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    const/16 v4, 0x20

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-nez v1, :cond_2

    .line 749
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 750
    :cond_2
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-eqz v1, :cond_3

    iget-char v1, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 751
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 752
    :cond_3
    iget v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 753
    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget-char v1, p1, v1

    .line 754
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string v1, ""

    .line 759
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 761
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 762
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, " "

    goto :goto_1

    .line 767
    :cond_5
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 770
    :cond_6
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    add-int v0, p2, p3

    sub-int/2addr v0, v3

    .line 771
    aget-char v0, p1, v0

    iput-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    .line 772
    iput v2, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 774
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 776
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 883
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->showCommentsInDTDs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 885
    :try_start_0
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 886
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 888
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    .line 892
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_2
    return-void
.end method

.method protected createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1551
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method protected defaultMaximumAllowedCharacter()I
    .locals 2

    .line 1829
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "US-ASCII"

    .line 1832
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 854
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 856
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    .line 859
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 833
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    .line 835
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 652
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 654
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 701
    :try_start_0
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 702
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 704
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 706
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 714
    :cond_0
    invoke-virtual {p0, p3}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 719
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 720
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 722
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 724
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 673
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method protected escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1718
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1723
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 1727
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    const/16 v8, 0x20

    if-lt v7, v8, :cond_1

    .line 1770
    invoke-virtual {p0, v7}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :sswitch_0
    const-string v7, "&gt;"

    goto :goto_2

    :sswitch_1
    const-string v7, "&lt;"

    goto :goto_2

    :sswitch_2
    const/16 v7, 0x27

    if-ne v0, v7, :cond_0

    const-string v7, "&apos;"

    goto :goto_2

    :sswitch_3
    const-string v7, "&amp;"

    goto :goto_2

    :sswitch_4
    const/16 v7, 0x22

    if-ne v0, v7, :cond_0

    const-string v7, "&quot;"

    goto :goto_2

    :cond_0
    :sswitch_5
    move-object v7, v2

    goto :goto_2

    .line 1771
    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_3

    if-nez v6, :cond_2

    .line 1779
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1782
    :cond_2
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v9, v4, v5

    invoke-virtual {v8, v6, v5, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1783
    iget-object v5, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    return-object p1

    :cond_5
    if-ge v5, v1, :cond_7

    if-nez v6, :cond_6

    .line 1794
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1797
    :cond_6
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int/2addr v4, v5

    invoke-virtual {p1, v6, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1800
    :cond_7
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1801
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method protected escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_8

    .line 1633
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4

    const/16 v7, 0x26

    if-eq v6, v7, :cond_3

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_2

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_1

    packed-switch v6, :pswitch_data_0

    const/16 v7, 0x20

    if-lt v6, v7, :cond_0

    .line 1664
    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1665
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, "&gt;"

    goto :goto_1

    :cond_2
    const-string v6, "&lt;"

    goto :goto_1

    :cond_3
    const-string v6, "&amp;"

    goto :goto_1

    .line 1656
    :cond_4
    :pswitch_0
    iget-boolean v7, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v7, :cond_5

    .line 1657
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_7

    if-nez v5, :cond_6

    .line 1673
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 1676
    :cond_6
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v8, v3, v4

    invoke-virtual {v7, v5, v4, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1677
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v3, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    return-object p1

    :cond_9
    if-ge v4, v0, :cond_b

    if-nez v5, :cond_a

    .line 1688
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 1691
    :cond_a
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int/2addr v3, v4

    invoke-virtual {p1, v5, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1694
    :cond_b
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1695
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getMaximumAllowedCharacter()I
    .locals 1

    .line 244
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->defaultMaximumAllowedCharacter()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    .line 248
    :cond_0
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    return v0
.end method

.method protected getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    .line 1870
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 615
    sget-object v0, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 616
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :cond_1
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected handleException(Ljava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1856
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 782
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    return-void
.end method

.method protected indent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1516
    :goto_0
    iget v2, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    if-ge v1, v2, :cond_0

    .line 1517
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected installLexicalHandler()V
    .locals 5

    .line 1344
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1347
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No parent for filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1353
    :try_start_0
    invoke-interface {v0, v4, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected final isElementSpacePreserved(Lorg/dom4j/Element;)Z
    .locals 2

    const-string v0, "space"

    .line 985
    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object p1

    .line 986
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz p1, :cond_1

    const-string v0, "xml"

    .line 989
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "preserve"

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isEscapeText()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    return v0
.end method

.method protected isExpandEmptyElements()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    return v0
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1842
    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_0

    .line 1843
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 807
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->installLexicalHandler()V

    .line 597
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public println()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 788
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 789
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    const/4 v0, 0x7

    .line 795
    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 797
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 799
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public resolveEntityRefs()Z
    .locals 1

    .line 1874
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    return v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 639
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public setEscapeText(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    return-void
.end method

.method public setIndentLevel(I)V
    .locals 0

    .line 233
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1

    if-nez p1, :cond_0

    .line 626
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null lexical handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :cond_0
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setMaximumAllowedCharacter(I)V
    .locals 0

    .line 262
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 602
    sget-object v0, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 603
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/dom4j/io/XMLWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResolveEntityRefs(Z)V
    .locals 0

    .line 1878
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    return-void
.end method

.method protected shouldEncodeChar(C)Z
    .locals 1

    .line 1816
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getMaximumAllowedCharacter()I

    move-result v0

    if-lez v0, :cond_0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 842
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 844
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    .line 847
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 819
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    .line 822
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 824
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    .line 827
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 644
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    .line 645
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 647
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 679
    :try_start_0
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 681
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 682
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 683
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeNamespaces()V

    .line 686
    invoke-virtual {p0, p4}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 687
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 688
    iget v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 689
    iput v2, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 690
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 692
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 866
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 868
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    .line 871
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    .line 668
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 812
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_0

    .line 545
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_1

    .line 546
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 547
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 548
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 549
    check-cast p1, Ljava/util/List;

    .line 551
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 552
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 555
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 494
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Attribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    .line 307
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    .line 388
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    .line 405
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    .line 337
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 339
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    :cond_0
    const/4 v0, 0x0

    .line 342
    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 343
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 344
    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 349
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_2
    return-void
.end method

.method public write(Lorg/dom4j/DocumentType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    .line 422
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    .line 371
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    .line 439
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Namespace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 456
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 528
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    .line 474
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Text;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-interface {p1}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 511
    iget-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    :cond_0
    return-void
.end method

.method protected writeAttribute(Lorg/dom4j/Attribute;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1482
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1487
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1489
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1491
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x2

    .line 1492
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1504
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1505
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1507
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1508
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1509
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method protected writeAttributes(Lorg/dom4j/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1435
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1436
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 1437
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1439
    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v4, :cond_0

    sget-object v4, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v4, :cond_0

    .line 1441
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1442
    iget-object v5, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v5, v4}, Lorg/dom4j/tree/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1444
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1445
    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 1446
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 1453
    :cond_0
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns:"

    .line 1455
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    .line 1456
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1458
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1459
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1460
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0, v3, v2}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, "xmlns"

    .line 1463
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1464
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v3}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1465
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1466
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0, v4, v2}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1470
    :cond_2
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v3}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v3

    .line 1471
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1472
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1473
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1474
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 1475
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1476
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1497
    invoke-virtual {p0, p1, v1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/xml/sax/Attributes;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1145
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1148
    :cond_0
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, "]]>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1150
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeClose(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1596
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    return-void
.end method

.method protected writeComment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    .line 1411
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 1414
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1416
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 1418
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeDeclaration()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1567
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isSuppressDeclaration()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "UTF8"

    .line 1569
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " encoding=\"UTF-8\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1576
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1578
    :cond_1
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1580
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1581
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " encoding=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1584
    :cond_2
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1587
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewLineAfterDeclaration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1588
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    :cond_3
    return-void
.end method

.method protected writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 1371
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1372
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1373
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1374
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const-string p2, ""

    .line 1378
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-nez p1, :cond_1

    .line 1380
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string p2, " SYSTEM"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1383
    :cond_1
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string p2, " \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1384
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1385
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1388
    :cond_2
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    return-void
.end method

.method protected writeDocType(Lorg/dom4j/DocumentType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1155
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, v0}, Lorg/dom4j/DocumentType;->write(Ljava/io/Writer;)V

    .line 1156
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    :cond_0
    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v0

    .line 901
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 904
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 906
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 907
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 909
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v2}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v2

    .line 910
    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    .line 912
    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 913
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 914
    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v0, :cond_4

    .line 921
    invoke-interface {p1, v5}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v7

    .line 923
    instance-of v8, v7, Lorg/dom4j/Namespace;

    if-eqz v8, :cond_1

    .line 924
    check-cast v7, Lorg/dom4j/Namespace;

    .line 926
    invoke-virtual {p0, v7}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 927
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v8, v7}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 928
    invoke-virtual {p0, v7}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    goto :goto_2

    .line 930
    :cond_1
    instance-of v8, v7, Lorg/dom4j/Element;

    if-eqz v8, :cond_2

    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    .line 932
    :cond_2
    instance-of v7, v7, Lorg/dom4j/Comment;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 937
    :cond_4
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    .line 939
    iput v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-gtz v0, :cond_5

    .line 942
    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_4

    .line 944
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v6, :cond_6

    .line 949
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    goto :goto_3

    .line 952
    :cond_6
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 954
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    .line 956
    iget p1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 958
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 959
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 962
    :goto_3
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 963
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 964
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 968
    :goto_4
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result p1

    if-le p1, v2, :cond_7

    .line 969
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_4

    .line 972
    :cond_7
    iput v4, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeElementContent(Lorg/dom4j/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    .line 1010
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->isElementSpacePreserved(Lorg/dom4j/Element;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 1014
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    xor-int/2addr v0, v2

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 1024
    invoke-interface {p1}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, v3

    move-object v5, v0

    const/4 v4, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/dom4j/Node;

    .line 1025
    instance-of v8, v6, Lorg/dom4j/Text;

    if-eqz v8, :cond_3

    if-nez v0, :cond_1

    .line 1027
    check-cast v6, Lorg/dom4j/Text;

    move-object v0, v6

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    .line 1030
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    :cond_2
    invoke-interface {v6}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v8, 0x61

    if-nez v4, :cond_6

    .line 1036
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v4}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v5, :cond_4

    .line 1041
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1043
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_5
    const/16 v4, 0x61

    .line 1046
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1047
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_b

    if-eqz v5, :cond_7

    .line 1053
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_2

    .line 1056
    :cond_7
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 1059
    :goto_2
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v4}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v5, :cond_8

    .line 1064
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 1066
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1070
    :cond_9
    :goto_3
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1071
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    move-object v0, v3

    .line 1079
    :cond_b
    invoke-virtual {p0, v6}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_13

    if-nez v4, :cond_e

    .line 1084
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {p1}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result p1

    if-eqz p1, :cond_e

    if-eqz v5, :cond_d

    .line 1089
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    goto :goto_4

    .line 1091
    :cond_d
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1094
    :goto_4
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1095
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_e
    if-eqz v5, :cond_f

    .line 1100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_7

    .line 1103
    :cond_f
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_7

    .line 1111
    :cond_10
    invoke-interface {p1}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    move-object v0, v3

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Node;

    .line 1112
    instance-of v5, v4, Lorg/dom4j/Text;

    if-eqz v5, :cond_11

    .line 1113
    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    move-object v0, v4

    goto :goto_6

    :cond_11
    if-eqz v0, :cond_12

    .line 1116
    iget-object v5, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v5}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1119
    invoke-interface {v0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1122
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1123
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1127
    :cond_12
    invoke-virtual {p0, v4}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    goto :goto_5

    .line 1138
    :cond_13
    :goto_7
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    return-void
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1607
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected writeEntity(Lorg/dom4j/Entity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V

    goto :goto_0

    .line 1396
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected writeEntityRef(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1403
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 1405
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeEscapeAttributeEntities(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1702
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1703
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns:"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_0
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, " xmlns=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1204
    :goto_0
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1205
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeNamespace(Lorg/dom4j/Namespace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1162
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected writeNamespaces()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1177
    invoke-virtual {p0, v2, v1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1180
    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method protected writeNode(Lorg/dom4j/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1339
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :pswitch_1
    check-cast p1, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    goto :goto_0

    .line 1323
    :pswitch_2
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_0

    .line 1318
    :pswitch_3
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    :pswitch_4
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 1308
    :pswitch_5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 1303
    :pswitch_6
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNodeText(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 1292
    :pswitch_8
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 1287
    :pswitch_9
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    :goto_0
    :pswitch_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected writeNodeText(Lorg/dom4j/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1273
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x3

    .line 1277
    iput v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1278
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    .line 575
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writePrintln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1211
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1215
    iget-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    const/4 p1, 0x7

    .line 1218
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1223
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1232
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1234
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1236
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1237
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1242
    iget v3, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    if-ne v3, v1, :cond_2

    .line 1243
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1246
    :cond_1
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1249
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1250
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    goto :goto_0

    .line 1253
    :cond_3
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:I

    .line 1254
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
