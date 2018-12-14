.class public final Lio/rx_cache2/internal/a$a;
.super Ljava/lang/Object;
.source "DaggerRxCacheComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lio/rx_cache2/internal/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rx_cache2/internal/a$1;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lio/rx_cache2/internal/a$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/rx_cache2/internal/a$a;)Lio/rx_cache2/internal/l;
    .locals 0

    .line 169
    iget-object p0, p0, Lio/rx_cache2/internal/a$a;->a:Lio/rx_cache2/internal/l;

    return-object p0
.end method


# virtual methods
.method public a(Lio/rx_cache2/internal/l;)Lio/rx_cache2/internal/a$a;
    .locals 0

    .line 182
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/rx_cache2/internal/l;

    iput-object p1, p0, Lio/rx_cache2/internal/a$a;->a:Lio/rx_cache2/internal/l;

    return-object p0
.end method

.method public a()Lio/rx_cache2/internal/k;
    .locals 3

    .line 175
    iget-object v0, p0, Lio/rx_cache2/internal/a$a;->a:Lio/rx_cache2/internal/l;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lio/rx_cache2/internal/l;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Lio/rx_cache2/internal/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/rx_cache2/internal/a;-><init>(Lio/rx_cache2/internal/a$a;Lio/rx_cache2/internal/a$1;)V

    return-object v0
.end method
