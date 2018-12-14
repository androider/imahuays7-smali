.class public Lcom/mh/movie/core/a/b/db;
.super Ljava/lang/Object;
.source "QRCodeModule.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/a/an$b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/an$b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/a/b/db;->a:Lcom/mh/movie/core/mvp/a/an$b;

    return-void
.end method


# virtual methods
.method a(Lcom/mh/movie/core/mvp/model/QRCodeModel;)Lcom/mh/movie/core/mvp/a/an$a;
    .locals 0

    return-object p1
.end method

.method a()Lcom/mh/movie/core/mvp/a/an$b;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/a/b/db;->a:Lcom/mh/movie/core/mvp/a/an$b;

    return-object v0
.end method
