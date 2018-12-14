.class public final Lcom/mh/movie/core/a/a/bs$a;
.super Ljava/lang/Object;
.source "DaggerVipMovieComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/a/a/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/b/fn;

.field private b:Lcom/jess/arms/b/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bs$1;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mh/movie/core/a/a/bs$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mh/movie/core/a/a/bs$a;->b:Lcom/jess/arms/b/a/a;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/a/a/bs$a;)Lcom/mh/movie/core/a/b/fn;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/mh/movie/core/a/a/bs$a;->a:Lcom/mh/movie/core/a/b/fn;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bs$a;
    .locals 0

    .line 126
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/b/a/a;

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bs$a;->b:Lcom/jess/arms/b/a/a;

    return-object p0
.end method

.method public a(Lcom/mh/movie/core/a/b/fn;)Lcom/mh/movie/core/a/a/bs$a;
    .locals 0

    .line 121
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/a/b/fn;

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bs$a;->a:Lcom/mh/movie/core/a/b/fn;

    return-object p0
.end method

.method public a()Lcom/mh/movie/core/a/a/dq;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bs$a;->a:Lcom/mh/movie/core/a/b/fn;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/mh/movie/core/a/b/fn;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bs$a;->b:Lcom/jess/arms/b/a/a;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/jess/arms/b/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Lcom/mh/movie/core/a/a/bs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/a/a/bs;-><init>(Lcom/mh/movie/core/a/a/bs$a;Lcom/mh/movie/core/a/a/bs$1;)V

    return-object v0
.end method
