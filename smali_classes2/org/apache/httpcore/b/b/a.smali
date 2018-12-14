.class public Lorg/apache/httpcore/b/b/a;
.super Ljava/lang/Object;
.source "DisallowIdentityContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/httpcore/entity/d;


# static fields
.field public static final a:Lorg/apache/httpcore/b/b/a;


# instance fields
.field private final b:Lorg/apache/httpcore/entity/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lorg/apache/httpcore/b/b/a;

    new-instance v1, Lorg/apache/httpcore/b/b/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/httpcore/b/b/b;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/httpcore/b/b/a;-><init>(Lorg/apache/httpcore/entity/d;)V

    sput-object v0, Lorg/apache/httpcore/b/b/a;->a:Lorg/apache/httpcore/b/b/a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/httpcore/entity/d;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/httpcore/b/b/a;->b:Lorg/apache/httpcore/entity/d;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/m;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/httpcore/b/b/a;->b:Lorg/apache/httpcore/entity/d;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/entity/d;->a(Lorg/apache/httpcore/m;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Lorg/apache/httpcore/ProtocolException;

    const-string v0, "Identity transfer encoding cannot be used"

    invoke-direct {p1, v0}, Lorg/apache/httpcore/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-wide v0
.end method
