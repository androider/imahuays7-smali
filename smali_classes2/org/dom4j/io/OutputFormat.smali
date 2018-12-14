.class public Lorg/dom4j/io/OutputFormat;
.super Ljava/lang/Object;
.source "OutputFormat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final STANDARD_INDENT:Ljava/lang/String; = "  "


# instance fields
.field private attributeQuoteChar:C

.field private doXHTML:Z

.field private encoding:Ljava/lang/String;

.field private expandEmptyElements:Z

.field private indent:Ljava/lang/String;

.field private lineSeparator:Ljava/lang/String;

.field private newLineAfterDeclaration:Z

.field private newLineAfterNTags:I

.field private newlines:Z

.field private omitEncoding:Z

.field private padText:Z

.field private suppressDeclaration:Z

.field private trimText:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v1, "UTF-8"

    .line 34
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 55
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v1, "\n"

    .line 58
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 64
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 67
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 73
    iput v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    .line 76
    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v1, "UTF-8"

    .line 34
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 55
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v1, "\n"

    .line 58
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 64
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 67
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 73
    iput v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    .line 76
    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 95
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v1, "UTF-8"

    .line 34
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 55
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v1, "\n"

    .line 58
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 64
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 67
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 73
    iput v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    .line 76
    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 110
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 111
    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    const-string v1, "UTF-8"

    .line 34
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 55
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    const-string v1, "\n"

    .line 58
    iput-object v1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 64
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 67
    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 73
    iput v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    const/16 v0, 0x22

    .line 76
    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 127
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 128
    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 129
    iput-object p3, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    return-void
.end method

.method public static createCompactFormat()Lorg/dom4j/io/OutputFormat;
    .locals 2

    .line 521
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    const/4 v1, 0x0

    .line 522
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Z)V

    .line 523
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    const/4 v1, 0x1

    .line 524
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    return-object v0
.end method

.method public static createPrettyPrint()Lorg/dom4j/io/OutputFormat;
    .locals 2

    .line 504
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    const/4 v1, 0x2

    .line 505
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    const/4 v1, 0x1

    .line 506
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 507
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 508
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    return-object v0
.end method


# virtual methods
.method public getAttributeQuoteCharacter()C
    .locals 1

    .line 429
    iget-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getNewLineAfterNTags()I
    .locals 1

    .line 409
    iget v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    return v0
.end method

.method public isExpandEmptyElements()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    return v0
.end method

.method public isNewLineAfterDeclaration()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    return v0
.end method

.method public isNewlines()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return v0
.end method

.method public isOmitEncoding()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    return v0
.end method

.method public isPadText()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    return v0
.end method

.method public isSuppressDeclaration()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    return v0
.end method

.method public isTrimText()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    return v0
.end method

.method public isXHTML()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    return v0
.end method

.method public parseOptions([Ljava/lang/String;I)I
    .locals 4

    .line 465
    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_b

    .line 466
    aget-object v1, p1, p2

    const-string v2, "-suppressDeclaration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    goto/16 :goto_1

    .line 468
    :cond_0
    aget-object v1, p1, p2

    const-string v3, "-omitEncoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    goto/16 :goto_1

    .line 470
    :cond_1
    aget-object v1, p1, p2

    const-string v3, "-indent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 471
    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 472
    :cond_2
    aget-object v1, p1, p2

    const-string v3, "-indentSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 473
    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    goto :goto_1

    .line 474
    :cond_3
    aget-object v1, p1, p2

    const-string v3, "-expandEmpty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    goto :goto_1

    .line 476
    :cond_4
    aget-object v1, p1, p2

    const-string v3, "-encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 477
    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :cond_5
    aget-object v1, p1, p2

    const-string v3, "-newlines"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 479
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    goto :goto_1

    .line 480
    :cond_6
    aget-object v1, p1, p2

    const-string v3, "-lineSeparator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 481
    aget-object v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/dom4j/io/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_7
    aget-object v1, p1, p2

    const-string v3, "-trimText"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 483
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    goto :goto_1

    .line 484
    :cond_8
    aget-object v1, p1, p2

    const-string v3, "-padText"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 485
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    goto :goto_1

    .line 486
    :cond_9
    aget-object v1, p1, p2

    const-string v3, "-xhtml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 487
    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    :goto_1
    add-int/2addr p2, v2

    goto/16 :goto_0

    :cond_a
    return p2

    :cond_b
    return p2
.end method

.method public setAttributeQuoteCharacter(C)V
    .locals 3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute quote character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_1
    :goto_0
    iput-char p1, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 182
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setExpandEmptyElements(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    return-void
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 340
    :cond_0
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-void
.end method

.method public setIndent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "  "

    .line 352
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setIndentSize(I)V
    .locals 3

    .line 367
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " "

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setNewLineAfterDeclaration(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    return-void
.end method

.method public setNewLineAfterNTags(I)V
    .locals 0

    .line 425
    iput p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    return-void
.end method

.method public setNewlines(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return-void
.end method

.method public setOmitEncoding(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    return-void
.end method

.method public setPadText(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    return-void
.end method

.method public setSuppressDeclaration(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    return-void
.end method

.method public setTrimText(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    return-void
.end method

.method public setXHTML(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    return-void
.end method
