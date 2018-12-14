.class public Lorg/apache/httpcore/b/b/b;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/httpcore/entity/d;


# static fields
.field public static final a:Lorg/apache/httpcore/b/b/b;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/apache/httpcore/b/b/b;

    invoke-direct {v0}, Lorg/apache/httpcore/b/b/b;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/b/b;->a:Lorg/apache/httpcore/b/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, v0}, Lorg/apache/httpcore/b/b/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/httpcore/b/b/b;->b:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/m;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    const-string v0, "HTTP message"

    .line 81
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Transfer-Encoding"

    .line 83
    invoke-interface {p1, v0}, Lorg/apache/httpcore/m;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    .line 89
    :try_start_0
    invoke-interface {v0}, Lorg/apache/httpcore/e;->getElements()[Lorg/apache/httpcore/f;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/httpcore/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    array-length v3, p1

    const-string v4, "identity"

    .line 97
    invoke-interface {v0}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    if-lez v3, :cond_1

    const-string v0, "chunked"

    add-int/lit8 v3, v3, -0x1

    .line 99
    aget-object p1, p1, v3

    .line 100
    invoke-interface {p1}, Lorg/apache/httpcore/f;->a()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_1
    return-wide v1

    :catch_0
    move-exception p1

    .line 91
    new-instance v1, Lorg/apache/httpcore/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Transfer-Encoding header value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/httpcore/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const-string v0, "Content-Length"

    .line 106
    invoke-interface {p1, v0}, Lorg/apache/httpcore/m;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "Content-Length"

    .line 109
    invoke-interface {p1, v0}, Lorg/apache/httpcore/m;->b(Ljava/lang/String;)[Lorg/apache/httpcore/e;

    move-result-object p1

    .line 110
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 111
    aget-object v3, p1, v0

    .line 113
    :try_start_1
    invoke-interface {v3}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-wide v3, v1

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    return-wide v3

    :cond_4
    return-wide v1

    .line 125
    :cond_5
    iget p1, p0, Lorg/apache/httpcore/b/b/b;->b:I

    int-to-long v0, p1

    return-wide v0
.end method
