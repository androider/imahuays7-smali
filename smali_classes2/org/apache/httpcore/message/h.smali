.class public Lorg/apache/httpcore/message/h;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lorg/apache/httpcore/message/m;


# static fields
.field public static final a:Lorg/apache/httpcore/message/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lorg/apache/httpcore/message/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/httpcore/message/h;

    invoke-direct {v0}, Lorg/apache/httpcore/message/h;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/h;->a:Lorg/apache/httpcore/message/h;

    .line 66
    new-instance v0, Lorg/apache/httpcore/message/h;

    invoke-direct {v0}, Lorg/apache/httpcore/message/h;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/h;->b:Lorg/apache/httpcore/message/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/httpcore/ProtocolVersion;)I
    .locals 0

    .line 143
    invoke-virtual {p1}, Lorg/apache/httpcore/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method protected a(Lorg/apache/httpcore/util/CharArrayBuffer;)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    :goto_0
    return-object p1
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/ProtocolVersion;)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Protocol version"

    .line 113
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, p2}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/ProtocolVersion;)I

    move-result v0

    if-nez p1, :cond_0

    .line 118
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 123
    :goto_0
    invoke-virtual {p2}, Lorg/apache/httpcore/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2f

    .line 124
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 125
    invoke-virtual {p2}, Lorg/apache/httpcore/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 126
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 127
    invoke-virtual {p2}, Lorg/apache/httpcore/ProtocolVersion;->getMinor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/e;)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Header"

    .line 282
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    instance-of v0, p2, Lorg/apache/httpcore/d;

    if-eqz v0, :cond_0

    .line 287
    check-cast p2, Lorg/apache/httpcore/d;

    invoke-interface {p2}, Lorg/apache/httpcore/d;->getBuffer()Lorg/apache/httpcore/util/CharArrayBuffer;

    move-result-object p1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)Lorg/apache/httpcore/util/CharArrayBuffer;

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/h;->b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/e;)V

    :goto_0
    return-object p1
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/w;)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Request line"

    .line 168
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)Lorg/apache/httpcore/util/CharArrayBuffer;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/h;->b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/w;)V

    return-object p1
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/x;)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Status line"

    .line 224
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)Lorg/apache/httpcore/util/CharArrayBuffer;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/h;->b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/x;)V

    return-object p1
.end method

.method protected b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/e;)V
    .locals 3

    .line 307
    invoke-interface {p2}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-interface {p2}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_0

    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 314
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 316
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    .line 317
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 319
    invoke-virtual {p1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    const/4 v0, 0x0

    .line 320
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 321
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x20

    .line 328
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/w;)V
    .locals 4

    .line 186
    invoke-interface {p2}, Lorg/apache/httpcore/w;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-interface {p2}, Lorg/apache/httpcore/w;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 191
    invoke-interface {p2}, Lorg/apache/httpcore/w;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 192
    invoke-virtual {p1, v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 194
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 195
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 196
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 198
    invoke-interface {p2}, Lorg/apache/httpcore/w;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/ProtocolVersion;)Lorg/apache/httpcore/util/CharArrayBuffer;

    return-void
.end method

.method protected b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/x;)V
    .locals 3

    .line 243
    invoke-interface {p2}, Lorg/apache/httpcore/x;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 245
    invoke-interface {p2}, Lorg/apache/httpcore/x;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 251
    invoke-interface {p2}, Lorg/apache/httpcore/x;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/ProtocolVersion;)Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v0, 0x20

    .line 252
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 253
    invoke-interface {p2}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
