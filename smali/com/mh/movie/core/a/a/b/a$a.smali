.class public final Lcom/mh/movie/core/a/a/b/a$a;
.super Ljava/lang/Object;
.source "DaggerPlayerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/b/b/d;

.field private b:Lcom/jess/arms/b/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/b/a$1;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/mh/movie/core/a/a/b/a$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/a/a/b/a$a;)Lcom/jess/arms/b/a/a;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/mh/movie/core/a/a/b/a$a;->b:Lcom/jess/arms/b/a/a;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/a/a/b/a$a;)Lcom/mh/movie/core/a/b/b/d;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/mh/movie/core/a/a/b/a$a;->a:Lcom/mh/movie/core/a/b/b/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/b/a$a;
    .locals 0

    .line 125
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jess/arms/b/a/a;

    iput-object p1, p0, Lcom/mh/movie/core/a/a/b/a$a;->b:Lcom/jess/arms/b/a/a;

    return-object p0
.end method

.method public a(Lcom/mh/movie/core/a/b/b/d;)Lcom/mh/movie/core/a/a/b/a$a;
    .locals 0

    .line 120
    invoke-static {p1}, La/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/a/b/b/d;

    iput-object p1, p0, Lcom/mh/movie/core/a/a/b/a$a;->a:Lcom/mh/movie/core/a/b/b/d;

    return-object p0
.end method

.method public a()Lcom/mh/movie/core/a/a/b/d;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/a/a/b/a$a;->a:Lcom/mh/movie/core/a/b/b/d;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/mh/movie/core/a/b/b/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/a/a/b/a$a;->b:Lcom/jess/arms/b/a/a;

    if-nez v0, :cond_1

    .line 114
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

    .line 116
    :cond_1
    new-instance v0, Lcom/mh/movie/core/a/a/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/a/a/b/a;-><init>(Lcom/mh/movie/core/a/a/b/a$a;Lcom/mh/movie/core/a/a/b/a$1;)V

    return-object v0
.end method
