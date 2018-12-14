.class public Lorg/apache/httpcore/b/f;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lorg/apache/httpcore/o;


# static fields
.field public static final a:Lorg/apache/httpcore/b/f;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lorg/apache/httpcore/b/f;

    invoke-direct {v0}, Lorg/apache/httpcore/b/f;-><init>()V

    sput-object v0, Lorg/apache/httpcore/b/f;->a:Lorg/apache/httpcore/b/f;

    const/4 v0, 0x1

    .line 50
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GET"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/httpcore/b/f;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 54
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "POST"

    aput-object v4, v2, v3

    const-string v4, "PUT"

    aput-object v4, v2, v0

    sput-object v2, Lorg/apache/httpcore/b/f;->c:[Ljava/lang/String;

    const/4 v2, 0x5

    .line 59
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "HEAD"

    aput-object v4, v2, v3

    const-string v4, "OPTIONS"

    aput-object v4, v2, v0

    const-string v4, "DELETE"

    aput-object v4, v2, v1

    const-string v1, "TRACE"

    const/4 v4, 0x3

    aput-object v1, v2, v4

    const-string v1, "CONNECT"

    const/4 v4, 0x4

    aput-object v1, v2, v4

    sput-object v2, Lorg/apache/httpcore/b/f;->d:[Ljava/lang/String;

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PATCH"

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/httpcore/b/f;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 76
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/w;)Lorg/apache/httpcore/n;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/MethodNotSupportedException;
        }
    .end annotation

    const-string v0, "Request line"

    .line 87
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    invoke-interface {p1}, Lorg/apache/httpcore/w;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lorg/apache/httpcore/b/f;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/httpcore/b/f;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Lorg/apache/httpcore/message/f;

    invoke-direct {v0, p1}, Lorg/apache/httpcore/message/f;-><init>(Lorg/apache/httpcore/w;)V

    return-object v0

    .line 91
    :cond_0
    sget-object v1, Lorg/apache/httpcore/b/f;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/httpcore/b/f;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    new-instance v0, Lorg/apache/httpcore/message/e;

    invoke-direct {v0, p1}, Lorg/apache/httpcore/message/e;-><init>(Lorg/apache/httpcore/w;)V

    return-object v0

    .line 93
    :cond_1
    sget-object v1, Lorg/apache/httpcore/b/f;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/httpcore/b/f;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    new-instance v0, Lorg/apache/httpcore/message/f;

    invoke-direct {v0, p1}, Lorg/apache/httpcore/message/f;-><init>(Lorg/apache/httpcore/w;)V

    return-object v0

    .line 95
    :cond_2
    sget-object v1, Lorg/apache/httpcore/b/f;->e:[Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/httpcore/b/f;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    new-instance v0, Lorg/apache/httpcore/message/e;

    invoke-direct {v0, p1}, Lorg/apache/httpcore/message/e;-><init>(Lorg/apache/httpcore/w;)V

    return-object v0

    .line 98
    :cond_3
    new-instance p1, Lorg/apache/httpcore/MethodNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " method not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/httpcore/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
