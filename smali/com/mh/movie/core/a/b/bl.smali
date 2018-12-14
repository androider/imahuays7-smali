.class public Lcom/mh/movie/core/a/b/bl;
.super Ljava/lang/Object;
.source "MainModule.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/a/x$b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/x$b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/a/b/bl;->a:Lcom/mh/movie/core/mvp/a/x$b;

    return-void
.end method


# virtual methods
.method a(Lcom/mh/movie/core/mvp/model/MainModel;)Lcom/mh/movie/core/mvp/a/x$a;
    .locals 0

    return-object p1
.end method

.method a()Lcom/mh/movie/core/mvp/a/x$b;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/a/b/bl;->a:Lcom/mh/movie/core/mvp/a/x$b;

    return-object v0
.end method
