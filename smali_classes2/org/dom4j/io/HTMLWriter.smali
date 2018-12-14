.class public Lorg/dom4j/io/HTMLWriter;
.super Lorg/dom4j/io/XMLWriter;
.source "HTMLWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/HTMLWriter$FormatState;
    }
.end annotation


# static fields
.field protected static final DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lineSeparator:Ljava/lang/String;


# instance fields
.field private formatStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/dom4j/io/HTMLWriter$FormatState;",
            ">;"
        }
    .end annotation
.end field

.field private lastText:Ljava/lang/String;

.field private newLineAfterNTags:I

.field private omitElementCloseSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preformattedTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagsOuput:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "line.separator"

    .line 139
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    .line 147
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "TEXTAREA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    const-string v1, "  "

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    .line 157
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 158
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 187
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 161
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string v0, ""

    .line 163
    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 v0, -0x1

    .line 168
    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 170
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 195
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 161
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string p1, ""

    .line 163
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 170
    sget-object p1, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 161
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string p1, ""

    .line 163
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 170
    sget-object p1, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 179
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 161
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string p1, ""

    .line 163
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 170
    sget-object p1, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 161
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string p1, ""

    .line 163
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 170
    sget-object p1, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 161
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    const-string p1, ""

    .line 163
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    const/4 p1, -0x1

    .line 168
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 170
    sget-object p1, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    return-void
.end method

.method private internalGetOmitElementCloseSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 312
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->loadOmitElementCloseSet(Ljava/util/Set;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private justSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 582
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 586
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    .line 595
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private lazyInitNewLinesAfterNTags()V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getNewLineAfterNTags()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    :goto_0
    return-void
.end method

.method public static prettyPrintHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 631
    invoke-static {p0, v0, v0, v1, v0}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 684
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 685
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    .line 686
    invoke-virtual {v1, p1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 687
    invoke-virtual {v1, p2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 688
    invoke-virtual {v1, p3}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    .line 689
    invoke-virtual {v1, p4}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 691
    new-instance p1, Lorg/dom4j/io/HTMLWriter;

    invoke-direct {p1, v0, v1}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 692
    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object p0

    .line 693
    invoke-virtual {p1, p0}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    .line 694
    invoke-virtual {p1}, Lorg/dom4j/io/HTMLWriter;->flush()V

    .line 696
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prettyPrintXHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 653
    invoke-static {p0, v0, v0, v0, v1}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getOmitElementCloseSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getPreformattedTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isPreformattedTag(Ljava/lang/String;)Z
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected loadOmitElementCloseSet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AREA"

    .line 320
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "BASE"

    .line 321
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "BR"

    .line 322
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "COL"

    .line 323
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "HR"

    .line 324
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "IMG"

    .line 325
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "INPUT"

    .line 326
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "LINK"

    .line 327
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "META"

    .line 328
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "P"

    .line 329
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "PARAM"

    .line 330
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected omitElementClose(Ljava/lang/String;)Z
    .locals 1

    .line 305
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setOmitElementCloseSet(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 367
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 369
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreformattedTags(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 476
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    .line 220
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeClose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected writeDeclaration()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 519
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->lazyInitNewLinesAfterNTags()V

    .line 522
    :cond_0
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    if-lez v0, :cond_1

    .line 523
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    iget v1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    sget-object v1, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 528
    :cond_1
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 530
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 532
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    .line 534
    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->isPreformattedTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v2

    .line 537
    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v3

    .line 538
    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v4

    .line 542
    iget-object v5, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    new-instance v6, Lorg/dom4j/io/HTMLWriter$FormatState;

    invoke-direct {v6, p0, v2, v3, v4}, Lorg/dom4j/io/HTMLWriter$FormatState;-><init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :try_start_0
    invoke-super {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 550
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    .line 552
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 558
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-direct {p0, v1}, Lorg/dom4j/io/HTMLWriter;->justSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 563
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 564
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    const-string v1, ""

    .line 565
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 568
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    iget-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 571
    invoke-virtual {p1}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 572
    invoke-virtual {p1}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 573
    invoke-virtual {p1}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 570
    iget-object v1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 571
    invoke-virtual {v1}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 572
    invoke-virtual {v1}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 573
    invoke-virtual {v1}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 574
    throw p1

    .line 576
    :cond_3
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    :goto_0
    return-void
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object p1, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object p1, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

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

    .line 224
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 225
    iput p1, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:I

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object p1, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 246
    sget-object p1, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 252
    :cond_1
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
