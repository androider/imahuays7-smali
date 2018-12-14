.class public Lorg/apache/httpcore/message/i;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lorg/apache/httpcore/message/n;


# static fields
.field public static final a:Lorg/apache/httpcore/message/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lorg/apache/httpcore/message/i;


# instance fields
.field protected final c:Lorg/apache/httpcore/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/httpcore/message/i;

    invoke-direct {v0}, Lorg/apache/httpcore/message/i;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/i;->a:Lorg/apache/httpcore/message/i;

    .line 74
    new-instance v0, Lorg/apache/httpcore/message/i;

    invoke-direct {v0}, Lorg/apache/httpcore/message/i;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/i;->b:Lorg/apache/httpcore/message/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lorg/apache/httpcore/message/i;-><init>(Lorg/apache/httpcore/ProtocolVersion;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/ProtocolVersion;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Lorg/apache/httpcore/HttpVersion;->HTTP_1_1:Lorg/apache/httpcore/HttpVersion;

    :goto_0
    iput-object p1, p0, Lorg/apache/httpcore/message/i;->c:Lorg/apache/httpcore/ProtocolVersion;

    return-void
.end method


# virtual methods
.method protected a(II)Lorg/apache/httpcore/ProtocolVersion;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/httpcore/message/i;->c:Lorg/apache/httpcore/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lorg/apache/httpcore/ProtocolVersion;->forVersion(II)Lorg/apache/httpcore/ProtocolVersion;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/ProtocolVersion;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    const-string v0, "Char array buffer"

    .line 120
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 121
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lorg/apache/httpcore/message/i;->c:Lorg/apache/httpcore/ProtocolVersion;

    invoke-virtual {v0}, Lorg/apache/httpcore/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 125
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v2

    .line 126
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->a()I

    move-result v3

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/i;->c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)V

    .line 130
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v4

    add-int v5, v4, v1

    add-int/lit8 v6, v5, 0x4

    if-le v6, v3, :cond_0

    .line 134
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid protocol version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1, v2, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    if-eqz v8, :cond_2

    if-ge v9, v1, :cond_2

    add-int v8, v4, v9

    .line 142
    invoke-virtual {p1, v8}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_4

    .line 145
    invoke-virtual {p1, v5}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_2
    if-nez v8, :cond_5

    .line 148
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid protocol version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1, v2, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    add-int/2addr v1, v7

    add-int/2addr v4, v1

    const/16 v0, 0x2e

    .line 155
    invoke-virtual {p1, v0, v4, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 157
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1, v2, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 163
    :cond_6
    :try_start_0
    invoke-virtual {p1, v4, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v0, v7

    const/16 v5, 0x20

    .line 171
    invoke-virtual {p1, v5, v0, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(III)I

    move-result v5

    if-ne v5, v1, :cond_7

    move v5, v3

    .line 177
    :cond_7
    :try_start_1
    invoke-virtual {p1, v0, v5}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    invoke-virtual {p2, v5}, Lorg/apache/httpcore/message/o;->a(I)V

    .line 186
    invoke-virtual {p0, v4, v0}, Lorg/apache/httpcore/message/i;->a(II)Lorg/apache/httpcore/ProtocolVersion;

    move-result-object p1

    return-object p1

    .line 179
    :catch_0
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol minor version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1, v2, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 165
    :catch_1
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol major version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1, v2, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;)Lorg/apache/httpcore/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    .line 442
    new-instance v0, Lorg/apache/httpcore/message/BufferedHeader;

    invoke-direct {v0, p1}, Lorg/apache/httpcore/message/BufferedHeader;-><init>(Lorg/apache/httpcore/util/CharArrayBuffer;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/httpcore/ProtocolVersion;)Lorg/apache/httpcore/w;
    .locals 1

    .line 336
    new-instance v0, Lorg/apache/httpcore/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/httpcore/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/httpcore/ProtocolVersion;)V

    return-object v0
.end method

.method public b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/w;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    const-string v0, "Char array buffer"

    .line 279
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 280
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v0

    .line 282
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->a()I

    move-result v1

    .line 285
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/i;->c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)V

    .line 286
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v2

    const/16 v3, 0x20

    .line 288
    invoke-virtual {p1, v3, v2, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(III)I

    move-result v4

    if-gez v4, :cond_0

    .line 290
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid request line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1, v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 293
    :cond_0
    invoke-virtual {p1, v2, v4}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {p2, v4}, Lorg/apache/httpcore/message/o;->a(I)V

    .line 296
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/i;->c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)V

    .line 297
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v4

    .line 299
    invoke-virtual {p1, v3, v4, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(III)I

    move-result v3

    if-gez v3, :cond_1

    .line 301
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid request line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p1, v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 304
    :cond_1
    invoke-virtual {p1, v4, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {p2, v3}, Lorg/apache/httpcore/message/o;->a(I)V

    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/i;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v3

    .line 309
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/i;->c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)V

    .line 310
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->c()Z

    move-result p2

    if-nez p2, :cond_2

    .line 311
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid request line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p1, v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 315
    :cond_2
    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/httpcore/message/i;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/httpcore/ProtocolVersion;)Lorg/apache/httpcore/w;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 317
    :catch_0
    new-instance p2, Lorg/apache/httpcore/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid request line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p1, v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/httpcore/ParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)V
    .locals 3

    .line 450
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v0

    .line 451
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 453
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/httpcore/d/c;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/httpcore/message/o;->a(I)V

    return-void
.end method
