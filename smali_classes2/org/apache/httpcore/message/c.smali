.class public Lorg/apache/httpcore/message/c;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"


# static fields
.field public static final a:Lorg/apache/httpcore/message/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lorg/apache/httpcore/message/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/httpcore/message/c;

    invoke-direct {v0}, Lorg/apache/httpcore/message/c;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/c;->a:Lorg/apache/httpcore/message/c;

    .line 58
    new-instance v0, Lorg/apache/httpcore/message/c;

    invoke-direct {v0}, Lorg/apache/httpcore/message/c;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/c;->b:Lorg/apache/httpcore/message/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/httpcore/u;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 353
    :cond_0
    invoke-interface {p1}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 354
    invoke-interface {p1}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method protected a([Lorg/apache/httpcore/u;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 283
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 288
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 289
    invoke-virtual {p0, v3}, Lorg/apache/httpcore/message/c;->a(Lorg/apache/httpcore/u;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v0
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 1

    const-string v0, "Name / value pair"

    .line 321
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0, p2}, Lorg/apache/httpcore/message/c;->a(Lorg/apache/httpcore/u;)I

    move-result v0

    if-nez p1, :cond_0

    .line 325
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 330
    :goto_0
    invoke-interface {p2}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 331
    invoke-interface {p2}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0x3d

    .line 333
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 334
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/httpcore/message/c;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/lang/String;Z)V

    :cond_1
    return-object p1
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;[Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/util/CharArrayBuffer;
    .locals 2

    const-string v0, "Header parameter array"

    .line 255
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0, p2}, Lorg/apache/httpcore/message/c;->a([Lorg/apache/httpcore/u;)I

    move-result v0

    if-nez p1, :cond_0

    .line 259
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->ensureCapacity(I)V

    :goto_0
    const/4 v0, 0x0

    .line 264
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const-string v1, "; "

    .line 266
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 268
    :cond_1
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/httpcore/message/c;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/u;Z)Lorg/apache/httpcore/util/CharArrayBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method protected a(Lorg/apache/httpcore/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, p3

    const/4 p3, 0x0

    .line 379
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p3, v2, :cond_0

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/httpcore/message/c;->a(C)Z

    move-result v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    :cond_1
    const/16 v1, 0x22

    if-eqz p3, :cond_2

    .line 385
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 387
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 388
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 389
    invoke-virtual {p0, v2}, Lorg/apache/httpcore/message/c;->b(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x5c

    .line 390
    invoke-virtual {p1, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 392
    :cond_3
    invoke-virtual {p1, v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 395
    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    :cond_5
    return-void
.end method

.method protected a(C)Z
    .locals 1

    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    .line 409
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

.method protected b(C)Z
    .locals 1

    const-string v0, "\"\\"

    .line 422
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
