.class public Lorg/apache/httpcore/b/i;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"


# instance fields
.field private final a:Lorg/apache/httpcore/c/f;

.field private final b:Lorg/apache/httpcore/c/f;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/f;Lorg/apache/httpcore/c/f;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lorg/apache/httpcore/b/i;->c:J

    .line 51
    iput-wide v0, p0, Lorg/apache/httpcore/b/i;->d:J

    .line 62
    iput-object p1, p0, Lorg/apache/httpcore/b/i;->a:Lorg/apache/httpcore/c/f;

    .line 63
    iput-object p2, p0, Lorg/apache/httpcore/b/i;->b:Lorg/apache/httpcore/c/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 92
    iget-wide v0, p0, Lorg/apache/httpcore/b/i;->c:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/httpcore/b/i;->c:J

    return-void
.end method

.method public b()V
    .locals 6

    .line 101
    iget-wide v0, p0, Lorg/apache/httpcore/b/i;->d:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/httpcore/b/i;->d:J

    return-void
.end method
