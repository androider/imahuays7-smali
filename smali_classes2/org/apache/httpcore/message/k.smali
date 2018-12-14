.class public Lorg/apache/httpcore/message/k;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lorg/apache/httpcore/y;


# instance fields
.field protected final a:Lorg/apache/httpcore/g;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/g;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Header iterator"

    .line 83
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/g;

    iput-object p1, p0, Lorg/apache/httpcore/message/k;->a:Lorg/apache/httpcore/g;

    const/4 p1, -0x1

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/k;->a(I)I

    move-result p1

    iput p1, p0, Lorg/apache/httpcore/message/k;->d:I

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_1

    .line 169
    iget-object p1, p0, Lorg/apache/httpcore/message/k;->a:Lorg/apache/httpcore/g;

    invoke-interface {p1}, Lorg/apache/httpcore/g;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 172
    :cond_0
    iget-object p1, p0, Lorg/apache/httpcore/message/k;->a:Lorg/apache/httpcore/g;

    invoke-interface {p1}, Lorg/apache/httpcore/g;->a()Lorg/apache/httpcore/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/k;->c(I)I

    move-result p1

    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/k;->b(I)I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lorg/apache/httpcore/message/k;->c:Ljava/lang/String;

    return v0

    .line 185
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/k;->d(I)I

    move-result v0

    .line 186
    iget-object v1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/httpcore/message/k;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/httpcore/message/k;->c:Ljava/lang/String;

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/apache/httpcore/message/k;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/k;->c:Ljava/lang/String;

    .line 113
    iget v1, p0, Lorg/apache/httpcore/message/k;->d:I

    invoke-virtual {p0, v1}, Lorg/apache/httpcore/message/k;->a(I)I

    move-result v1

    iput v1, p0, Lorg/apache/httpcore/message/k;->d:I

    return-object v0
.end method

.method protected a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 213
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(C)Z
    .locals 1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(I)I
    .locals 5

    const-string v0, "Search position"

    .line 228
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    move v1, p1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    if-nez p1, :cond_6

    .line 230
    iget-object v2, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 232
    iget-object v2, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-nez p1, :cond_4

    if-ge v1, v2, :cond_4

    .line 235
    iget-object v3, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 236
    invoke-virtual {p0, v3}, Lorg/apache/httpcore/message/k;->a(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Lorg/apache/httpcore/message/k;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 239
    :cond_1
    iget-object p1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/k;->c(C)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 243
    :cond_2
    new-instance p1, Lorg/apache/httpcore/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character before token (pos "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_0

    .line 249
    iget-object v2, p0, Lorg/apache/httpcore/message/k;->a:Lorg/apache/httpcore/g;

    invoke-interface {v2}, Lorg/apache/httpcore/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    iget-object v1, p0, Lorg/apache/httpcore/message/k;->a:Lorg/apache/httpcore/g;

    invoke-interface {v1}, Lorg/apache/httpcore/g;->a()Lorg/apache/httpcore/e;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 253
    iput-object v2, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, -0x1

    :goto_3
    return v1
.end method

.method protected b(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 358
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

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

.method protected c(I)I
    .locals 4

    const-string v0, "Search position"

    .line 280
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    move-result p1

    .line 282
    iget-object v0, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    if-ge p1, v0, :cond_3

    .line 284
    iget-object v2, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 285
    invoke-virtual {p0, v2}, Lorg/apache/httpcore/message/k;->a(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/httpcore/message/k;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/httpcore/message/k;->c(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    new-instance v0, Lorg/apache/httpcore/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tokens without separator (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_2
    new-instance v0, Lorg/apache/httpcore/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character after token (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return p1
.end method

.method protected c(C)Z
    .locals 3

    .line 377
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 382
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 387
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/k;->d(C)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method protected d(I)I
    .locals 2

    const-string v0, "Search position"

    .line 316
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->b(ILjava/lang/String;)I

    .line 317
    iget-object v0, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 319
    iget-object v1, p0, Lorg/apache/httpcore/message/k;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/httpcore/message/k;->c(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method protected d(C)Z
    .locals 1

    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasNext()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/httpcore/message/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/httpcore/message/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
