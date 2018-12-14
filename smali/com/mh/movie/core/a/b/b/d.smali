.class public Lcom/mh/movie/core/a/b/b/d;
.super Ljava/lang/Object;
.source "PlayerModule.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/a/b/b$b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/b/b$b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/a/b/b/d;->a:Lcom/mh/movie/core/mvp/a/b/b$b;

    return-void
.end method


# virtual methods
.method a(Lcom/mh/movie/core/mvp/model/player/PlayerModel;)Lcom/mh/movie/core/mvp/a/b/b$a;
    .locals 0

    return-object p1
.end method

.method a()Lcom/mh/movie/core/mvp/a/b/b$b;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/a/b/b/d;->a:Lcom/mh/movie/core/mvp/a/b/b$b;

    return-object v0
.end method
