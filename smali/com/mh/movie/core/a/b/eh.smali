.class public final Lcom/mh/movie/core/a/b/eh;
.super Ljava/lang/Object;
.source "SetInvitationBindModule_ProvideSetInvitationBindViewFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/a/ay$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/ef;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/ef;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/a/b/eh;->a:Lcom/mh/movie/core/a/b/ef;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/ef;)Lcom/mh/movie/core/a/b/eh;
    .locals 1

    .line 30
    new-instance v0, Lcom/mh/movie/core/a/b/eh;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/eh;-><init>(Lcom/mh/movie/core/a/b/ef;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/a/ay$b;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/a/b/eh;->a:Lcom/mh/movie/core/a/b/ef;

    .line 24
    invoke-virtual {v0}, Lcom/mh/movie/core/a/b/ef;->a()Lcom/mh/movie/core/mvp/a/ay$b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ay$b;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/eh;->a()Lcom/mh/movie/core/mvp/a/ay$b;

    move-result-object v0

    return-object v0
.end method
